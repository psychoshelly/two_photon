load('L:\Monkey1\region1\20211108\stim_markers_learning_aligned_to_target_off_20211108.mat');
%% correct
for con=1:2
    con_ind=find(all_conditions_targetoff==con);
    trial_targetoff_align_frame_num.(sprintf('con_%d',con))=frame_num_all_targetoff(con_ind);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像

prev_t=37;
after_t=15;
load('L:\Monkey1\region1\20211108\f_filter_1108.mat');
%load('D:\ZY_lab\Monkey\M181108\subregion1_11_18_11_19_11_22\F_divide.mat');
%load('D:\ZY_lab\Monkey\M181108\subregion1_11_18_11_19_11_22\20211126\s1121_shared.mat');
%s=s1121_shared;
%F_raw=F_divide.day1;
F_raw=readNPY('L:\Monkey1\region1\20211108\F.npy');
%load('D:\ZY_lab\Monkey\M181108\20211126\new\s1121.mat');
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
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%no stage
load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_current_trials_outcome_20211108.mat');

M1region1day1_mean_ratio_deltaF=[];
M1region1day1_outcome=[];
M1region1day1_saccade=[];
M1region1day1_index=[];
for cell_num=1:length(M1region1day1)
    for j=1:53
        M1region1day1_mean_ratio_deltaF=[[ratio_deltaF.(sprintf('cell_%d_con_1',M1region1day1(cell_num,5)))(:,j)];[ratio_deltaF.(sprintf('cell_%d_con_2',M1region1day1(cell_num,5)))(:,j)];[ratio_deltaF_wrong.(sprintf('cell_%d_con_2',M1region1day1(cell_num,5)))(:,j)];ratio_deltaF_wrong.(sprintf('cell_%d_con_1',M1region1day1(cell_num,5)))(:,j)];
        M1region1day1_outcome=[repmat(1,length([ratio_deltaF.(sprintf('cell_%d_con_1',M1region1day1(cell_num,5)))(:,j)]),1);repmat(1,length([ratio_deltaF.(sprintf('cell_%d_con_2',M1region1day1(cell_num,5)))(:,j)]),1);repmat(2,length([ratio_deltaF_wrong.(sprintf('cell_%d_con_2',M1region1day1(cell_num,5)))(:,j)]),1);repmat(2,length([ratio_deltaF_wrong.(sprintf('cell_%d_con_1',M1region1day1(cell_num,5)))(:,j)]),1)];
        M1region1day1_saccade=[repmat(3,length([ratio_deltaF.(sprintf('cell_%d_con_1',M1region1day1(cell_num,5)))(:,j)]),1);repmat(4,length([ratio_deltaF.(sprintf('cell_%d_con_2',M1region1day1(cell_num,5)))(:,j)]),1);repmat(3,length([ratio_deltaF_wrong.(sprintf('cell_%d_con_2',M1region1day1(cell_num,5)))(:,j)]),1);repmat(4,length([ratio_deltaF_wrong.(sprintf('cell_%d_con_1',M1region1day1(cell_num,5)))(:,j)]),1)];
        Data  = [M1region1day1_mean_ratio_deltaF,M1region1day1_outcome,M1region1day1_saccade];
        out   = SRH_test(Data,'outcome','saccade');
        M1region1day1diff_ratio_deltaF(cell_num,j)={[table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]};
        M1region1day1diff(cell_num,j)=[table2array(out(1,5))];
    end
end

for cell_num=1:length(M1region1day1)
    aa(cell_num,1)={find(M1region1day1diff(cell_num,38:end)<0.0025,1)};
    if  isempty(cell2mat(aa(cell_num,1)))
        M1region1day1_index(cell_num,1)=NaN;
   else
       M1region1day1_index(cell_num,1) =find(M1region1day1diff(cell_num,35:end)<0.0025,1);
    end
end


M1region1day1_index_new=(M1region1day1_index(find(~isnan(M1region1day1_index)))+37)-38-3;
save('L:\毕业论文\20220307预答辩\latency_time_duration_distribution\latency_time_duration\method_for_time_earlier_than_aligned_to_targetoff\for_only_cells_encoding_the_currenttrialoutcome\M1region1\20211108_index_new.mat','M1region1day1_index_new','M1region1day1_index');


% h=histogram(M1region1day1_index_new);
% h.BinEdges=[-0.5:3];
% h.NumBins = 10;