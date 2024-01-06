load('L:\Monkey1\region1\20211108\stim_markers_learning_aligned_to_target_off_20211108.mat');
%% correct
for con=1:2
    con_ind=find(all_conditions_targetoff==con);
    trial_targetoff_align_frame_num.(sprintf('con_%d',con))=frame_num_all_targetoff(con_ind);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像

prev_t=45;
after_t=15;

F_raw=readNPY('L:\Monkey1\region1\20211108\F.npy');
load('L:\Monkey1\region1\20211108\f_filter_1108.mat');

new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s=find(iscell(:,1)==1);
s1108=s;
 F_cell_s=F(s1108(:),:);
cell_id=[1:size(F_cell_s,1)];
a1=trial_targetoff_align_frame_num.(sprintf('con_1'));
a2=trial_targetoff_align_frame_num.(sprintf('con_2'));
a3=frame_num_all;
each_neuron_a1_each_frame=zeros(length(cell_id),length(a1),61);
each_neuron_a2_each_frame=zeros(length(cell_id),length(a2),61);
for cell_num = 1:length(cell_id)
        targetoff.(sprintf('cell_%d_con_1',cell_num))=get_act_raw_trace(cell_num,a1,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF.(sprintf('cell_%d_con_1',cell_num))=(targetoff.(sprintf('cell_%d_con_1',cell_num))-mean(mean_cue.(sprintf('cell_%d_cons',cell_num))))./(mean(mean_cue.(sprintf('cell_%d_cons',cell_num))));
        se.(sprintf('cell_%d_con_1',cell_num))=(std(ratio_deltaF.(sprintf('cell_%d_con_1',cell_num)),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_1',cell_num)))));
        each_neuron_a1_each_frame(cell_num,:,:)=ratio_deltaF.(sprintf('cell_%d_con_1',cell_num));
        
 
        targetoff.(sprintf('cell_%d_con_2',cell_num))=get_act_raw_trace(cell_num,a2,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
       ratio_deltaF.(sprintf('cell_%d_con_2',cell_num))=(targetoff.(sprintf('cell_%d_con_2',cell_num))-mean(mean_cue.(sprintf('cell_%d_cons',cell_num))))./(mean(mean_cue.(sprintf('cell_%d_cons',cell_num))));
        se.(sprintf('cell_%d_con_2',cell_num))=(std(ratio_deltaF.(sprintf('cell_%d_con_2',cell_num)),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_2',cell_num)))));
        each_neuron_a2_each_frame(cell_num,:,:)= ratio_deltaF.(sprintf('cell_%d_con_2',cell_num));
end


%% wrong
for con=1:2
    con_ind_wrong=find(all_conditions_targetoff_wrong==con);
    trial_targetoff_align_frame_num_wrong.(sprintf('con_%d',con))=frame_num_all_targetoff_wrong(con_ind_wrong);
   
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像
a1_wrong=trial_targetoff_align_frame_num_wrong.(sprintf('con_1'));
a2_wrong=trial_targetoff_align_frame_num_wrong.(sprintf('con_2'));
each_neuron_a1_wrong_each_frame=zeros(length(cell_id),length(a1_wrong),61);
each_neuron_a2_wrong_each_frame=zeros(length(cell_id),length(a2_wrong),61);

for cell_num = 1:length(cell_id)
        
        targetoff_wrong.(sprintf('cell_%d_con_1',cell_num))=get_act_raw_trace(cell_num,a1_wrong,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s,11, 0);
        mean_cue.(sprintf('cell_%d',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s,11, 0),2);
       ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num))=(targetoff_wrong.(sprintf('cell_%d_con_1',cell_num))-mean(mean_cue.(sprintf('cell_%d',cell_num))))./(mean(mean_cue.(sprintf('cell_%d',cell_num))));
        se_wrong.(sprintf('cell_%d_con_1',cell_num))=(std(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num)),0,1))./(sqrt(length(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num)))));
        each_neuron_a1_wrong_each_frame(cell_num,:,:)=ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num));
        
        
        targetoff_wrong.(sprintf('cell_%d_con_2',cell_num))=get_act_raw_trace(cell_num,a2_wrong,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num))=(targetoff_wrong.(sprintf('cell_%d_con_2',cell_num))-mean(mean_cue.(sprintf('cell_%d',cell_num))))./(mean(mean_cue.(sprintf('cell_%d',cell_num))));
        se_wrong.(sprintf('cell_%d_con_2',cell_num))=(std(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num)),0,1))./(sqrt(length(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num)))));
        each_neuron_a2_wrong_each_frame(cell_num,:,:)=ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num));
