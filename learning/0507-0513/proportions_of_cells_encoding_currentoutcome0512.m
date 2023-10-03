load('G:\0507-0513\20220512\stim_markers_learning_aligned_to_target_off_20220512.mat');
%% correct
for con=1:2
    con_ind=find(all_conditions_targetoff==con);
    trial_targetoff_align_frame_num.(sprintf('con_%d',con))=frame_num_all_targetoff(con_ind);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像

prev_t=37;
after_t=30;
load('G:\0507-0513\20220512\suite2p\plane0\f_filter_0512.mat');
%load('D:\ZY_lab\Monkey\M280519\subregion3_11_18_11_19_11_22\F_divide.mat');
%load('D:\ZY_lab\Monkey\M280519\subregion3_11_18_11_19_11_22\20211126\s1121_shared.mat');
%s=s1121_shared;
%F_raw=F_divide.day6;
F_raw=readNPY('G:\0507-0513\20220512\suite2p\plane0\F.npy');
%load('D:\ZY_lab\Monkey\M280519\20211126\new\s1121.mat');
iscell=readNPY('G:\0507-0513\20220512\suite2p\plane0\iscell.npy');
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
M2region3stage1day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,38:41),2);
M2region3stage1day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,38:41),2);
M2region3stage1day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,38:41),2);
M2region3stage1day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,38:41),2);
end

for cell_num=1:length(s)
M2region3stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3stage1day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)));M2region3stage1day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))];
M2region3stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3stage1day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M2region3stage1day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end


 for cell_num=1:length(s)
 M2region3stage1day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,38:41),2);
 M2region3stage1day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,38:41),2);
 M2region3stage1day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,38:41),2);
 M2region3stage1day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,38:41),2);
 end

M2region3stage1day6_mean_ratio_deltaF=[];
M2region3stage1day6_outcome=[];
M2region3stage1day6_saccade=[];
for cell_num=1:length(s)
    M2region3stage1day6_mean_ratio_deltaF=[[M2region3stage1day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))];[M2region3stage1day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))];[M2region3stage1day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))];M2region3stage1day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))];
    M2region3stage1day6_outcome=[repmat(1,length([M2region3stage1day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(1,length([M2region3stage1day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M2region3stage1day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M2region3stage1day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    M2region3stage1day6_saccade=[repmat(3,length([M2region3stage1day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(4,length([M2region3stage1day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(3,length([M2region3stage1day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(4,length([M2region3stage1day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    Data  = [M2region3stage1day6_mean_ratio_deltaF,M2region3stage1day6_outcome,M2region3stage1day6_saccade];
    out   = SRH_test(Data,'outcome','saccade');
    M2region3stage1day6diff_ratio_deltaF(cell_num,:)=[s(cell_num),table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
    M2region3stage1day6index=M2region3stage1day6diff_ratio_deltaF(find(M2region3stage1day6diff_ratio_deltaF(:,2)<0.0025),1);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%stage2
for cell_num=1:length(s)
M2region3stage2day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,42:45),2);
M2region3stage2day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,42:45),2);
M2region3stage2day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,42:45),2);
M2region3stage2day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,42:45),2);
end

for cell_num=1:length(s)
M2region3stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3stage2day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)));M2region3stage2day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))];
M2region3stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3stage2day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M2region3stage2day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end


 for cell_num=1:length(s)
 M2region3stage2day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,42:45),2);
 M2region3stage2day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,42:45),2);
 M2region3stage2day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,42:45),2);
 M2region3stage2day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,42:45),2);
 end

