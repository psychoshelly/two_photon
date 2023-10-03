load('G:\0507-0513\20220513\stim_markers_learning_aligned_to_target_off_20220513.mat');
%% correct
for con=1:2
    con_ind=find(all_conditions_targetoff==con);
    trial_targetoff_align_frame_num.(sprintf('con_%d',con))=frame_num_all_targetoff(con_ind);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像

prev_t=37;
after_t=16;
load('G:\0507-0513\20220513\suite2p\plane0\f_filter_0513.mat');
%load('D:\ZY_lab\Monkey\M180519\subregion3_11_18_11_19_11_22\F_divide.mat');
%load('D:\ZY_lab\Monkey\M180519\subregion3_11_18_11_19_11_22\20211126\s1125_shared.mat');
%s=s1125_shared;
%F_raw=F_divide.day7;
F_raw=readNPY('G:\0507-0513\20220513\suite2p\plane0\F.npy');
%load('D:\ZY_lab\Monkey\M180519\20211126\new\s1125.mat');
iscell=readNPY('G:\0507-0513\20220513\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
F_cell_s=F(s(:),:);
cell_id=[1:size(F_cell_s,1)];
a1=trial_targetoff_align_frame_num.(sprintf('con_1'));
a2=trial_targetoff_align_frame_num.(sprintf('con_2'));
a3=frame_num_all;

for cell_num = 1:length(s)
        targetoff.(sprintf('cell_%d_con_1',s(cell_num)))=get_act_raw_trace(cell_num,a1,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',s(cell_num)))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',s(cell_num)))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))=(targetoff.(sprintf('cell_%d_con_1',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))));
        se.(sprintf('cell_%d_con_1',s(cell_num)))=(std(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num))),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num))))));
        
        targetoff.(sprintf('cell_%d_con_2',s(cell_num)))=get_act_raw_trace(cell_num,a2,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',s(cell_num)))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',s(cell_num)))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
       ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))=(targetoff.(sprintf('cell_%d_con_2',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))));
        se.(sprintf('cell_%d_con_2',s(cell_num)))=(std(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num))),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num))))));
end


%% wrong
for con=1:2
    con_ind_wrong=find(all_conditions_targetoff_wrong==con);
    trial_targetoff_align_frame_num_wrong.(sprintf('con_%d',con))=frame_num_all_targetoff_wrong(con_ind_wrong);
   
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像
a1_wrong=trial_targetoff_align_frame_num_wrong.(sprintf('con_1'));
a2_wrong=trial_targetoff_align_frame_num_wrong.(sprintf('con_2'));

for cell_num = 1:length(s)
        
        targetoff_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=get_act_raw_trace(cell_num,a1_wrong,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',s(cell_num)))=get_act_raw_trace(cell_num,a3,F_cell_s,11, 0);
        mean_cue.(sprintf('cell_%d',s(cell_num)))=mean(get_act_raw_trace(cell_num,a3,F_cell_s,11, 0),2);
       ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=(targetoff_wrong.(sprintf('cell_%d_con_1',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d',s(cell_num)))));
        se_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=(std(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num))),0,1))./(sqrt(length(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num))))));
        
        targetoff_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=get_act_raw_trace(cell_num,a2_wrong,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',s(cell_num)))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d',s(cell_num)))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=(targetoff_wrong.(sprintf('cell_%d_con_2',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d',s(cell_num)))));
        se_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=(std(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num))),0,1))./(sqrt(length(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num))))));
end
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%each_frame
for cell_num=1:length(s)
M2region3day7mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)))=ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)));
M2region3day7mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))=ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)));
M2region3day7mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));
M2region3day7mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)));
end

for cell_num=1:length(s)
M2region3day7_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3day7mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)));M2region3day7mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))];
M2region3day7_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3day7mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M2region3day7mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end
for cell_num=1:length(s)
M2region3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=mean([M2region3day7mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)));M2region3day7mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))],1);
M2region3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=mean([M2region3day7mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M2region3day7mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))],1);
end

M2region3day7_difference=[];
for cell_num=1:length(s)
    M2region3day7_difference(cell_num,:)=M2region3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))-M2region3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)));
end









markers = 'G:\0507-0513\20220513\judge_the_types_of_neurons_on_each_frame_20220513.mat';
save(markers,'M2region3day7_difference');