end
 
all_trials_num=[all_trials_num_targetoff,all_trials_num_targetoff_wrong]';

%%correct_con1(correct_left);correct_con2(correct_right);wrong_con1(wrong_right);wrong_con2(wrong_left);
%%
each_neuron_each_trial_each_frame1108=[each_neuron_a1_each_frame,each_neuron_a2_each_frame,each_neuron_a1_wrong_each_frame,each_neuron_a2_wrong_each_frame];
current_condition1108=[repmat(1,length(a1),1);repmat(-1,length(a2),1);repmat(1,length(a1_wrong),1);repmat(-1,length(a2_wrong),1)];
current_reward1108=[repmat(1,length(a1),1);repmat(1,length(a2),1);repmat(-1,length(a1_wrong),1);repmat(-1,length(a2_wrong),1)];
saccade1108=[repmat(-1,length(a1),1);repmat(1,length(a2),1);repmat(1,length(a1_wrong),1);repmat(-1,length(a2_wrong),1)];
trial_num1108=reshape([1:1:length(all_trials_num)],[],1);

coefficients_table1108=cell(size(each_neuron_each_trial_each_frame1108,1),size(each_neuron_each_trial_each_frame1108,3));
intercept_matrix1108=zeros(size(each_neuron_each_trial_each_frame1108,1),size(each_neuron_each_trial_each_frame1108,3));
current_condition_matrix1108=zeros(size(each_neuron_each_trial_each_frame1108,1),size(each_neuron_each_trial_each_frame1108,3));
current_reward_matrix1108=zeros(size(each_neuron_each_trial_each_frame1108,1),size(each_neuron_each_trial_each_frame1108,3));
saccade_matrix1108=zeros(size(each_neuron_each_trial_each_frame1108,1),size(each_neuron_each_trial_each_frame1108,3));
trial_num_matrix1108=zeros(size(each_neuron_each_trial_each_frame1108,1),size(each_neuron_each_trial_each_frame1108,3));

for j=1:size(each_neuron_each_trial_each_frame1108,1)
    for i=1:size(each_neuron_each_trial_each_frame1108,3)
        X=[current_condition1108,current_reward1108,saccade1108,trial_num1108];
        y=each_neuron_each_trial_each_frame1108(j,:,i);
        mdl=fitlm(X,y);
         coefficients_table1108(j,i)={table2array(mdl.Coefficients(:,1))};
        intercept_matrix1108(j,i)=abs(coefficients_table1108{j, i}(1));
        current_condition_matrix1108(j,i)=abs(coefficients_table1108{j, i}(2));
        current_reward_matrix1108(j,i)=abs(coefficients_table1108{j, i}(3));
        saccade_matrix1108(j,i)=abs(coefficients_table1108{j, i}(4));
        trial_num_matrix1108(j,i)=abs(coefficients_table1108{j, i}(5));
    end
end
save('L:\Monkey1\region1\20211108\linear_regression_20211108.mat', 'intercept_matrix1108','current_condition_matrix1108','current_reward_matrix1108','saccade_matrix1108','trial_num_matrix1108');
figure
errorbar([1:size(current_condition_matrix1108,2)],mean(current_condition_matrix1108,1),std(current_condition_matrix1108)/sqrt(length(current_condition_matrix1108)));
hold on;
errorbar([1:size(current_condition_matrix1108,2)],mean(current_reward_matrix1108,1),std(current_reward_matrix1108)/sqrt(length(current_reward_matrix1108)));
hold on;
errorbar([1:size(current_condition_matrix1108,2)],mean(saccade_matrix1108,1),std(saccade_matrix1108)/sqrt(length(saccade_matrix1108)));
hold on;
errorbar([1:size(current_condition_matrix1108,2)],mean(intercept_matrix1108,1),std(intercept_matrix1108)/sqrt(length(intercept_matrix1108)));
hold on;
errorbar([1:size(current_condition_matrix1108,2)],mean(trial_num_matrix1108,1),std(trial_num_matrix1108)/sqrt(length(trial_num_matrix1108)));

xline(46);


legend('cue','cr','sd','intercept','trial_num');

