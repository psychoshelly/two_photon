load('D:\ZY_lab\Monkey\M180519\20211108\new20211108\stim_markers_learning_aligned_to_target_off_20211108.mat');
%% correct
for con=1:2
    con_ind=find(all_conditions_targetoff==con);
    trial_targetoff_align_frame_num.(sprintf('con_%d',con))=frame_num_all_targetoff(con_ind);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像

prev_t=37;
after_t=30;
load('L:\Monkey1\region1\20211108\f_filter_1108.mat');
%load('D:\ZY_lab\Monkey\M180519\subregion1_11_18_11_19_11_22\F_divide.mat');
%load('D:\ZY_lab\Monkey\M180519\subregion1_11_18_11_19_11_22\20211126\s1121_shared.mat');
%s=s1121_shared;
%F_raw=F_divide.day1;
F_raw=readNPY('L:\Monkey1\region1\20211108\F.npy');
%load('D:\ZY_lab\Monkey\M180519\20211126\new\s1121.mat');
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
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
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%stage1:  38_42frames
for cell_num=1:length(s)
M1region1stage1day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,38:41),2);
M1region1stage1day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,38:41),2);
M1region1stage1day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,38:41),2);
M1region1stage1day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,38:41),2);
end

for cell_num=1:length(s)
M1region1stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M1region1stage1day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)));M1region1stage1day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))];
M1region1stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M1region1stage1day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M1region1stage1day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end


 for cell_num=1:length(s)
 M1region1stage1day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,38:41),2);
 M1region1stage1day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,38:41),2);
 M1region1stage1day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,38:41),2);
 M1region1stage1day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,38:41),2);
 end

M1region1stage1day1_mean_ratio_deltaF=[];
M1region1stage1day1_outcome=[];
M1region1stage1day1_saccade=[];
for cell_num=1:length(s)
    M1region1stage1day1_mean_ratio_deltaF=[[M1region1stage1day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))];[M1region1stage1day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))];[M1region1stage1day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))];M1region1stage1day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))];
    M1region1stage1day1_outcome=[repmat(1,length([M1region1stage1day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(1,length([M1region1stage1day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M1region1stage1day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M1region1stage1day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    M1region1stage1day1_saccade=[repmat(3,length([M1region1stage1day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(4,length([M1region1stage1day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(3,length([M1region1stage1day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(4,length([M1region1stage1day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    Data  = [M1region1stage1day1_mean_ratio_deltaF,M1region1stage1day1_outcome,M1region1stage1day1_saccade];
    out   = SRH_test(Data,'outcome','saccade');
    M1region1stage1day1diff_ratio_deltaF(cell_num,:)=[s(cell_num),table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
    M1region1stage1day1index=M1region1stage1day1diff_ratio_deltaF(find(M1region1stage1day1diff_ratio_deltaF(:,2)<0.0025),1);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%stage2
for cell_num=1:length(s)
M1region1stage2day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,42:45),2);
M1region1stage2day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,42:45),2);
M1region1stage2day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,42:45),2);
M1region1stage2day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,42:45),2);
end

for cell_num=1:length(s)
M1region1stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M1region1stage2day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)));M1region1stage2day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))];
M1region1stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M1region1stage2day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M1region1stage2day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end


 for cell_num=1:length(s)
 M1region1stage2day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,42:45),2);
 M1region1stage2day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,42:45),2);
 M1region1stage2day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,42:45),2);
 M1region1stage2day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,42:45),2);
 end

M1region1stage2day1_mean_ratio_deltaF=[];
for cell_num=1:length(s)
    M1region1stage2day1_mean_ratio_deltaF=[[M1region1stage2day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))];[M1region1stage2day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))];[M1region1stage2day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))];M1region1stage2day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))];
    M1region1stage2day1_outcome=[repmat(1,length([M1region1stage2day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(1,length([M1region1stage2day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M1region1stage2day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M1region1stage2day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    M1region1stage2day1_saccade=[repmat(3,length([M1region1stage2day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(4,length([M1region1stage2day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(3,length([M1region1stage2day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(4,length([M1region1stage2day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    Data  = [M1region1stage2day1_mean_ratio_deltaF,M1region1stage2day1_outcome,M1region1stage2day1_saccade];
    out   = SRH_test(Data,'outcome','saccade');
    M1region1stage2day1diff_ratio_deltaF(cell_num,:)=[s(cell_num),table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
    M1region1stage2day1index=M1region1stage2day1diff_ratio_deltaF(find(M1region1stage2day1diff_ratio_deltaF(:,2)<0.0025),1);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%stage3
for cell_num=1:length(s)
M1region1stage3day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,46:49),2);
M1region1stage3day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,46:49),2);
M1region1stage3day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,46:49),2);
M1region1stage3day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,46:49),2);
end

for cell_num=1:length(s)
M1region1stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M1region1stage3day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)));M1region1stage3day1mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))];
M1region1stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M1region1stage3day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M1region1stage3day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end

 for cell_num=1:length(s)
 M1region1stage3day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,46:49),2);
 M1region1stage3day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,46:49),2);
 M1region1stage3day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,46:49),2);
 M1region1stage3day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,46:49),2);
 end

