

%region1_5s
load('L:\Monkey1\region1\20211122\stim_markers_learning_aligned_to_target_off_20211122.mat');
%% correct
prev_t=4;
after_t=16;
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211122\f_filter1122.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\F_divide.mat');
F_raw=F_divide.day3;
iscell=readNPY('L:\4subregions\subregion1_11_18_11_19_11_22\20211118_20211119_20211122\suite2p\plane0\iscell.npy');
s1122=find(iscell(:,1)==1);
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
F_cell_s=F(s1122(:),:);
cell_id=[1:size(F_cell_s,1)];

bh=mlread('L:\Monkey1\region1\20211122\HH_7a_socialcue_20211122.bhv2');
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
    unbiased_currentoutcome_region1_5s(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end
save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211122\unbiased_currentoutcome_region1_5s_raw.mat','unbiased_currentoutcome_region1_5s');



load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211122\judge_the_types_of_neurons_on_each_frame_20211122.mat');

for i=1:length(s1122)
    for j=36:size(M1region1day3_difference,2)
        if M1region1day3_difference(i,j)<0
            unbiased_currentoutcome_region1_5s(i,j-34)=-unbiased_currentoutcome_region1_5s(i,j-34);
        end
    end
end


unbiased_currentoutcome_meanvalue_region1_5s=mean(unbiased_currentoutcome_region1_5s(:,5:20),2);
unbiased_currentoutcome_meanvalue_region1_5s(:,2)=s1122;
unbiased_currentoutcome_meanvalue_region1_5s(:,3)=1;

save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211122\unbiased_currentoutcome_region1_5s.mat','unbiased_currentoutcome_region1_5s','unbiased_currentoutcome_meanvalue_region1_5s');
%%


%region2_5s
load('L:\Monkey1\region2\20211124\stim_markers_learning_aligned_to_target_off_20211124.mat');
%% correct
prev_t=4;
after_t=16;
 load('L:\4subregions\20211124\20211124\suite2p\plane0\f_filter1124.mat');
F_raw=readNPY('L:\4subregions\20211124\20211124\suite2p\plane0\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\4subregions\20211124\20211124\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
s1124=s;
 F_cell_s=F(s1124(:),:);

cell_id=[1:size(F_cell_s,1)];


bh=mlread('L:\Monkey1\region2\20211124\HH_7a_socialcue_20211124.bhv2');
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
    unbiased_currentoutcome_region2_5s(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end

save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211124\unbiased_currentoutcome_region2_5s_raw.mat','unbiased_currentoutcome_region2_5s');





load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211124\judge_the_types_of_neurons_on_each_frame_20211124.mat');

for i=1:length(s1124)
    for j=36:size(M1region2day4_difference,2)
        if M1region2day4_difference(i,j)<0
            unbiased_currentoutcome_region2_5s(i,j-34)=-unbiased_currentoutcome_region2_5s(i,j-34);
        end
    end
end


unbiased_currentoutcome_meanvalue_region2_5s=mean(unbiased_currentoutcome_region2_5s(:,5:20),2);
unbiased_currentoutcome_meanvalue_region2_5s(:,2)=s1124;
unbiased_currentoutcome_meanvalue_region2_5s(:,3)=2;
save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211124\unbiased_currentoutcome_region2_5s.mat','unbiased_currentoutcome_region2_5s','unbiased_currentoutcome_meanvalue_region2_5s');

load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211124\unbiased_currentoutcome_region2_5s.mat','unbiased_currentoutcome_region2_5s','unbiased_currentoutcome_meanvalue_region2_5s');


%region3_5s

load('L:\Monkey1\region3\20211126\stim_markers_learning_aligned_to_target_off_20211126.mat');
%% correct
prev_t=4;
after_t=16;
 load('L:\4subregions\20211126\20211126\suite2p\plane0\f_filter_1126.mat');
F_raw=readNPY('L:\4subregions\20211126\20211126\suite2p\plane0\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\4subregions\20211126\20211126\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
s1126=s;
 F_cell_s=F(s1126(:),:);
cell_id=[1:size(F_cell_s,1)];

bh=mlread('L:\Monkey1\region3\20211126\HH_7a_socialcue_20211126.bhv2');
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
    unbiased_currentoutcome_region3_5s(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end

save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211126\unbiased_currentoutcome_region3_5s_raw.mat','unbiased_currentoutcome_region3_5s');






load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211126\judge_the_types_of_neurons_on_each_frame_20211126.mat');

for i=1:length(s1126)
    for j=36:size(M1region3day2_difference,2)
        if M1region3day2_difference(i,j)<0
            unbiased_currentoutcome_region3_5s(i,j-34)=-unbiased_currentoutcome_region3_5s(i,j-34);
        end
    end
end

unbiased_currentoutcome_meanvalue_region3_5s=mean(unbiased_currentoutcome_region3_5s(:,5:20),2);
unbiased_currentoutcome_meanvalue_region3_5s(:,2)=s1126;
unbiased_currentoutcome_meanvalue_region3_5s(:,3)=3;
save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211126\unbiased_currentoutcome_region3_5s.mat','unbiased_currentoutcome_region3_5s','unbiased_currentoutcome_meanvalue_region3_5s');

load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211126\unbiased_currentoutcome_region3_5s.mat','unbiased_currentoutcome_region3_5s','unbiased_currentoutcome_meanvalue_region3_5s');
%region4_5s




load('L:\Monkey1\region4\20211202\stim_markers_learning_aligned_to_target_off_20211202.mat');
%% correct
prev_t=4;
after_t=16;
 load('L:\4subregions\20211202\20211202\suite2p\plane0\f_filter_1202.mat');
F_raw=readNPY('L:\4subregions\20211202\20211202\suite2p\plane0\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\4subregions\20211202\20211202\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
s1202=s;
 F_cell_s=F(s1202(:),:);
cell_id=[1:size(F_cell_s,1)];



bh=mlread('L:\Monkey1\region4\20211202\HH_7a_socialcue_20211202.bhv2');
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
    unbiased_currentoutcome_region4_5s(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end
save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211202\unbiased_currentoutcome_region4_5s_raw.mat','unbiased_currentoutcome_region4_5s');


load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211202\judge_the_types_of_neurons_on_each_frame_20211202.mat');

for i=1:length(s1202)
    for j=36:size(M1region4day3_difference,2)
        if M1region4day3_difference(i,j)<0
            unbiased_currentoutcome_region4_5s(i,j-34)=-unbiased_currentoutcome_region4_5s(i,j-34);
        end
    end
end

unbiased_currentoutcome_meanvalue_region4_5s=mean(unbiased_currentoutcome_region4_5s(:,5:20),2);
unbiased_currentoutcome_meanvalue_region4_5s(:,2)=s1202;
unbiased_currentoutcome_meanvalue_region4_5s(:,3)=4;

save('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211202\unbiased_currentoutcome_region4_5s.mat','unbiased_currentoutcome_region4_5s','unbiased_currentoutcome_meanvalue_region4_5s');

load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211202\unbiased_currentoutcome_region4_5s.mat','unbiased_currentoutcome_region4_5s','unbiased_currentoutcome_meanvalue_region4_5s');








  
unbiased_currentoutcome_meanvalue_5s=[unbiased_currentoutcome_meanvalue_region1_5s;unbiased_currentoutcome_meanvalue_region2_5s;unbiased_currentoutcome_meanvalue_region3_5s;unbiased_currentoutcome_meanvalue_region4_5s];
unbiased_currentoutcome_meanvalue_5s(1:length(unbiased_currentoutcome_meanvalue_region1_5s),4)=s1122;


unbiased_currentoutcome_meanvalue_5s(length(unbiased_currentoutcome_meanvalue_region1_5s)+1:length(unbiased_currentoutcome_meanvalue_region1_5s)+length(unbiased_currentoutcome_meanvalue_region2_5s),4)=[674+1;12+1;23+1;0+1;17+1;4+1;1+1;3+1;25+1;19+1;14+1;43+1;52+1;18+1;191+1;8+1;13+1;22+1;31+1;28+1;24+1;11+1;35+1;58+1;56+1;48+1;604+1;20+1;46+1;41+1;37+1;741+1;42+1;107+1;36+1;207+1;54+1;78+1;10+1;75+1;141+1;803+1;125+1;50+1;26+1;63+1;57+1;301+1;132+1;130+1;284+1;202+1;77+1;226+1;94+1;729+1;38+1;112+1;61+1;294+1;122+1;891+1;81+1;119+1;27+1;79+1;111+1;151+1;138+1;172+1;128+1;92+1;127+1;236+1;274+1;1086+1;33+1;39+1;118+1;64+1;117+1;257+1;342+1;146+1;343+1;232+1;289+1;184+1;742+1;124+1;1432+1;139+1;333+1;263+1;319+1;1059+1;195+1;477+1;213+1;506+1;676+1;313+1;487+1;244+1;457+1;596+1;261+1;1056+1;817+1;162+1;517+1;658+1;1307+1;2+1]


unbiased_currentoutcome_meanvalue_5s(length(unbiased_currentoutcome_meanvalue_region1_5s)+1+length(unbiased_currentoutcome_meanvalue_region2_5s):length(unbiased_currentoutcome_meanvalue_region1_5s)+length(unbiased_currentoutcome_meanvalue_region2_5s)+length(unbiased_currentoutcome_meanvalue_region3_5s),4)=[1+1;8+1;5+1;25+1;19+1;12+1;9+1;11+1;13+1;18+1;7+1;136+1;24+1;66+1;4+1;266+1;30+1;42+1;21+1;20+1;44+1;97+1;64+1;49+1;10+1;17+1;58+1;32+1;15+1;39+1;55+1;16+1;158+1;212+1;153+1;41+1;36+1;27+1;291+1;327+1;23+1;40+1;72+1;100+1;67+1;38+1;159+1;31+1;71+1;51+1;22+1;121+1;59+1;87+1;79+1;37+1;115+1;107+1;65+1;47+1;165+1;125+1;89+1;174+1;52+1;83+1;56+1;180+1;170+1;93+1;95+1;150+1;355+1;84+1;29+1;244+1;134+1;375+1;335+1;85+1;289+1;106+1;91+1;122+1;415+1;124+1;283+1;172+1;272+1;129+1;303+1;163+1;346+1;215+1;404+1;167+1;81+1;222+1;210+1;324+1;80+1;127+1;182+1;200+1;427+1;26+1;168+1;288+1;242+1;315+1;184+1;99+1;434+1;131+1;14+1;116+1;169+1;101+1;201+1;293+1;311+1;366+1;181+1;152+1;278+1;156+1;381+1;144+1;340+1;361+1;187+1]



unbiased_currentoutcome_meanvalue_5s(length(unbiased_currentoutcome_meanvalue_region1_5s)+length(unbiased_currentoutcome_meanvalue_region2_5s)+length(unbiased_currentoutcome_meanvalue_region3_5s)+1:length(unbiased_currentoutcome_meanvalue_region1_5s)+length(unbiased_currentoutcome_meanvalue_region2_5s)+length(unbiased_currentoutcome_meanvalue_region3_5s)+length(unbiased_currentoutcome_meanvalue_region4_5s),4)=[11+1;0+1;452+1;1+1;3+1;13+1;2+1;138+1;10+1;8+1;15+1;23+1;9+1;38+1;20+1;16+1;163+1;25+1;31+1;39+1;34+1;43+1;267+1;53+1;24+1;33+1;175+1;44+1;58+1;117+1;27+1;37+1;45+1;59+1;67+1;62+1;55+1;54+1;12+1;32+1;97+1;49+1;260+1;75+1;70+1;190+1;68+1;63+1;79+1;29+1;36+1;100+1;41+1;83+1;28+1;47+1;51+1;187+1;94+1;66+1;106+1;200+1;119+1;185+1;312+1;168+1;88+1;74+1;76+1;81+1;873+1;213+1;141+1;72+1;111+1;26+1;95+1;103+1;135+1;181+1;89+1;276+1;42+1;146+1;127+1;129+1;145+1;186+1;69+1;73+1;283+1;161+1;50+1;116+1;164+1;142+1;112+1;139+1;65+1;124+1;588+1;177+1;170+1;147+1;241+1;101+1;464+1;156+1;56+1;484+1;108+1;150+1;249+1;120+1;231+1;346+1;92+1;500+1;198+1;153+1;125+1;278+1;98+1;398+1;85+1;239+1;298+1;279+1;91+1;86+1;84+1;171+1;152+1;61+1;96+1;188+1;77+1;52+1;137+1;233+1;230+1;242+1;93+1;160+1;109+1;732+1;344+1;248+1;227+1;169+1;302+1;162+1;222+1;159+1;128+1;264+1;208+1;429+1;284+1;237+1;102+1;881+1;396+1;332+1;352+1;179+1;338+1;451+1;362+1]





unbiased_currentoutcome_meanvalue_sort_5s=sortrows(unbiased_currentoutcome_meanvalue_5s,[1],'descend');
for i=1:length(unbiased_currentoutcome_meanvalue_sort_5s)
    if unbiased_currentoutcome_meanvalue_sort_5s(i,3)==1
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region1_5s(find(s1122==unbiased_currentoutcome_meanvalue_sort_5s(i,2)),:);
    elseif unbiased_currentoutcome_meanvalue_sort_5s(i,3)==2
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region2_5s(find(s1124==unbiased_currentoutcome_meanvalue_sort_5s(i,2)),:);
    elseif unbiased_currentoutcome_meanvalue_sort_5s(i,3)==3
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region3_5s(find(s1126==unbiased_currentoutcome_meanvalue_sort_5s(i,2)),:);
    elseif unbiased_currentoutcome_meanvalue_sort_5s(i,3)==4
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region4_5s(find(s1202==unbiased_currentoutcome_meanvalue_sort_5s(i,2)),:);
    end
end
h=heatmap(unbiased_FEV_sort(:,2:20),'Colormap',jet);
grid off;
h.ColorLimits=[-0.05 0.05];
markers = 'L:\thesis\manual_recircle_same_neurons_4_different_subregions\basedon_5s_unbiased_FEV_currentoutcome_sort_5s_new_711neurons_leftrightseparation.mat';
save(markers,'s1122');
save(markers,'s1124','-append');
save(markers,'s1126','-append');
save(markers,'s1202','-append');
save(markers,'unbiased_currentoutcome_meanvalue_5s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_region1_5s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_region2_5s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_region3_5s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_region4_5s','-append');
save(markers,'unbiased_currentoutcome_meanvalue_sort_5s','-append');
save(markers,'unbiased_currentoutcome_region1_5s','-append');
save(markers,'unbiased_currentoutcome_region2_5s','-append');
save(markers,'unbiased_currentoutcome_region3_5s','-append');
save(markers,'unbiased_currentoutcome_region4_5s','-append');
save(markers,'unbiased_FEV_sort','-append');









% 
% mkdir D:\ unbiased_FEV_currentoutcome_sharedday_20211121;
% for cell_num = 1:length(s)
%     figure(1)
%     figure('visible','off')
%     plot([1:size(unbiased_currentoutcome_region1_5s,2)],unbiased_currentoutcome_region1_5s(cell_num,:));
%     xline(3);
%     box off;
%     hold off;
%     saveas(gcf,['D:\unbiased_FEV_currentoutcome_sharedday_20211121\',['cell',num2str(s(cell_num)),'.png']]);
%     close all
% end


