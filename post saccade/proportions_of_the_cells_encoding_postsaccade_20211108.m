load('L:\Monkey1\region1\20211108\stim_markers_learning_currenttrialcorrectwrongcon1con2_20211108.mat');
load('L:\Monkey1\region1\20211108\stim_markers_learning_currenttrialcorrectwrongcon1con2_saccade_20211108.mat');

    con_ind_saccadecorrect1=find(all_conditions_target==1);
 a1=frame_num_all_target_align(con_ind_saccadecorrect1);
    con_ind_saccadewrong2=find(all_conditions_target_wrong==2);
  a2=frame_num_all_target_align_wrong(con_ind_saccadewrong2);
    
    con_ind_saccadecorrect2=find(all_conditions_target==2);
    a3=frame_num_all_target_align(con_ind_saccadecorrect2);
    con_ind_saccadewrong1=find(all_conditions_target_wrong==1);
    a4=frame_num_all_target_align_wrong(con_ind_saccadewrong1);

 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];

F_raw=readNPY('L:\Monkey1\region1\20211108\F.npy');
%load('D:\ZY_lab\Monkey\M180519\20211126\new\s1121.mat');
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
load('L:\Monkey1\region1\20211108\f_filter_1108.mat');
s=find(iscell(:,1)==1);
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
F_cell_s=F(s(:),:);
cell_id=[1:size(F_cell_s,1)];

prev_t=15;
after_t=20;
a5=frame_num_all;


a6=[a1 a2];%left
a7=[a3 a4];%right

for cell_num = 1:length(cell_id)
        left.(sprintf('cell_%d',s(cell_num)))=get_act_raw_trace(cell_num,a6,F_cell_s, prev_t, after_t);
       cue.(sprintf('cell_%d',s(cell_num)))=get_act_raw_trace(cell_num,a5,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d',s(cell_num)))=mean(get_act_raw_trace(cell_num,a5,F_cell_s, 11, 0),2);
         ratio_deltaFleft.(sprintf('cell_%d',s(cell_num)))=(left.(sprintf('cell_%d',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d',s(cell_num)))));
        seleft.(sprintf('cell_%d',s(cell_num)))=(std(ratio_deltaFleft.(sprintf('cell_%d',s(cell_num))),0,1))./(sqrt(length(ratio_deltaFleft.(sprintf('cell_%d',s(cell_num))))));
           
        right.(sprintf('cell_%d',s(cell_num)))=get_act_raw_trace(cell_num,a7,F_cell_s, prev_t, after_t);
        ratio_deltaFright.(sprintf('cell_%d',s(cell_num)))=(right.(sprintf('cell_%d',s(cell_num)))-mean(mean_cue.(sprintf('cell_%d',s(cell_num)))))./(mean(mean_cue.(sprintf('cell_%d',s(cell_num)))));
        seright.(sprintf('cell_%d',s(cell_num)))=(std(ratio_deltaFright.(sprintf('cell_%d',s(cell_num))),0,1))./(sqrt(length(ratio_deltaFright.(sprintf('cell_%d',s(cell_num)))))); 
 
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%only one stage
for cell_num=1:length(s)
M1region1stage1day1mean_ratio_deltaFleft.(sprintf('cell_%d',s(cell_num)))=mean(ratio_deltaFleft.(sprintf('cell_%d',s(cell_num)))(:,18:21),2);
M1region1stage1day1mean_ratio_deltaFright.(sprintf('cell_%d',s(cell_num)))=mean(ratio_deltaFright.(sprintf('cell_%d',s(cell_num)))(:,18:21),2);
end


M1region1stage1day1diff_ratio_deltaF=[];
for cell_num=1:length(s)
     if isnan(M1region1stage1day1mean_ratio_deltaFleft.(sprintf('cell_%d',s(cell_num))))
        M1region1stage1day1verify.(sprintf('cell_%d',s(cell_num)))=1;
        M1region1stage1day1diff_ratio_deltaF(cell_num,:)=[s(cell_num),1];
     else
p=ranksum([M1region1stage1day1mean_ratio_deltaFleft.(sprintf('cell_%d',s(cell_num)))], [M1region1stage1day1mean_ratio_deltaFright.(sprintf('cell_%d',s(cell_num)))],'alpha',0.001);
M1region1stage1day1verify.(sprintf('cell_%d',s(cell_num)))=p;
M1region1stage1day1diff_ratio_deltaF(cell_num,:)=[s(cell_num),p]; 
M1region1stage1day1index=M1region1stage1day1diff_ratio_deltaF(find(M1region1stage1day1diff_ratio_deltaF(:,2)<0.001),1);
end

end




M1_region1_day1_postsaccade=M1region1stage1day1index;
M1_region1_day1_no_postsaccade=setdiff(s(:,1),M1_region1_day1_postsaccade(:,1));


for cell_num=1:length(M1_region1_day1_postsaccade)
    M1region1stage1day1_difference.(sprintf('cell_%d',s(cell_num)))=mean(M1region1stage1day1mean_ratio_deltaFleft.(sprintf('cell_%d',M1_region1_day1_postsaccade(cell_num))))-mean(M1region1stage1day1mean_ratio_deltaFright.(sprintf('cell_%d',M1_region1_day1_postsaccade(cell_num))));
    M1region1stage1day1_difference_struct=cell2mat(struct2cell(M1region1stage1day1_difference));
end

M1region1day1=[M1region1stage1day1_difference_struct M1_region1_day1_postsaccade];
for i=1:length(M1region1day1)
    
    if M1region1day1(i,1)<0
        M1region1day1(i,3)=-1;
    else
        M1region1day1(i,3)=1;
    end
end



M1region1day1_right_number=sum(M1region1day1(:,3)==-1);
M1region1day1_left_number=sum(M1region1day1(:,3)==1);

M1region1day1_recordingnum=length(s);


m1_region1_left=[M1region1day1_left_number/length(s)];
m1_region1_right=[M1region1day1_right_number/length(s)];

% std_m1_region1=std([M1region1day1_correct_number/(M1region1day1_wrong_number+M1region1day1_correct_number),M1region1day1_correct_number/(M1region1day1_correct_number+M1region1day1_wrong_number),M1region1day1_correct_number/(M1region1day1_wrong_number+M1region1day1_correct_number),M1region1day4_correct_number/(M1region1day4_wrong_number+M1region1day4_correct_number)]);
pie([m1_region1_left,m1_region1_right]);
cm=[0.6 0.8 0.7;0.9 0.5 0.4];
colormap(cm);



markers = 'L:\Monkey1\region1\20211108\proportions_of_cells_encoding_postsaccade_20211108.mat';
save(markers,'M1region1stage1day1diff_ratio_deltaF');
save(markers,'M1region1stage1day1index','-append');
save(markers,'M1region1stage1day1mean_ratio_deltaFleft','-append');
save(markers,'M1region1stage1day1mean_ratio_deltaFright','-append');


save(markers,'M1region1day1','-append');
save(markers,'M1region1day1_right_number','-append');
save(markers,'M1region1day1_left_number','-append');

save(markers,'M1region1day1_recordingnum','-append');

save(markers,'M1_region1_day1_no_postsaccade','-append');
save(markers,'M1_region1_day1_postsaccade','-append');