M2region3stage2day6_mean_ratio_deltaF=[];
for cell_num=1:length(s)
    M2region3stage2day6_mean_ratio_deltaF=[[M2region3stage2day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))];[M2region3stage2day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))];[M2region3stage2day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))];M2region3stage2day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))];
    M2region3stage2day6_outcome=[repmat(1,length([M2region3stage2day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(1,length([M2region3stage2day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M2region3stage2day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M2region3stage2day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    M2region3stage2day6_saccade=[repmat(3,length([M2region3stage2day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(4,length([M2region3stage2day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(3,length([M2region3stage2day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(4,length([M2region3stage2day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    Data  = [M2region3stage2day6_mean_ratio_deltaF,M2region3stage2day6_outcome,M2region3stage2day6_saccade];
    out   = SRH_test(Data,'outcome','saccade');
    M2region3stage2day6diff_ratio_deltaF(cell_num,:)=[s(cell_num),table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
    M2region3stage2day6index=M2region3stage2day6diff_ratio_deltaF(find(M2region3stage2day6diff_ratio_deltaF(:,2)<0.0025),1);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%stage3
for cell_num=1:length(s)
M2region3stage3day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,46:49),2);
M2region3stage3day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,46:49),2);
M2region3stage3day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,46:49),2);
M2region3stage3day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,46:49),2);
end

for cell_num=1:length(s)
M2region3stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3stage3day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_1',s(cell_num)));M2region3stage3day6mean_ratio_deltaF_correct.(sprintf('cell_%d_con_2',s(cell_num)))];
M2region3stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3stage3day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M2region3stage3day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end

 for cell_num=1:length(s)
 M2region3stage3day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,46:49),2);
 M2region3stage3day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,46:49),2);
 M2region3stage3day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,46:49),2);
 M2region3stage3day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,46:49),2);
 end

M2region3stage3day6_mean_ratio_deltaF=[];
for cell_num=1:length(s)
    M2region3stage3day6_mean_ratio_deltaF=[[M2region3stage3day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))];[M2region3stage3day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))];[M2region3stage3day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))];M2region3stage3day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))];
    M2region3stage3day6_outcome=[repmat(1,length([M2region3stage3day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(1,length([M2region3stage3day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M2region3stage3day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M2region3stage3day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    M2region3stage3day6_saccade=[repmat(3,length([M2region3stage3day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(4,length([M2region3stage3day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(3,length([M2region3stage3day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(4,length([M2region3stage3day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    Data  = [M2region3stage3day6_mean_ratio_deltaF,M2region3stage3day6_outcome,M2region3stage3day6_saccade];
    out   = SRH_test(Data,'outcome','saccade');
    M2region3stage3day6diff_ratio_deltaF(cell_num,:)=[s(cell_num),table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
    M2region3stage3day6index=M2region3stage3day6diff_ratio_deltaF(find(M2region3stage3day6diff_ratio_deltaF(:,2)<0.0025),1);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%stage4
for cell_num=1:length(s)
M2region3stage4day6mean_ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,50:53),2);
M2region3stage4day6mean_ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,50:53),2);
M2region3stage4day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,50:53),2);
M2region3stage4day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,50:53),2);
end

for cell_num=1:length(s)
M2region3stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3stage4day6mean_ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)));M2region3stage4day6mean_ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))];
M2region3stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))=[M2region3stage4day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)));M2region3stage4day6mean_ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))];
end
% M2region3stage4day6diff_ratio_deltaF=[];
% for cell_num=1:length(s)
% p=ranksum([M2region3stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',s(cell_num)))], [M2region3stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',s(cell_num)))],'alpha',0.0025);
% M2region3stage4day6verify.(sprintf('cell_%d',cell_num))=p;
% M2region3stage4day6diff_ratio_deltaF(cell_num,:)=[s(cell_num),p]; 
% M2region3stage4day6index=M2region3stage4day6diff_ratio_deltaF(find(M2region3stage4day6diff_ratio_deltaF(:,2)<0.0025),1);
% end
for cell_num=1:length(s)
 M2region3stage4day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))(:,50:53),2);
 M2region3stage4day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))(:,50:53),2);
 M2region3stage4day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',s(cell_num)))(:,50:53),2);
 M2region3stage4day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))=mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',s(cell_num)))(:,50:53),2);
 end

M2region3stage4day6_mean_ratio_deltaF=[];
for cell_num=1:length(s)
    M2region3stage4day6_mean_ratio_deltaF=[[M2region3stage4day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))];[M2region3stage4day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))];[M2region3stage4day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))];M2region3stage4day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))];
    M2region3stage4day6_outcome=[repmat(1,length([M2region3stage4day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(1,length([M2region3stage4day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M2region3stage4day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(2,length([M2region3stage4day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    M2region3stage4day6_saccade=[repmat(3,length([M2region3stage4day6mean_ratio_deltaF_left.(sprintf('cell_%d_con_1',s(cell_num)))]),1);repmat(4,length([M2region3stage4day6mean_ratio_deltaF_right.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(3,length([M2region3stage4day6mean_ratio_deltaF_wrong_left.(sprintf('cell_%d_con_2',s(cell_num)))]),1);repmat(4,length([M2region3stage4day6mean_ratio_deltaF_wrong_right.(sprintf('cell_%d_con_1',s(cell_num)))]),1)];
    Data  = [M2region3stage4day6_mean_ratio_deltaF,M2region3stage4day6_outcome,M2region3stage4day6_saccade];
    out   = SRH_test(Data,'outcome','saccade');
    M2region3stage4day6diff_ratio_deltaF(cell_num,:)=[s(cell_num),table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
    M2region3stage4day6index=M2region3stage4day6diff_ratio_deltaF(find(M2region3stage4day6diff_ratio_deltaF(:,2)<0.0025),1);
end




M2_region3_day6_4stages=union(union(union(M2region3stage1day6index,M2region3stage2day6index),M2region3stage3day6index),M2region3stage4day6index);
M2_region3_day6_0stage=setdiff(M2region3stage1day6diff_ratio_deltaF(:,1),M2_region3_day6_4stages);



for cell_num=1:length(M2_region3_day6_4stages)
    M2region3stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))))-mean(M2region3stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))));
    M2region3stage1day6_difference_struct=cell2mat(struct2cell(M2region3stage1day6_difference));
    
    M2region3stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))))-mean(M2region3stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))));
    M2region3stage2day6_difference_struct=cell2mat(struct2cell(M2region3stage2day6_difference));
    
    M2region3stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))))-mean(M2region3stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))));
    M2region3stage3day6_difference_struct=cell2mat(struct2cell(M2region3stage3day6_difference));
    
    M2region3stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))))-mean(M2region3stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))));
    M2region3stage4day6_difference_struct=cell2mat(struct2cell(M2region3stage4day6_difference));
