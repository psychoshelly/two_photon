load('L:\Monkey1\region1\20211110\stim_markers_learning_currenttrialcorrectwrongcon1con2_saccade_20211110.mat');
load('L:\Monkey1\region1\20211110\stim_markers_learning_currenttrialcorrectwrongcon1con2_20211110.mat');

    con_ind_saccadecorrect1=find(all_conditions_target==1);
 a1=frame_num_all_target_align(con_ind_saccadecorrect1);
    con_ind_saccadewrong2=find(all_conditions_target_wrong==2);
  a2=frame_num_all_target_align_wrong(con_ind_saccadewrong2);
    
    con_ind_saccadecorrect2=find(all_conditions_target==2);
    a3=frame_num_all_target_align(con_ind_saccadecorrect2);
    con_ind_saccadewrong1=find(all_conditions_target_wrong==1);
    a4=frame_num_all_target_align_wrong(con_ind_saccadewrong1);
    
    
    
F_raw=readNPY('L:\Monkey1\region1\20211110\F.npy');
load('L:\Monkey1\region1\20211110\f_filter_1110.mat');

new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\Monkey1\region1\20211110\iscell.npy');
s=find(iscell(:,1)==1);
s1110=s;
 F_cell_s=F(s1110(:),:);
cell_id=[1:size(F_cell_s,1)];
    

 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];

prev_t=15;
after_t=20;
a5=frame_num_all;





a6=[a1 a2];%left
a7=[a3 a4];%right

for cell_num = 1:length(cell_id)
        left.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a6,F_cell_s, prev_t, after_t);
       cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a5,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d',cell_num))=mean(get_act_raw_trace(cell_num,a5,F_cell_s, 11, 0),2);
         ratio_deltaFleft.(sprintf('cell_%d',cell_num))=(left.(sprintf('cell_%d',cell_num))-mean(mean_cue.(sprintf('cell_%d',cell_num))))./(mean(mean_cue.(sprintf('cell_%d',cell_num))));
        seleft.(sprintf('cell_%d',cell_num))=(std(ratio_deltaFleft.(sprintf('cell_%d',cell_num)),0,1))./(sqrt(length(ratio_deltaFleft.(sprintf('cell_%d',cell_num)))));
           
        right.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a7,F_cell_s, prev_t, after_t);
        ratio_deltaFright.(sprintf('cell_%d',cell_num))=(right.(sprintf('cell_%d',cell_num))-mean(mean_cue.(sprintf('cell_%d',cell_num))))./(mean(mean_cue.(sprintf('cell_%d',cell_num))));
        seright.(sprintf('cell_%d',cell_num))=(std(ratio_deltaFright.(sprintf('cell_%d',cell_num)),0,1))./(sqrt(length(ratio_deltaFright.(sprintf('cell_%d',cell_num))))); 
 
end
mkdir D:\20211110_saccade;
for cell_num = 1:length(cell_id)
    shadedErrorBar(([1:36]-16)/7.4,mean(ratio_deltaFleft.(sprintf('cell_%d',cell_num))),seleft.(sprintf('cell_%d',cell_num)),'lineProps', {'-b','LineWidth',1,'LineStyle','-'});
    hold on
    shadedErrorBar(([1:36]-16)/7.4,mean(ratio_deltaFright.(sprintf('cell_%d',cell_num))),seright.(sprintf('cell_%d',cell_num)),'lineProps',{'-r','LineWidth',1,'LineStyle','-'});
    hold on
    xline(0);% cue
    legend('left','right');
    legend('boxoff');
    box off;
    hold off;
    saveas(gcf,['D:\20211110_saccade\',['cell',num2str(cell_num),'.png']]);
    close all;
end

figure
shadedErrorBar(([1:36]-16)/7.4,mean(ratio_deltaFleft.(sprintf('cell_%d',247))),seleft.(sprintf('cell_%d',247)),'lineProps', {'-b','LineWidth',1,'LineStyle','-'});
hold on
shadedErrorBar(([1:36]-16)/7.4,mean(ratio_deltaFright.(sprintf('cell_%d',247))),seright.(sprintf('cell_%d',247)),'lineProps',{'-r','LineWidth',1,'LineStyle','-'});
hold on

xline(0);% cue
ylim([-0.5 1.0])

legend('left','right');
legend('boxoff');
box off;
hold off;







