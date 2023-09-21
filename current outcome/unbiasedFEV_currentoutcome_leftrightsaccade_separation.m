
currentfolder=pwd
load('stim_markers_learning_aligned_to_target_off_20211108.mat');

prev_t=4;
after_t=16;
% load('D:\ZY_lab\Monkey\midterm\manual_recircle_same_neurons_4_different_subregions\subregion3_suite2p_automatically\20211202\f_filter1202.mat');
% load('D:\ZY_lab\Monkey\M180519\subregion3_11_18_11_19_11_22\F_divide.mat');
% F_raw=F_divide.day2;
% iscell=readNPY('D:\ZY_lab\Monkey\M180519\subregion3_11_18_11_19_11_22\subregion3\suite2p\plane0\iscell.npy');
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
    left_currentwrong.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,leftwrong,F_cell_s, prev_t, after_t);
    current_wrong_left(cell_num,:,:)=get_act_raw_trace(cell_num,leftwrong,F_cell_s, prev_t, after_t);
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
    right_currentwrong.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,rightwrong,F_cell_s, prev_t, after_t);
    current_wrong_right(cell_num,:,:)=get_act_raw_trace(cell_num,rightwrong,F_cell_s, prev_t, after_t);
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

save('unbiased_currentoutcome1108.mat','unbiased_currentoutcome1108');

% shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome1108(:,2:20),1),std(unbiased_currentoutcome1108(:,2:20),1)./sqrt(length(unbiased_currentoutcome1108(:,2:20))),'lineProps','r');
% xline(0);
% ylim([0 0.05]);
% 
% load('L:\Monkey1\region3\20211108\proportions_of_cells_encoding_current_trials_outcome_20211108.mat');
% iscell=readNPY('L:\Monkey1\region3\20211108\iscell.npy');
% s1108=find(iscell(:,1)==1);
% for i=1:length(M1region3day1)
%     if M1region3day1(i,6)==-1
%        a=find(s1108==M1region3day1(i,5));
%        unbiased_currentoutcome1108(a,:)=-unbiased_currentoutcome1108(a,:);
%     end
% end
% unbiased_currentoutcome_meanvalue1108=mean(unbiased_currentoutcome1108(:,5:20),2);
% unbiased_currentoutcome_meanvalue1108(:,2)=s1108;
% unbiased_currentoutcome_meanvalue1108(:,3)=1;
% 
% unbiased_currentoutcome1108_sort=sortrows(unbiased_currentoutcome_meanvalue1108,[1],'descend');
% for i=1:length(unbiased_currentoutcome1108_sort)
% unbiased_FEV_sort(i,:)=unbiased_currentoutcome1108(find(s1108==unbiased_currentoutcome1108_sort(i,2)),:);
% end
% 
% h=heatmap(unbiased_FEV_sort(:,2:20),'Colormap',jet);
% grid off;
% h.ColorLimits=[-0.05 0.05];













% unbiased_currentoutcome0s=[unbiased_currentoutcome20211119;unbiased_currentoutcome20211121;unbiased_currentoutcome20211127;unbiased_currentoutcome20211201];
% unbiased_currentoutcome5s=[unbiased_currentoutcome20211122;unbiased_currentoutcome20211124;unbiased_currentoutcome20211126;unbiased_currentoutcome20211202];
% heatmap(unbiased_currentoutcome,'Colormap',jet);
% grid off;
% shadedErrorBar([1:size(unbiased_currentoutcome0s,2)-1],mean(unbiased_currentoutcome0s(:,2:20),1),std(unbiased_currentoutcome0s(:,2:20),1)./sqrt(length(unbiased_currentoutcome0s(:,2:20))),'lineProps','r');
% xline(3);
% hold on;
% shadedErrorBar([1:size(unbiased_currentoutcome5s,2)-1],mean(unbiased_currentoutcome5s(:,2:20),1),std(unbiased_currentoutcome5s(:,2:20),1)./sqrt(length(unbiased_currentoutcome5s(:,2:20))),'lineProps','k');
% legend('0s','5s');




