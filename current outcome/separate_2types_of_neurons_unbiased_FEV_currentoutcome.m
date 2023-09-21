currentfolder=pwd
load('stim_markers_learning_aligned_to_target_off_20211108.mat');

prev_t=4;
after_t=16;
% load('D:\ZY_lab\Monkey\midterm\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211082\f_filter1202.mat');
% load('D:\ZY_lab\Monkey\M180519\subregion1_11_18_11_19_11_22\F_divide.mat');
% F_raw=F_divide.day1;
% iscell=readNPY('D:\ZY_lab\Monkey\M180519\subregion1_11_18_11_19_11_22\subregion1\suite2p\plane0\iscell.npy');
% s=find(iscell(:,1)==1);
% new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
% F=f_filter+new_F_raw;
% F_cell_s=F(s(:),:);

load('f_filter_1108.mat');
F_raw=readNPY('F.npy');
iscell=readNPY('iscell.npy');
 s=find(iscell(:,1)==1);
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
 F=f_filter+new_F_raw;
F_cell_s=F(s(:),:);



cell_id=[1:size(F_cell_s,1)];

bh=mlread('HH_7a_socialcue_20211108.bhv2');
 a1_left_correct=[];
 a1_right_correct=[];
 a2_left_wrong=[];
 a2_right_wrong=[];
 a3_left_correct=[];
 a3_right_correct=[];
 a4_left_wrong=[];
 a4_right_wrong=[];

 for i=1:length(all_trials_num_targetoff)
     if bh(all_trials_num_targetoff(i)).TrialError==0;
         if all_conditions_targetoff(i)==1
             a1_left_correct=[a1_left_correct frame_num_all_targetoff(i)];
         else
             a1_right_correct=[a1_right_correct frame_num_all_targetoff(i)];
         end
     elseif bh(all_trials_num_targetoff(i)).TrialError==1;
         if all_conditions_targetoff(i)==1
             a2_right_wrong=[a2_right_wrong frame_num_all_targetoff(i)];
         else
             a2_left_wrong=[a2_left_wrong frame_num_all_targetoff(i)];
             
         end
     end
 end

 for i=1:length(all_trials_num_targetoff_wrong)
     if bh(all_trials_num_targetoff_wrong(i)).TrialError==0;
         if all_conditions_targetoff_wrong(i)==1
             a3_left_correct=[a3_left_correct frame_num_all_targetoff_wrong(i)];
         else
             a3_right_correct=[a3_right_correct frame_num_all_targetoff_wrong(i)];
         end
     elseif bh(all_trials_num_targetoff_wrong(i)).TrialError==1;
         if all_conditions_targetoff_wrong(i)==1
             a4_right_wrong=[a4_right_wrong frame_num_all_targetoff_wrong(i)];
         else
             a4_left_wrong=[a4_left_wrong frame_num_all_targetoff_wrong(i)];
             
         end
     end
 end
 
 left_correct=[a1_left_correct a3_left_correct];
 left_wrong=[a2_left_wrong  a4_left_wrong];
 right_correct=[a1_right_correct a3_right_correct];
 right_wrong=[a2_right_wrong a4_right_wrong];
 



 
 
%% currentcorrect_saccade_left

for cell_num = 1:length(cell_id)
    left_currentcorrect.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,left_correct,F_cell_s, prev_t, after_t);
    current_correct_left(cell_num,:,:)=get_act_raw_trace(cell_num,left_correct,F_cell_s, prev_t, after_t);
    for m=1:size(current_correct_left,3)-1
        currenttrial_correctleft(cell_num,:,m)=mean(current_correct_left(cell_num,:,m:m+1),3);
    end
    
    left_correctse.(sprintf('cell_%d',cell_num))=std(left_currentcorrect.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(left_currentcorrect.(sprintf('cell_%d',cell_num))));
