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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




M1region1day1diff=[];
for cell_num=1:length(s)
    
    if isnan(ratio_deltaFleft.(sprintf('cell_%d',s(cell_num))))
        for j=1:36
            M1region1day1diff(cell_num,j)=1;
        end
    else
        for j=1:36
            p=ranksum([ratio_deltaFleft.(sprintf('cell_%d',s(cell_num)))(:,j)], [ratio_deltaFright.(sprintf('cell_%d',s(cell_num)))(:,j)],'alpha',0.001);
            
            M1region1day1diff(cell_num,j)=p;
            
        end
        
    end
end



M1region1stage1day1index=M1region1day1diff(find(M1region1day1diff(:,1)<0.001),1);


for cell_num=1:length(M1region1day1diff)
    aa(cell_num,1)={find(M1region1day1diff(cell_num,16:end)<0.0025,1)};
    if  isempty(cell2mat(aa(cell_num,1)))
        M1region1day1_index(cell_num,1)=NaN;
   else
       M1region1day1_index(cell_num,1) =find(M1region1day1diff(cell_num,16:end)<0.0025,1);
    end
end


M1region1day1_index_new=(M1region1day1_index(find(~isnan(M1region1day1_index)))+15)-16;
save('L:\毕业论文\20220307预答辩\post_saccade\latency_time\M1region1\20211108_index.mat','M1region1day1_index_new','M1region1day1_index');