M1region1stage3day1_mean_ratio_deltaF=[];
for cell_num=1:length(s)
    M1region1stage3day1_mean_ratio_deltaF=[[M1region1stage3day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))];[M1region1stage3day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))];[M1region1stage3day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))];M1region1stage3day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))];
    M1region1stage3day1_outcome=[repmat(1,length([M1region1stage3day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(1,length([M1region1stage3day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M1region1stage3day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M1region1stage3day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    M1region1stage3day1_saccade=[repmat(3,length([M1region1stage3day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(4,length([M1region1stage3day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(3,length([M1region1stage3day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(4,length([M1region1stage3day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    Data  = [M1region1stage3day1_mean_ratio_deltaF,M1region1stage3day1_outcome,M1region1stage3day1_saccade];
    out   = SRH_test(Data,'outcome','saccade');
    M1region1stage3day1diff_ratio_deltaF(cell_num,:)=[s(cell_num),table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
    M1region1stage3day1index=M1region1stage3day1diff_ratio_deltaF(find(M1region1stage3day1diff_ratio_deltaF(:,2)<0.0025),1);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%stage4
for cell_num=1:length(s)
M1region1stage4day1mean_ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,50:53),2);
M1region1stage4day1mean_ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,50:53),2);
M1region1stage4day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,50:53),2);
M1region1stage4day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,50:53),2);
end

for cell_num=1:length(s)
M1region1stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M1region1stage4day1mean_ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)));M1region1stage4day1mean_ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))];
M1region1stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M1region1stage4day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M1region1stage4day1mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end

for cell_num=1:length(s)
 M1region1stage4day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,50:53),2);
 M1region1stage4day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,50:53),2);
 M1region1stage4day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,50:53),2);
 M1region1stage4day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,50:53),2);
 end

M1region1stage4day1_mean_ratio_deltaF=[];
for cell_num=1:length(s)
    M1region1stage4day1_mean_ratio_deltaF=[[M1region1stage4day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))];[M1region1stage4day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))];[M1region1stage4day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))];M1region1stage4day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))];
    M1region1stage4day1_outcome=[repmat(1,length([M1region1stage4day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(1,length([M1region1stage4day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M1region1stage4day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M1region1stage4day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    M1region1stage4day1_saccade=[repmat(3,length([M1region1stage4day1mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(4,length([M1region1stage4day1mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(3,length([M1region1stage4day1mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(4,length([M1region1stage4day1mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    Data  = [M1region1stage4day1_mean_ratio_deltaF,M1region1stage4day1_outcome,M1region1stage4day1_saccade];
    out   = SRH_test(Data,'outcome','saccade');
    M1region1stage4day1diff_ratio_deltaF(cell_num,:)=[s(cell_num),table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
    M1region1stage4day1index=M1region1stage4day1diff_ratio_deltaF(find(M1region1stage4day1diff_ratio_deltaF(:,2)<0.0025),1);
end




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
% for i=1:length(M1region1day1)
%     
%     if sum(M1region1day1(i,1:4)<0)>sum(M1region1day1(i,1:4)>0)
%         M1region1day1(i,6)=-1;
%     else
%         M1region1day1(i,6)=1;
%     end
% end
% M1region1day1_wrong_number=sum(M1region1day1(:,6)==-1);
% M1region1day1_correct_number=sum(M1region1day1(:,6)==1);
% 
 M1region1day1_recordingnum=length(s);
% 
% 
% m1_region1_correct=[M1region1day1_correct_number/length(s)];
% m1_region1_wrong=[M1region1day1_wrong_number/length(s)];
% 
% % std_m1_region1=std([M1region1day1_correct_number/(M1region1day1_wrong_number+M1region1day1_correct_number),M1region1day1_correct_number/(M1region1day1_correct_number+M1region1day1_wrong_number),M1region1day1_correct_number/(M1region1day1_wrong_number+M1region1day1_correct_number),M1region1day4_correct_number/(M1region1day4_wrong_number+M1region1day4_correct_number)]);
% pie([m1_region1_correct,m1_region1_wrong]);
% cm=[0.6 0.8 0.7;0.9 0.5 0.4];
% colormap(cm);

markers = 'L:\Monkey1\region1\20211108\proportions_of_cells_encoding_current_trials_outcome_20211108.mat';
save(markers,'M1region1stage1day1diff_ratio_deltaF');
save(markers,'M1region1stage1day1index','-append');
save(markers,'M1region1stage1day1_mean_ratio_deltaF_correctintegration','-append');
save(markers,'M1region1stage1day1_mean_ratio_deltaF_wrongintegration','-append');

save(markers,'M1region1stage2day1diff_ratio_deltaF','-append');
save(markers,'M1region1stage2day1index','-append');
save(markers,'M1region1stage2day1_mean_ratio_deltaF_correctintegration','-append');
save(markers,'M1region1stage2day1_mean_ratio_deltaF_wrongintegration','-append');

save(markers,'M1region1stage3day1diff_ratio_deltaF','-append');
save(markers,'M1region1stage3day1index','-append');
save(markers,'M1region1stage3day1_mean_ratio_deltaF_correctintegration','-append');
save(markers,'M1region1stage3day1_mean_ratio_deltaF_wrongintegration','-append');

save(markers,'M1region1stage4day1diff_ratio_deltaF','-append');
save(markers,'M1region1stage4day1index','-append');
save(markers,'M1region1stage4day1_mean_ratio_deltaF_correctintegration','-append');
save(markers,'M1region1stage4day1_mean_ratio_deltaF_wrongintegration','-append');
save(markers,'M1region1day1','-append');
% save(markers,'M1region1day1_wrong_number','-append');
% save(markers,'M1region1day1_correct_number','-append');
save(markers,'M1region1day1_recordingnum','-append');

