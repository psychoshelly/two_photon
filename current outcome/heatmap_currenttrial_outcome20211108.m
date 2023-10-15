%region1_0608
load('L:\Monkey1\region1\20211108\stim_markers_learning_aligned_to_target_off_20211108.mat');
%% correct
prev_t=4;
after_t=16;
load('L:\Monkey1\region1\20211108\f_filter_1108.mat');
F_raw=readNPY('L:\Monkey1\region1\20211108\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s=find(iscell(:,1)==1);
s1108=s;
F_cell_s=F(s1108(:),:);
cell_id=[1:size(F_cell_s,1)];

bh=mlread('L:\Monkey1\region1\20211108\HH_7a_socialcue_20211108.bhv2');
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
 
 
 %% balance correct and wrong
%   indx_rand_leftwrong=randi(length(left_wrong),1,length(left_correct)-length(left_wrong));
%  rand_leftwrong=left_wrong(indx_rand_leftwrong);
%  new_leftwrong=[left_wrong rand_leftwrong];
%  
%   indx_rand_rightwrong=randi(length(right_wrong),1,length(right_correct)-length(right_wrong));
%  rand_rightwrong=right_wrong(indx_rand_rightwrong);
%  new_rightwrong=[right_wrong rand_rightwrong];
 
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
    unbiased_currentoutcome_region1_1108(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end
                            
% shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome_region1_1108(:,2:20),1),std(unbiased_currentoutcome_region1_1108(:,2:20),1)./sqrt(length(unbiased_currentoutcome_region1_1108(:,2:20))),'lineProps','r');
% xline(0);
% ylim([0 0.06]);
% 
% 
% save('L:\Monkey1\region1\20211108\unbiased_currentoutcome_region1_1108_raw.mat','unbiased_currentoutcome_region1_1108');


% load('F:\0608-0615_same_neurons\0608\proportions_of_cells_encoding_current_trials_outcome_20220608.mat');
% 
% for i=1:length(M1region1day1)
%     if M1region1day1(i,6)==-1
%        a=find(s0608==M1region1day1(i,5));
%        unbiased_currentoutcome_region1_0608(a,:)=-unbiased_currentoutcome_region1_0608(a,:);
%     end
% end

load('L:\Monkey1\region1\20211108\judge_the_types_of_neurons_on_each_frame_20211108.mat');

for i=1:length(s1108)
    for j=36:size(M1region1day1_difference,2)
        if M1region1day1_difference(i,j)<0
            unbiased_currentoutcome_region1_1108(i,j-34)=-unbiased_currentoutcome_region1_1108(i,j-34);
        end
    end
end
   
unbiased_currentoutcome_meanvalue1108=mean(unbiased_currentoutcome_region1_1108(:,5:20),2);
unbiased_currentoutcome_meanvalue1108(:,2)=s1108;
unbiased_currentoutcome_meanvalue1108(:,3)=1;

unbiased_currentoutcome1108_sort=sortrows(unbiased_currentoutcome_meanvalue1108,[1],'descend');
for i=1:length(unbiased_currentoutcome1108_sort)
unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region1_1108(find(s1108==unbiased_currentoutcome1108_sort(i,2)),:);
end

h=heatmap(unbiased_FEV_sort(:,2:20),'Colormap',jet);
grid off;
h.ColorLimits=[-0.05 0.05];






% h=heatmap(unbiased_FEV_sort(50:70,2:20),'Colormap',jet);
% grid off;
% h.ColorLimits=[-0.05 0.05];