end
M2region3day6=[M2region3stage1day6_difference_struct M2region3stage2day6_difference_struct M2region3stage3day6_difference_struct M2region3stage4day6_difference_struct M2_region3_day6_4stages];
for i=1:length(M2region3day6)
    
    if sum(M2region3day6(i,1:4)<0)>sum(M2region3day6(i,1:4)>0)
        M2region3day6(i,6)=-1;
    elseif sum(M2region3day6(i,1:4)<0)<sum(M2region3day6(i,1:4)>0)
        M2region3day6(i,6)=1;
    elseif sum(M2region3day6(i,1:4)<0)==sum(M2region3day6(i,1:4)>0)
        if abs(mean(M2region3day6(i,find(M2region3day6(i,1:4)<0))))>abs(mean(M2region3day6(i,find(M2region3day6(i,1:4)>0))))
            M2region3day6(i,6)=-1;
        elseif abs(mean(M2region3day6(i,find(M2region3day6(i,1:4)<0))))<abs(mean(M2region3day6(i,find(M2region3day6(i,1:4)>0))))
            M2region3day6(i,6)=1;
        end
    end
end
M2region3day6_wrong_number=sum(M2region3day6(:,6)==-1);
M2region3day6_correct_number=sum(M2region3day6(:,6)==1);

M2region3day6_recordingnum=length(s);

 m1_region3_correct=[M2region3day6_correct_number/length(s)];
 m1_region3_wrong=[M2region3day6_wrong_number/length(s)];
 
std_m1_region3=std([M2region3day6_correct_number/(M2region3day6_wrong_number+M2region3day6_correct_number),M2region3day6_correct_number/(M2region3day6_correct_number+M2region3day6_wrong_number),M2region3day6_correct_number/(M2region3day6_wrong_number+M2region3day6_correct_number),M2region3day6_correct_number/(M2region3day6_wrong_number+M2region3day6_correct_number)]);
 pie([m1_region3_correct,m1_region3_wrong]);
 cm=[0.6 0.8 0.7;0.9 0.5 0.4];
 colormap(cm);

markers = 'G:\0507-0513\20220512\proportions_of_cells_encoding_current_trials_outcome_20220512.mat';
save(markers,'M2region3stage1day6diff_ratio_deltaF');
save(markers,'M2region3stage1day6index','-append');
save(markers,'M2region3stage1day6_mean_ratio_deltaF_correctintegration','-append');
save(markers,'M2region3stage1day6_mean_ratio_deltaF_wrongintegration','-append');

save(markers,'M2region3stage2day6diff_ratio_deltaF','-append');
save(markers,'M2region3stage2day6index','-append');
save(markers,'M2region3stage2day6_mean_ratio_deltaF_correctintegration','-append');
save(markers,'M2region3stage2day6_mean_ratio_deltaF_wrongintegration','-append');

save(markers,'M2region3stage3day6diff_ratio_deltaF','-append');
save(markers,'M2region3stage3day6index','-append');
save(markers,'M2region3stage3day6_mean_ratio_deltaF_correctintegration','-append');
save(markers,'M2region3stage3day6_mean_ratio_deltaF_wrongintegration','-append');

save(markers,'M2region3stage4day6diff_ratio_deltaF','-append');
save(markers,'M2region3stage4day6index','-append');
save(markers,'M2region3stage4day6_mean_ratio_deltaF_correctintegration','-append');
save(markers,'M2region3stage4day6_mean_ratio_deltaF_wrongintegration','-append');
save(markers,'M2region3day6','-append');
save(markers,'M2region3day6_wrong_number','-append');
save(markers,'M2region3day6_correct_number','-append');
save(markers,'M2region3day6_recordingnum','-append');

