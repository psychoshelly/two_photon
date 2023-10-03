%% separation

load('G:\20211203\stim_markers_learning_aligned_to_target_off_20211203.mat');
%% correct
prev_t=4;
after_t=16;
load('G:\20211203\suite2p\plane0\f_filter_1203.mat');
F_raw=readNPY('G:\20211203\suite2p\plane0\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('G:\20211203\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
s1203=s;
F_cell_s=F(s1203(:),:);
cell_id=[1:size(F_cell_s,1)];

bh=mlread('G:\20211203\HH_7a_socialcue_20211203.bhv2');
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
 
%  indx_rand_leftwrong=randi(length(left_wrong),1,length(left_correct)-length(left_wrong));
%  rand_leftwrong=left_wrong(indx_rand_leftwrong);
%  new_leftwrong=[left_wrong rand_leftwrong];
%  
%   indx_rand_rightwrong=randi(length(right_wrong),1,length(right_correct)-length(right_wrong));
%  rand_rightwrong=right_wrong(indx_rand_rightwrong);
%  new_rightwrong=[right_wrong rand_rightwrong];
  %% balance left and right trials
%   indx_rand_leftcorrect=randi(length(left_correct),1,abs(length(right_correct)-length(left_correct)));
%  rand_leftcorrect=left_correct(indx_rand_leftcorrect);
%  new_leftcorrect=[left_correct rand_leftcorrect];
%  
% indx_rand_new_leftwrong=randi(length(new_leftwrong),1,abs(length(right_correct)-length(new_leftwrong)));
%   rand1_leftwrong=new_leftwrong(indx_rand_new_leftwrong);
%   new_new_leftwrong=[new_leftwrong rand1_leftwrong];
  
 
 
 %% stage1
 
 
%% stage1_currentcorrect_saccade_left
% stage1_left_correct=left_correct(:,1:length(left_correct)/3);

for cell_num = 1:length(cell_id)
    left_currentcorrect.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,left_correct,F_cell_s, prev_t, after_t);
    current_correct_left(cell_num,:,:)=get_act_raw_trace(cell_num,left_correct,F_cell_s, prev_t, after_t);
    for m=1:size(current_correct_left,3)-1
        currenttrial_correctleft(cell_num,:,m)=mean(current_correct_left(cell_num,:,m:m+1),3);
    end
    
    left_correctse.(sprintf('cell_%d',cell_num))=std(left_currentcorrect.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(left_currentcorrect.(sprintf('cell_%d',cell_num))));
end
%% currentwrong_saccade_left

% stage1_left_wrong=left_wrong(:,1:length(left_wrong)/3);
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
        unbiased_current_left_stage1(j,i) = calculate_PEV(current_left,out);
    end
end

%% currentcorrect_saccade_right

% stage1_right_correct=right_correct(:,1:length(right_correct)/3);
for cell_num = 1:length(cell_id)
    right_currentcorrect.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,right_correct,F_cell_s, prev_t, after_t);
    current_correct_right(cell_num,:,:)=get_act_raw_trace(cell_num,right_correct,F_cell_s, prev_t, after_t);
    for m=1:size(current_correct_right,3)-1
        currenttrial_correctright(cell_num,:,m)=mean(current_correct_right(cell_num,:,m:m+1),3);
    end
    
    right_correctse.(sprintf('cell_%d',cell_num))=std(right_currentcorrect.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(right_currentcorrect.(sprintf('cell_%d',cell_num))));
end

%% currentwrong_saccade_right
% stage1_right_wrong=right_wrong(:,1:length(right_wrong)/3);

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
        unbiased_current_right_stage1(j,i) = calculate_PEV(current_right,out);
    end
end
for i=1:length(unbiased_current_left_stage1)
    for j=1:size(unbiased_current_left_stage1,2)
    unbiased_currentoutcome_region5_1203(i,j)=mean([unbiased_current_left_stage1(i,j),unbiased_current_right_stage1(i,j)]);
    end
end
                            
% shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome_region5_1203(:,2:20),1),std(unbiased_currentoutcome_region5_1203(:,2:20),1)./sqrt(length(unbiased_currentoutcome_region5_1203(:,2:20))),'lineProps','r');
% xline(0);
% ylim([0 0.06]);
% 
% 
% save('J:\1203-0506\20221203\unbiased_currentoutcome_region5_1203_raw.mat','unbiased_currentoutcome_region5_1203');
% 
% 
% % load('F:\0608-0615_same_neurons\0608\proportions_of_cells_encoding_current_trials_outcome_20220608.mat');
% 
% for i=1:length(M2region5day1)
%     if M2region5day1(i,6)==-1
%        a=find(s0608==M2region5day1(i,5));
%        unbiased_currentoutcome_region5_0608(a,:)=-unbiased_currentoutcome_region5_0608(a,:);
%     end
% end

load('G:\20211203\judge_the_types_of_neurons_on_each_frame_20211203.mat');

for i=1:length(s1203)
    for j=36:size(M1region5day1_difference,2)
        if M1region5day1_difference(i,j)<0
            unbiased_currentoutcome_region5_1203(i,j-34)=-unbiased_currentoutcome_region5_1203(i,j-34);
        end
    end
end
   

unbiased_currentoutcome_meanvalue_region5_1203=mean(unbiased_currentoutcome_region5_1203(:,5:20),2);
unbiased_currentoutcome_meanvalue_region5_1203(:,2)=s1203;
unbiased_currentoutcome_meanvalue_region5_1203(:,3)=[46+1,2+1,29+1,52+1,155+1,65+1,41+1,43+1,0+1,191+1,628+1,8+1,20+1,19+1,14+1,10+1,38+1,25+1,21+1,87+1,1+1,30+1,17+1,22+1,50+1,37+1,23+1,79+1,9+1,16+1,40+1,39+1,28+1,80+1,409+1,35+1,195+1,70+1,399+1,48+1,233+1,12+1,291+1,316+1,426+1,44+1,36+1,32+1,82+1,58+1,469+1,45+1,103+1,67+1,344+1,187+1,53+1,127+1,143+1,86+1,107+1,63+1,34+1,208+1,100+1,528+1,92+1,118+1,55+1,94+1,89+1,61+1,101+1,136+1,51+1,599+1,156+1,122+1,329+1,336+1,111+1,78+1,693+1,200+1,98+1,81+1,180+1,129+1,140+1,466+1,309+1,176+1,288+1,186+1,153+1,254+1,120+1,268+1,655+1,144+1,204+1,177+1,124+1,463+1,73+1,410+1,174+1,654+1,305+1,596+1,76+1,146+1,205+1,271+1,535+1,361+1,114+1,166+1,319+1,102+1,173+1,549+1,193+1,202+1,296+1,158+1,150+1,315+1,652+1,104+1,349+1,415+1,147+1,216+1,495+1,241+1,536+1,719+1,157+1,269+1,307+1,330+1,689+1,133+1,212+1,383+1,441+1,713+1,448+1,310+1,219+1,358+1,197+1,606+1,290+1,284+1,359+1,259+1,487+1,323+1,499+1,585+1,130+1,4+1,470+1,350+1,338+1,764+1,274+1,434+1,511+1,243+1]
unbiased_currentoutcome_meanvalue_sort_region5_1203=sortrows(unbiased_currentoutcome_meanvalue_region5_1203,[1],'descend');

save('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\unbiased_currentoutcome_region5_1203.mat','unbiased_currentoutcome_meanvalue_sort_region5_1203');
% 


for i=1:length(unbiased_currentoutcome_meanvalue_sort_region5_1203)
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region5_1203(find(s1203==unbiased_currentoutcome_meanvalue_sort_region5_1203(i,2)),:);
end

h=heatmap(unbiased_FEV_sort(:,2:20),'Colormap',jet);
grid off;
h.ColorLimits=[-0.05 0.05];

stage4=mean(unbiased_FEV_sort(:,15:18),2);
stage3=mean(unbiased_FEV_sort(:,11:14),2);
stage2=mean(unbiased_FEV_sort(:,7:10),2);
stage1=mean(unbiased_FEV_sort(:,3:6),2);
