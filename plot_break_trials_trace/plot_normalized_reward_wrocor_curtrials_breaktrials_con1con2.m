load('L:\Monkey1\region1\20211109\stim_markers_learning_aligned_targetoff_add_nofixationbreak_20211109.mat');
load('L:\Monkey1\region1\20211109\proportions_of_cells_encoding_postsaccade_20211109.mat');

%% correct
for con=1:2
    con_ind=find(all_conditions_targetoff==con);
    trial_targetoff_align_frame_num.(sprintf('con_%d',con))=frame_num_all_targetoff(con_ind);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像

prev_t=37;
after_t=30;


load('L:\Monkey1\region1\20211109\f_filter_1109.mat');
F_raw=readNPY('L:\Monkey1\region1\20211109\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
% F_cell_s=F(M2_region1_day4_no_postsaccade(:),:);
iscell=readNPY('L:\Monkey1\region1\20211109\iscell.npy');
s=find(iscell(:,1)==1);
s1109=s;
 F_cell_s=F(s1109(:),:);

cell_id=[1:size(F_cell_s,1)];
a1=trial_targetoff_align_frame_num.(sprintf('con_1'));
a2=trial_targetoff_align_frame_num.(sprintf('con_2'));
a3=frame_num_all;

for cell_num = 1:length(cell_id)
        targetoff.(sprintf('cell_%d_con_1',cell_num))=get_act_raw_trace(cell_num,a1,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF.(sprintf('cell_%d_con_1',cell_num))=(targetoff.(sprintf('cell_%d_con_1',cell_num))-mean(mean_cue.(sprintf('cell_%d_cons',cell_num))))./(mean(mean_cue.(sprintf('cell_%d_cons',cell_num))));
        se.(sprintf('cell_%d_con_1',cell_num))=(std(ratio_deltaF.(sprintf('cell_%d_con_1',cell_num)),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_1',cell_num)))));
        
        targetoff.(sprintf('cell_%d_con_2',cell_num))=get_act_raw_trace(cell_num,a2,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
       ratio_deltaF.(sprintf('cell_%d_con_2',cell_num))=(targetoff.(sprintf('cell_%d_con_2',cell_num))-mean(mean_cue.(sprintf('cell_%d_cons',cell_num))))./(mean(mean_cue.(sprintf('cell_%d_cons',cell_num))));
        se.(sprintf('cell_%d_con_2',cell_num))=(std(ratio_deltaF.(sprintf('cell_%d_con_2',cell_num)),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_2',cell_num)))));
end
%% wrong
for con=1:2
    con_ind_wrong=find(all_conditions_targetoff_wrong==con);
    trial_targetoff_align_frame_num_wrong.(sprintf('con_%d',con))=frame_num_all_targetoff_wrong(con_ind_wrong);
   
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像
a1_wrong=trial_targetoff_align_frame_num_wrong.(sprintf('con_1'));
a2_wrong=trial_targetoff_align_frame_num_wrong.(sprintf('con_2'));

for cell_num = 1:length(cell_id)
        
        targetoff_wrong.(sprintf('cell_%d_con_1',cell_num))=get_act_raw_trace(cell_num,a1_wrong,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s,11, 0);
        mean_cue.(sprintf('cell_%d',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s,11, 0),2);
       ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num))=(targetoff_wrong.(sprintf('cell_%d_con_1',cell_num))-mean(mean_cue.(sprintf('cell_%d',cell_num))))./(mean(mean_cue.(sprintf('cell_%d',cell_num))));
        se_wrong.(sprintf('cell_%d_con_1',cell_num))=(std(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num)),0,1))./(sqrt(length(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num)))));
        
        targetoff_wrong.(sprintf('cell_%d_con_2',cell_num))=get_act_raw_trace(cell_num,a2_wrong,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num))=(targetoff_wrong.(sprintf('cell_%d_con_2',cell_num))-mean(mean_cue.(sprintf('cell_%d',cell_num))))./(mean(mean_cue.(sprintf('cell_%d',cell_num))));
        se_wrong.(sprintf('cell_%d_con_2',cell_num))=(std(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num)),0,1))./(sqrt(length(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num)))));
end
 %% break trials
for con=1:2
    con_ind_break=find(all_conditions_nofixbreak==con);
    trial_break_frame_num.(sprintf('con_%d',con))=frame_num_nofixbreak(con_ind_break);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像
a4=trial_break_frame_num.(sprintf('con_1'));
a5=trial_break_frame_num.(sprintf('con_2'));
  indx_rand_a4=randi(length(a4),1,190);
 rand_a4=a4(indx_rand_a4);
 new_a4=[a4 rand_a4];

  indx_rand_a5=randi(length(a5),1,190);
 rand_a5=a5(indx_rand_a5);
 new_a5=[a5 rand_a5];
