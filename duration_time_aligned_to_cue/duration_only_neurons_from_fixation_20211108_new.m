load('L:\Monkey1\region1\20211108\stim_markers_cue_previouscorrectwrongcurrenttrialcon1con2_20211108.mat');
for con=1:2
    con_ind_previouscorrect=find(all_conditions_previous_cue_correct==con);
    trial_previouscuecorrect_onset_frame_num.(sprintf('con_%d',con))=frame_num_all_previous_cue_correct(con_ind_previouscorrect);
    con_ind_previouswrong=find(all_conditions_previous_cue_wrong==con);
    trial_previouscuewrong_onset_frame_num.(sprintf('con_%d',con))=frame_num_all_previous_cue_wrong(con_ind_previouswrong);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
 

F_raw=readNPY('L:\Monkey1\region1\20211108\F.npy');
load('L:\Monkey1\region1\20211108\f_filter_1108.mat');

new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s=find(iscell(:,1)==1);
s1108=s;
 F_cell_s=F(s1108(:),:);
cell_id=[1:size(F_cell_s,1)];


prev_t=20;
after_t=30;
a5=frame_num_all;
a1=trial_previouscuecorrect_onset_frame_num.(sprintf('con_1'));
a2=trial_previouscuecorrect_onset_frame_num.(sprintf('con_2'));
a3=trial_previouscuewrong_onset_frame_num.(sprintf('con_1'));
a4=trial_previouscuewrong_onset_frame_num.(sprintf('con_2'));

for cell_num = 1:length(s)
        correcttarget.(sprintf('cell_%d_con_1',s(cell_num)))=get_act_raw_trace(cell_num,a1,F_cell_s, prev_t, after_t);
       cue.(sprintf('cell_%d',s(cell_num)))=get_act_raw_trace(cell_num,a5,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',s(cell_num)))=mean(get_act_raw_trace(cell_num,a5,F_cell_s, 11, 0),2);
         ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num)))=(correcttarget.(sprintf('cell_%d_con_1',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))));
        se.(sprintf('cell_%d_con_1',s(cell_num)))=(std(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num))),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_1',s(cell_num))))));
        
         correcttarget.(sprintf('cell_%d_con_2',s(cell_num)))=get_act_raw_trace(cell_num,a2,F_cell_s, prev_t, after_t);
        ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num)))=(correcttarget.(sprintf('cell_%d_con_2',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))));
        se.(sprintf('cell_%d_con_2',s(cell_num)))=(std(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num))),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_2',s(cell_num))))));
        
        wrongtarget.(sprintf('cell_%d_con_1',s(cell_num)))=get_act_raw_trace(cell_num,a3,F_cell_s, prev_t, after_t);
        ratio_deltaFwrong.(sprintf('cell_%d_con_1',s(cell_num)))=(wrongtarget.(sprintf('cell_%d_con_1',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))));
        se_wrong.(sprintf('cell_%d_con_1',s(cell_num)))=(std(ratio_deltaFwrong.(sprintf('cell_%d_con_1',s(cell_num))),0,1))./(sqrt(length(ratio_deltaFwrong.(sprintf('cell_%d_con_1',s(cell_num))))));
        
        wrongtarget.(sprintf('cell_%d_con_2',s(cell_num)))=get_act_raw_trace(cell_num,a4,F_cell_s, prev_t, after_t);
     ratio_deltaFwrong.(sprintf('cell_%d_con_2',s(cell_num)))=(wrongtarget.(sprintf('cell_%d_con_2',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d_cons',s(cell_num)))));
        se_wrong.(sprintf('cell_%d_con_2',s(cell_num)))=(std(ratio_deltaFwrong.(sprintf('cell_%d_con_2',s(cell_num))),0,1))./(sqrt(length(ratio_deltaFwrong.(sprintf('cell_%d_con_2',s(cell_num))))));
end


load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_previous_trials_outcome_20211108_newmethod.mat');

M1region1day1_mean_ratio_deltaF=[];
M1region1day1_outcome=[];
M1region1day1_saccade=[];
M1region1day1_index=[];
for cell_num=1:length(M1region1day1)
    for j=1:51
        M1region1day1_mean_ratio_deltaF=[[ratio_deltaF.(sprintf('cell_%d_con_1',M1region1day1(cell_num,7)))(:,j)];[ratio_deltaF.(sprintf('cell_%d_con_2',M1region1day1(cell_num,7)))(:,j)];[ratio_deltaFwrong.(sprintf('cell_%d_con_2',M1region1day1(cell_num,7)))(:,j)];ratio_deltaFwrong.(sprintf('cell_%d_con_1',M1region1day1(cell_num,7)))(:,j)];
        M1region1day1_outcome=[repmat(1,length([ratio_deltaF.(sprintf('cell_%d_con_1',M1region1day1(cell_num,7)))(:,j)]),1);repmat(1,length([ratio_deltaF.(sprintf('cell_%d_con_2',M1region1day1(cell_num,7)))(:,j)]),1);repmat(2,length([ratio_deltaFwrong.(sprintf('cell_%d_con_2',M1region1day1(cell_num,7)))(:,j)]),1);repmat(2,length([ratio_deltaFwrong.(sprintf('cell_%d_con_1',M1region1day1(cell_num,7)))(:,j)]),1)];
        M1region1day1_saccade=[repmat(3,length([ratio_deltaF.(sprintf('cell_%d_con_1',M1region1day1(cell_num,7)))(:,j)]),1);repmat(4,length([ratio_deltaF.(sprintf('cell_%d_con_2',M1region1day1(cell_num,7)))(:,j)]),1);repmat(3,length([ratio_deltaFwrong.(sprintf('cell_%d_con_2',M1region1day1(cell_num,7)))(:,j)]),1);repmat(4,length([ratio_deltaFwrong.(sprintf('cell_%d_con_1',M1region1day1(cell_num,7)))(:,j)]),1)];
        Data  = [M1region1day1_mean_ratio_deltaF,M1region1day1_outcome,M1region1day1_saccade];
        out   = SRH_test(Data,'outcome','saccade');
        M1region1day1diff_ratio_deltaF(cell_num,j)={[table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]};
        M1region1day1diff(cell_num,j)=[table2array(out(1,5))];
    end
end

for cell_num=1:length(M1region1day1)
    aa(cell_num,1)={find(M1region1day1diff(cell_num,9:32)<0.0017,1)};
    if  isempty(cell2mat(aa(cell_num,1)))
        M1region1day1_index(cell_num,1)=NaN;
   else
       M1region1day1_index(cell_num,1) =find(M1region1day1diff(cell_num,9:32)<0.0017,1);
    end
end


M1region1day1_index_new=(M1region1day1_index(find(~isnan(M1region1day1_index)))+20)-21-12;
save('L:\毕业论文\20220307预答辩\previous_outcome\latency_time_duration\for_cells_only_encoding_previousoutcome\M1region1\20211108_index_new.mat','M1region1day1_index_new','M1region1day1_index');

h=histogram(M1region1day1_index_new);
h.BinEdges=[-0.5:3];
h.NumBins = 10;