end
%% currentwrong_saccade_left
for cell_num = 1:length(cell_id)
    left_currentwrong.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,left_wrong,F_cell_s, prev_t, after_t);
    current_wrong_left(cell_num,:,:)=get_act_raw_trace(cell_num,left_wrong,F_cell_s, prev_t, after_t);
    for m=1:size(current_wrong_left,3)-1
        currenttrial_wrongleft(cell_num,:,m)=mean(current_wrong_left(cell_num,:,m:m+1),3);
    end
    left_wrongse.(sprintf('cell_%d',cell_num))=std(left_currentwrong.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(left_currentwrong.(sprintf('cell_%d',cell_num))));
end


for j=1:size(currenttrial_correctleft,1)
    for i=1:size(currenttrial_correctleft,3)
        current_left=[currenttrial_correctleft(j,:,i) currenttrial_wrongleft(j,:,i)]';
        out=[repmat(1,size(currenttrial_correctleft,2),1);repmat(2,size(currenttrial_wrongleft,2),1)];
         %[p,tb1]=anova1(current_previouscorrect,out,'off');
        %currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i))={p,tb1};
         %cell_frame_variance(j,i)= currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}/ currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2};
         %unbiased_cell_frame_variance(j,i)=(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}-(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 3})*(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4}))/(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2}+currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4});
        unbiased_current_left(j,i) = calculate_PEV(current_left,out);
    end
end

%% currentcorrect_saccade_right
for cell_num = 1:length(cell_id)
    right_currentcorrect.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,right_correct,F_cell_s, prev_t, after_t);
    current_correct_right(cell_num,:,:)=get_act_raw_trace(cell_num,right_correct,F_cell_s, prev_t, after_t);
    for m=1:size(current_correct_right,3)-1
        currenttrial_correctright(cell_num,:,m)=mean(current_correct_right(cell_num,:,m:m+1),3);
    end
    
    right_correctse.(sprintf('cell_%d',cell_num))=std(right_currentcorrect.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(right_currentcorrect.(sprintf('cell_%d',cell_num))));
end

%% currentwrong_saccade_right

for cell_num = 1:length(cell_id)
    right_currentwrong.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,right_wrong,F_cell_s, prev_t, after_t);
    current_wrong_right(cell_num,:,:)=get_act_raw_trace(cell_num,right_wrong,F_cell_s, prev_t, after_t);
    for m=1:size(current_wrong_right,3)-1
        currenttrial_wrongright(cell_num,:,m)=mean(current_wrong_right(cell_num,:,m:m+1),3);
    end
    right_wrongse.(sprintf('cell_%d',cell_num))=std(right_currentwrong.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(right_currentwrong.(sprintf('cell_%d',cell_num))));
end


for j=1:size(currenttrial_correctright,1)
    for i=1:size(currenttrial_correctright,3)
        current_right=[currenttrial_correctright(j,:,i) currenttrial_wrongright(j,:,i)]';
        out=[repmat(1,size(currenttrial_correctright,2),1);repmat(2,size(currenttrial_wrongright,2),1)];
         %[p,tb1]=anova1(current_previouscorrect,out,'off');
        %currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i))={p,tb1};
         %cell_frame_variance(j,i)= currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}/ currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2};
         %unbiased_cell_frame_variance(j,i)=(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}-(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 3})*(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4}))/(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2}+currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4});
        unbiased_current_right(j,i) = calculate_PEV(current_right,out);
    end
end


for i=1:length(unbiased_current_left)
    for j=1:size(unbiased_current_left,2)
    unbiased_currentoutcome1108(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end




load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_current_trials_outcome_20211108.mat');
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s1108=find(iscell(:,1)==1);

M1_region1_day1_4stages=union(union(union(M1region1stage1day1index,M1region1stage2day1index),M1region1stage3day1index),M1region1stage4day1index);
M1_region1_day1_0stage=setdiff(M1region1stage1day1diff_ratio_deltaF(:,1),M1_region1_day1_4stages);

for cell_num=1:length(M1_region1_day1_4stages)
    M1region1stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))))-mean(M1region1stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))));
    M1region1stage1day1_difference_struct=cell2mat(struct2cell(M1region1stage1day1_difference));
    
    M1region1stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))))-mean(M1region1stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))));
    M1region1stage2day1_difference_struct=cell2mat(struct2cell(M1region1stage2day1_difference));
    
    M1region1stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))))-mean(M1region1stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))));
    M1region1stage3day1_difference_struct=cell2mat(struct2cell(M1region1stage3day1_difference));
    
    M1region1stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))))-mean(M1region1stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))));
    M1region1stage4day1_difference_struct=cell2mat(struct2cell(M1region1stage4day1_difference)); 