for cell_num = 1:length(cell_id)
        breaktrials.(sprintf('cell_%d_con_1',cell_num))=get_act_raw_trace(cell_num,new_a4,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF_break.(sprintf('cell_%d_con_1',cell_num))=(breaktrials.(sprintf('cell_%d_con_1',cell_num))-mean(mean_cue.(sprintf('cell_%d_cons',cell_num))))./(mean(mean_cue.(sprintf('cell_%d_cons',cell_num))));
        se_break.(sprintf('cell_%d_con_1',cell_num))=(std(ratio_deltaF_break.(sprintf('cell_%d_con_1',cell_num)),0,1))./(sqrt(length(ratio_deltaF_break.(sprintf('cell_%d_con_1',cell_num)))));
        
        breaktrials.(sprintf('cell_%d_con_2',cell_num))=get_act_raw_trace(cell_num,new_a5,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
       ratio_deltaF_break.(sprintf('cell_%d_con_2',cell_num))=(breaktrials.(sprintf('cell_%d_con_2',cell_num))-mean(mean_cue.(sprintf('cell_%d_cons',cell_num))))./(mean(mean_cue.(sprintf('cell_%d_cons',cell_num))));
        se_break.(sprintf('cell_%d_con_2',cell_num))=(std(ratio_deltaF_break.(sprintf('cell_%d_con_2',cell_num)),0,1))./(sqrt(length(ratio_deltaF_break.(sprintf('cell_%d_con_2',cell_num)))));
end
  
%% 画图并储存
mkdir D:\ 20211109_normalizedratio_targetoff_current_corwrocon1con2_nofixbreaktrials_nosac;
for cell_num = 1:length(cell_id)
    figure(1)
    figure('visible','off')
    shadedErrorBar([1:50],mean(ratio_deltaF.(sprintf('cell_%d_con_1',cell_num))),se.(sprintf('cell_%d_con_1',cell_num)),'lineProps', {'-b','LineWidth',1,'LineStyle','-'});
    
    shadedErrorBar([1:50],mean(ratio_deltaF.(sprintf('cell_%d_con_2',cell_num))),se.(sprintf('cell_%d_con_2',cell_num)),'lineProps',{'-b','LineWidth',1,'LineStyle',':'});
    
    shadedErrorBar([1:50],mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num))),se_wrong.(sprintf('cell_%d_con_1',cell_num)),'lineProps',{'-r','LineWidth',1,'LineStyle','-'});
    
    shadedErrorBar([1:50],mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num))),se_wrong.(sprintf('cell_%d_con_2',cell_num)),'lineProps',{'-r','LineWidth',1,'LineStyle',':'});
    
    shadedErrorBar([1:50],mean(ratio_deltaF_break.(sprintf('cell_%d_con_1',cell_num))),se_break.(sprintf('cell_%d_con_1',cell_num)),'lineProps',{'-g','LineWidth',1,'LineStyle','-'});
    
    shadedErrorBar([1:50],mean(ratio_deltaF_break.(sprintf('cell_%d_con_2',cell_num))),se_break.(sprintf('cell_%d_con_2',cell_num)),'lineProps',{'-g','LineWidth',1,'LineStyle',':'});
    xline(20);
    legend('con1correct','con2correct','con1wrong','con2wrong','con1break','con2break');
    legend('boxoff');
    box off;
    hold off;
    saveas(gcf,['D:\20211109_normalizedratio_targetoff_current_corwrocon1con2_nofixbreaktrials_nosac\',['cell',num2str(cell_num),'.png']]);
    close all
end

 figure(1)

shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF.(sprintf('cell_%d_con_1',169))),se.(sprintf('cell_%d_con_1',169)),'lineProps', {'-b','LineWidth',1,'LineStyle','-'});
    
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF.(sprintf('cell_%d_con_2',169))),se.(sprintf('cell_%d_con_2',169)),'lineProps',{'-b','LineWidth',1,'LineStyle',':'});
    
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',169))),se_wrong.(sprintf('cell_%d_con_1',169)),'lineProps',{'-r','LineWidth',1,'LineStyle','-'});
    
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',169))),se_wrong.(sprintf('cell_%d_con_2',169)),'lineProps',{'-r','LineWidth',1,'LineStyle',':'});
    
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF_break.(sprintf('cell_%d_con_1',169))),se_break.(sprintf('cell_%d_con_1',169)),'lineProps',{'-g','LineWidth',1,'LineStyle','-'});
    
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF_break.(sprintf('cell_%d_con_2',169))),se_break.(sprintf('cell_%d_con_2',169)),'lineProps',{'-g','LineWidth',1,'LineStyle',':'});
    xline(0);
    legend('con1correct','con2correct','con1wrong','con2wrong','con1break','con2break');
    legend('boxoff');
ylim([-0.7 1.5]);











  
 



