%region1_0s
load('L:\Monkey1\region1\20211119\stim_markers_learning_aligned_to_target_off_20211119.mat');
%% correct
prev_t=4;
after_t=16;
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211119\f_filter1119.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\F_divide.mat');
%load('D:\ZY_lab\Monkey\M180519\subregion1_11_18_11_19_11_22\20211121\s1119_shared.mat');
%s=s1119_shared;
F_raw=F_divide.day2;
%F_raw=readNPY('D:\ZY_lab\Monkey\M180519\subregion1_11_18_11_19_11_22\subregion1\suite2p\plane0\F.npy');
%load('D:\ZY_lab\Monkey\M180519\20211121\new\s1119.mat');
iscell=readNPY('L:\4subregions\subregion1_11_18_11_19_11_22\20211118_20211119_20211122\suite2p\plane0\iscell.npy');
s1119=find(iscell(:,1)==1);
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
F_cell_s=F(s1119(:),:);
cell_id=[1:size(F_cell_s,1)];


bh=mlread('L:\Monkey1\region1\20211119\HH_7a_socialcue_20211119.bhv2');
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
         if all_conditions_targetoff(i)==1
             a3_left_correct=[a3_left_correct frame_num_all_targetoff_wrong(i)];
         else
             a3_right_correct=[a3_right_correct frame_num_all_targetoff_wrong(i)];
         end
     elseif bh(all_trials_num_targetoff_wrong(i)).TrialError==1;
         if all_conditions_targetoff(i)==1
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
    unbiased_currentoutcome_region1_0s(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end

save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211119\unbiased_currentoutcome_region1_0s_raw.mat','unbiased_currentoutcome_region1_0s');


load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211119\judge_the_types_of_neurons_on_each_frame_20211119.mat');

for i=1:length(s1119)
    for j=36:size(M1region1day2_difference,2)
        if M1region1day2_difference(i,j)<0
            unbiased_currentoutcome_region1_0s(i,j-34)=-unbiased_currentoutcome_region1_0s(i,j-34);
        end
    end
end

unbiased_currentoutcome_meanvalue_region1_0s=mean(unbiased_currentoutcome_region1_0s(:,5:20),2);
unbiased_currentoutcome_meanvalue_region1_0s(:,2)=s1119;
unbiased_currentoutcome_meanvalue_region1_0s(:,3)=1;
save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211119\unbiased_currentoutcome_region1_0s.mat','unbiased_currentoutcome_region1_0s','unbiased_currentoutcome_meanvalue_region1_0s');

load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211119\unbiased_currentoutcome_region1_0s.mat','unbiased_currentoutcome_region1_0s','unbiased_currentoutcome_meanvalue_region1_0s');

%region2_0s
load('L:\Monkey1\region2\20211121\stim_markers_learning_aligned_to_target_off_20211121.mat');
%% correct
prev_t=4;
after_t=16;
load('L:\4subregions\20211121\suite2p\plane0\f_filter_1121.mat');
F_raw=readNPY('L:\4subregions\20211121\suite2p\plane0\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\4subregions\20211121\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
s1121=s;
F_cell_s=F(s1121(:),:);
cell_id=[1:size(F_cell_s,1)];

bh=mlread('L:\Monkey1\region2\20211121\HH_7a_socialcue_20211121.bhv2');
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
         if all_conditions_targetoff(i)==1
             a3_left_correct=[a3_left_correct frame_num_all_targetoff_wrong(i)];
         else
             a3_right_correct=[a3_right_correct frame_num_all_targetoff_wrong(i)];
         end
     elseif bh(all_trials_num_targetoff_wrong(i)).TrialError==1;
         if all_conditions_targetoff(i)==1
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
    unbiased_currentoutcome_region2_0s(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end

save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211121\unbiased_currentoutcome_region2_0s_raw.mat','unbiased_currentoutcome_region2_0s');


load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211121\judge_the_types_of_neurons_on_each_frame_20211121.mat');

for i=1:length(s1121)
    for j=36:size(M1region2day2_difference,2)
        if M1region2day2_difference(i,j)<0
            unbiased_currentoutcome_region2_0s(i,j-34)=-unbiased_currentoutcome_region2_0s(i,j-34);
        end
    end
end

unbiased_currentoutcome_meanvalue_region2_0s=mean(unbiased_currentoutcome_region2_0s(:,5:20),2);
unbiased_currentoutcome_meanvalue_region2_0s(:,2)=s1121;
unbiased_currentoutcome_meanvalue_region2_0s(:,3)=2;
save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211121\unbiased_currentoutcome_region2_0s.mat','unbiased_currentoutcome_region2_0s','unbiased_currentoutcome_meanvalue_region2_0s');

load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211121\unbiased_currentoutcome_region2_0s.mat','unbiased_currentoutcome_region2_0s','unbiased_currentoutcome_meanvalue_region2_0s');

%region3_0s

load('L:\Monkey1\region3\20211127\stim_markers_learning_aligned_to_target_off_20211127.mat');
%% correct
prev_t=4;
after_t=16;
load('L:\4subregions\20211127\20211127\suite2p\plane0\f_filter1127.mat');
F_raw=readNPY('L:\4subregions\20211127\20211127\suite2p\plane0\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\4subregions\20211127\20211127\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
s1127=s;
F_cell_s=F(s(:),:);
cell_id=[1:size(F_cell_s,1)];

bh=mlread('L:\Monkey1\region3\20211127\HH_7a_socialcue_20211127.bhv2');
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
         if all_conditions_targetoff(i)==1
             a3_left_correct=[a3_left_correct frame_num_all_targetoff_wrong(i)];
         else
             a3_right_correct=[a3_right_correct frame_num_all_targetoff_wrong(i)];
         end
     elseif bh(all_trials_num_targetoff_wrong(i)).TrialError==1;
         if all_conditions_targetoff(i)==1
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
    unbiased_currentoutcome_region3_0s(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end
save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211127\unbiased_currentoutcome_region3_0s_raw.mat','unbiased_currentoutcome_region3_0s');


load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211127\judge_the_types_of_neurons_on_each_frame_20211127.mat');

for i=1:length(s1127)
    for j=36:size(M1region3day3_difference,2)
        if M1region3day3_difference(i,j)<0
            unbiased_currentoutcome_region3_0s(i,j-34)=-unbiased_currentoutcome_region3_0s(i,j-34);
        end
    end
end

unbiased_currentoutcome_meanvalue_region3_0s=mean(unbiased_currentoutcome_region3_0s(:,5:20),2);
unbiased_currentoutcome_meanvalue_region3_0s(:,2)=s1127;
unbiased_currentoutcome_meanvalue_region3_0s(:,3)=3;
save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211127\unbiased_currentoutcome_region3_0s.mat','unbiased_currentoutcome_region3_0s','unbiased_currentoutcome_meanvalue_region3_0s');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211127\unbiased_currentoutcome_region3_0s.mat','unbiased_currentoutcome_region3_0s','unbiased_currentoutcome_meanvalue_region3_0s');



%region4_0s

load('L:\Monkey1\region4\20211201\stim_markers_learning_aligned_to_target_off_20211201.mat');
%% correct
prev_t=4;
after_t=16;
load('L:\4subregions\20211201\20211201\suite2p\plane0\f_filter1201.mat');
F_raw=readNPY('L:\4subregions\20211201\20211201\suite2p\plane0\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\4subregions\20211201\20211201\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
s1201=s;
F_cell_s=F(s(:),:);
cell_id=[1:size(F_cell_s,1)];


bh=mlread('L:\Monkey1\region4\20211201\HH_7a_socialcue_20211201.bhv2');
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
         if all_conditions_targetoff(i)==1
             a3_left_correct=[a3_left_correct frame_num_all_targetoff_wrong(i)];
         else
             a3_right_correct=[a3_right_correct frame_num_all_targetoff_wrong(i)];
         end
     elseif bh(all_trials_num_targetoff_wrong(i)).TrialError==1;
         if all_conditions_targetoff(i)==1
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
    unbiased_currentoutcome_region4_0s(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end

save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211201\unbiased_currentoutcome_region4_0s_raw.mat','unbiased_currentoutcome_region4_0s');


load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211201\judge_the_types_of_neurons_on_each_frame_20211201.mat');

for i=1:length(s1201)
    for j=36:size(M1region4day2_difference,2)
        if M1region4day2_difference(i,j)<0
            unbiased_currentoutcome_region3_0s(i,j-34)=-unbiased_currentoutcome_region4_0s(i,j-34);
        end
    end
end

unbiased_currentoutcome_meanvalue_region4_0s=mean(unbiased_currentoutcome_region4_0s(:,5:20),2);
unbiased_currentoutcome_meanvalue_region4_0s(:,2)=s1201;
unbiased_currentoutcome_meanvalue_region4_0s(:,3)=4;

save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211201\unbiased_currentoutcome_region4_0s.mat','unbiased_currentoutcome_region4_0s','unbiased_currentoutcome_meanvalue_region4_0s');

load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211201\unbiased_currentoutcome_region4_0s.mat','unbiased_currentoutcome_region4_0s','unbiased_currentoutcome_meanvalue_region4_0s');

unbiased_currentoutcome_meanvalue_0s=[unbiased_currentoutcome_meanvalue_region1_0s;unbiased_currentoutcome_meanvalue_region2_0s;unbiased_currentoutcome_meanvalue_region3_0s;unbiased_currentoutcome_meanvalue_region4_0s];
% unbiased_currentoutcome_meanvalue_0s(1:length(unbiased_currentoutcome_meanvalue_region1_0s),4)=[527;1;5;4;7;16;35;12;63;20;3;25;10;9;13;14;34;27;30;29;31;39;28;50;72;32;15;19;18;113
% ;22;26;40;89;51;21;23;11;48;164;38;79;1265;45;33;170;58;42;99;117;65;94;121;73;43;68;84;41;37;1370;97;129;133;66;128;144;76;47;148;57;54;83;256;153;228;102;120;1290;188
% ;250;763;156;173;115;56;87;111;293;509;55;81;218;88;236;151;181;171;204;197;245;212;69;398;196;200;340;62;126;165;341;274;105;46;388;103;178;477;377;155;280;321;152;325
% ;168;183;1551;215;124;187;632;167;599;1612;112;98;552;132;160;282;298;235;307;214;136;355;317;96;284;1186;370;472;540;742;107;303;485;829;344;352;431;434;401;408;243
% ;489;172;202;384;449;503;241;491;229;499;276;536;444;257;414;169;349;933;549;290;313;311;405;258;519;306;596];
% unbiased_currentoutcome_meanvalue_0s(1:length(unbiased_currentoutcome_meanvalue_region1_0s),4)=[1;5;4;7;16;35;12;20;63;3;2;10;25;6;9;13;14;34;27;30;29;31;39;28;50;72;32;19;15;113;18;26;40;89;21;51;23;11;48;1213;38;566;164;44;79;45;33;58;99;170;42;122;117;73;65;121;68;84;43;37;41;1370;100;97;410;66;118;129;133;128;144;76;54
% ;57;153;256;120;188;228;47;173;156;182;102;763;111;56;293;250;115;1154;87;55;266;90;125;181;236;171;88;151;218;245;174;147;196;862;204;197;69;619;226;212;398;246;114;119;340;126
% ;325;46;200;180;62;193;274;341;103;477;388;168;152;377;165;155;187;178;132;321;183;552;400;948;167;221;816;599;131;112;124;1551;307;632;298;214;317;136;160;96;1612;282;235;284;370;352;472;355;742;540;1186;107;195;361;425;303;
% 243;205;225;219;344;401;434;829;431;736;503;202;384;172;408;241;491;489;2289;285;475;536;486;923;169;276;414;186;313;777;95;179;549;258;519;444;158;349;967;357;405;596;2236;137;1559;334;1030;383;544;1972;666;1378;579;306;509;946;2200;2109;239;189;1069;449;1713;22;476;148;562;933;463;929;483;516;1590;436;94;733;251;163;396;527;1002;311];
unbiased_currentoutcome_meanvalue_0s(1:length(unbiased_currentoutcome_meanvalue_region1_0s),4)=s1119;


unbiased_currentoutcome_meanvalue_0s(length(unbiased_currentoutcome_meanvalue_region1_0s)+1:length(unbiased_currentoutcome_meanvalue_region1_0s)+length(unbiased_currentoutcome_meanvalue_region2_0s),4)=[3+1
;6+1;655+1;7+1;5+1;18+1;50+1;27+1;1+1;20+1;10+1;4+1;16+1;9+1;34+1;21+1;2+1;26+1;8+1;63+1;123+1;23+1;22+1;167+1;28+1;43+1;39+1;93+1;170+1;36+1;41+1;12+1;35+1;32+1;60+1;13+1;48+1;30+1;65+1;29+1;95+1;64+1;198+1;53+1;80+1;49+1;124+1;112+1;143+1;88+1;42+1;125+1;94+1;209+1;185+1;117+1;103+1
;284+1;56+1;149+1;140+1;68+1;67+1;134+1;305+1;54+1;216+1;131+1;505+1;136+1;248+1;17+1;337+1;77+1;46+1;349+1;82+1;230+1;152+1;409+1;212+1;464+1;313+1;157+1;69+1;236+1;101+1;66+1;404+1;328+1;309+1;214+1;222+1;421+1;346+1;408+1;366+1;560+1;441+1
;33+1;561+1;0+1;399+1;91+1;40+1;258+1;55+1;502+1;104+1;470+1;334+1;165+1;624+1;289+1];

unbiased_currentoutcome_meanvalue_0s(length(unbiased_currentoutcome_meanvalue_region1_0s)+1+length(unbiased_currentoutcome_meanvalue_region2_0s):length(unbiased_currentoutcome_meanvalue_region1_0s)+length(unbiased_currentoutcome_meanvalue_region2_0s)+length(unbiased_currentoutcome_meanvalue_region3_0s),4)=[1
;19;5;15;2;11;32;12;10;13;255;36;39;33;14;9;25;24;63;51;17;8;210;48;116;22;59;35;47;71;57;37;52;46;23;27;81;31;62;90
;38;101;34;66;30;79;18;56;61;54;70;196;170;99;113;123;68;88;133;106;107;28;236;55;279;131;75;73;273;65;135;137;87;200
;152;243;118;16;420;109;370;44;386;42;58;154;86;165;212;278;105;142;89;102;323;202;234;524;203;295;173;43;160
;172;226;117;21;146;383;141;221;129;49;297;153;312;227;181;50;122;460;155;111;465;315;120;391;164;136;207;241];

unbiased_currentoutcome_meanvalue_0s(length(unbiased_currentoutcome_meanvalue_region1_0s)+length(unbiased_currentoutcome_meanvalue_region2_0s)+length(unbiased_currentoutcome_meanvalue_region3_0s)+1:length(unbiased_currentoutcome_meanvalue_region1_0s)+length(unbiased_currentoutcome_meanvalue_region2_0s)+length(unbiased_currentoutcome_meanvalue_region3_0s)+length(unbiased_currentoutcome_meanvalue_region4_0s),4)=[2
;4;7;5;10;13;9;1;43;6;11;16;15;12;27;19;92;33;62;56;20;44;28;23;57;34;14;21;59;103;24;30;35;63;46;118;64;239;26
;42;41;157;31;36;226;38;54;132;68;37;52;110;50;90;113;79;49;80;238;55;83;61;218;198;212;78;100;210;172;249;67
;93;230;45;192;58;153;363;97;70;162;253;91;127;121;32;73;168;135;183;106;328;107;98;241;8;131;89;124;108;105
;147;164;222;179;155;318;251;117;309;17;122;77;272;144;221;29;142;400;99;74;109;65;231;51;178;71;334
;87;315;271;247;170;246;352;202;152;248;266;166;47;330;25;102;191;207;114;337;204;308;75;378;414;263
;171;385;486;365;197;335;434;3;154;158;177;141;261;86;364];



unbiased_currentoutcome_meanvalue_sort_0s=sortrows(unbiased_currentoutcome_meanvalue_0s,[1],'descend');
for i=1:length(unbiased_currentoutcome_meanvalue_sort_0s)
    if unbiased_currentoutcome_meanvalue_sort_0s(i,3)==1
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region1_0s(find(s1119==unbiased_currentoutcome_meanvalue_sort_0s(i,2)),:);
    elseif unbiased_currentoutcome_meanvalue_sort_0s(i,3)==2
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region2_0s(find(s1121==unbiased_currentoutcome_meanvalue_sort_0s(i,2)),:);
    elseif unbiased_currentoutcome_meanvalue_sort_0s(i,3)==3
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region3_0s(find(s1127==unbiased_currentoutcome_meanvalue_sort_0s(i,2)),:);
    elseif unbiased_currentoutcome_meanvalue_sort_0s(i,3)==4
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region4_0s(find(s1201==unbiased_currentoutcome_meanvalue_sort_0s(i,2)),:);
    end
end
h=heatmap(unbiased_FEV_sort(:,2:20),'Colormap',jet);
grid off;
h.ColorLimits=[-0.05 0.05];
markers = 'L:\thesis\manual_recircle_same_neurons_4_different_subregions\unbiased_FEV_currentoutcome_sort_0s_new_711neurons_leftrightseparation.mat';
save(markers,'s1119');
save(markers,'s1121','-append');
save(markers,'s1127','-append');
save(markers,'s1201','-append');
save(markers,'unbiased_currentoutcome_meanvalue_0s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_region1_0s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_region2_0s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_region3_0s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_region4_0s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_sort_0s','-append');
save(markers,'unbiased_currentoutcome_region1_0s','-append');
save(markers,'unbiased_currentoutcome_region2_0s','-append');
save(markers,'unbiased_currentoutcome_region3_0s','-append');
save(markers,'unbiased_currentoutcome_region4_0s','-append');
save(markers,'unbiased_FEV_sort','-append');









% 
% mkdir D:\ unbiased_FEV_currentoutcome_sharedday_20211121;
% for cell_num = 1:length(s)
%     figure(1)
%     figure('visible','off')
%     plot([1:size(unbiased_currentoutcome_region1_0s,2)],unbiased_currentoutcome_region1_0s(cell_num,:));
%     xline(3);
%     box off;
%     hold off;
%     saveas(gcf,['D:\unbiased_FEV_currentoutcome_sharedday_20211121\',['cell',num2str(s(cell_num)),'.png']]);
%     close all
% end