end
M1region1day1=[M1region1stage1day1_difference_struct M1region1stage2day1_difference_struct M1region1stage3day1_difference_struct M1region1stage4day1_difference_struct M1_region1_day1_4stages];
for i=1:length(M1region1day1)
    
    if sum(M1region1day1(i,1:4)<0)>sum(M1region1day1(i,1:4)>0)
        M1region1day1(i,6)=-1;
    elseif sum(M1region1day1(i,1:4)<0)<sum(M1region1day1(i,1:4)>0)
        M1region1day1(i,6)=1;
    elseif sum(M1region1day1(i,1:4)<0)==sum(M1region1day1(i,1:4)>0)
        if abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)<0))))>abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)>0))))
            M1region1day1(i,6)=-1;
        elseif abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)<0))))<abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)>0))))
            M1region1day1(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,6)==-1
       a=find(s1108==M1region1day1(i,5));
       unbiased_currentoutcome_signerror_1108(a,:)=-unbiased_currentoutcome1108(a,:);
    end
end
unbiased_currentoutcome_signerror_1108(all(unbiased_currentoutcome_signerror_1108==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,6)==-1
       a=find(s1108==M1region1day1(i,5));
       unbiased_currentoutcome_error_1108(a,:)=unbiased_currentoutcome1108(a,:);
    end
end
unbiased_currentoutcome_error_1108(all(unbiased_currentoutcome_error_1108==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,6)==1
       a=find(s1108==M1region1day1(i,5));
       unbiased_currentoutcome_signcorrect_1108(a,:)=unbiased_currentoutcome1108(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1108(all(unbiased_currentoutcome_signcorrect_1108==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,6)==1
       a=find(s1108==M1region1day1(i,5));
       unbiased_currentoutcome_correct_1108(a,:)=unbiased_currentoutcome1108(a,:);
    end
end
unbiased_currentoutcome_correct_1108(all(unbiased_currentoutcome_correct_1108==0,2),:) = [];


shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome_error_1108(:,2:20),1),std(unbiased_currentoutcome_error_1108(:,2:20),1)./sqrt(length(unbiased_currentoutcome_error_1108(:,2:20))),'lineProps','r');
xline(0);
hold on
shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome_correct_1108(:,2:20),1),std(unbiased_currentoutcome_correct_1108(:,2:20),1)./sqrt(length(unbiased_currentoutcome_correct_1108(:,2:20))),'lineProps','g');
ylim([0 0.05]);



for i=1:20
  [p,h]=ranksum(unbiased_currentoutcome_error_1108(:,i),unbiased_currentoutcome_correct_1108(:,i));
  results(1,i)=p;
  results(2,i)=h;
end




% unbiased_currentoutcome0s=[unbiased_currentoutcome20211089;unbiased_currentoutcome20211081;unbiased_currentoutcome20211087;unbiased_currentoutcome20211081];
% unbiased_currentoutcome5s=[unbiased_currentoutcome20211082;unbiased_currentoutcome20211084;unbiased_currentoutcome20211086;unbiased_currentoutcome20211082];
% heatmap(unbiased_currentoutcome,'Colormap',jet);
% grid off;
% shadedErrorBar([1:size(unbiased_currentoutcome0s,2)-1],mean(unbiased_currentoutcome0s(:,2:20),1),std(unbiased_currentoutcome0s(:,2:20),1)./sqrt(length(unbiased_currentoutcome0s(:,2:20))),'lineProps','r');
% xline(3);
% hold on;
% shadedErrorBar([1:size(unbiased_currentoutcome5s,2)-1],mean(unbiased_currentoutcome5s(:,2:20),1),std(unbiased_currentoutcome5s(:,2:20),1)./sqrt(length(unbiased_currentoutcome5s(:,2:20))),'lineProps','k');
% legend('0s','5s');

