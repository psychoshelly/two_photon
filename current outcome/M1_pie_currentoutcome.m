load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_current_trials_outcome_20211108.mat');
load('L:\Monkey1\region1\20211109\proportions_of_cells_encoding_current_trials_outcome_20211109.mat');
load('L:\Monkey1\region1\20211110\proportions_of_cells_encoding_current_trials_outcome_20211110.mat');
load('L:\Monkey1\region1\20211111\proportions_of_cells_encoding_current_trials_outcome_20211111.mat');
load('L:\Monkey1\region1\20211112\proportions_of_cells_encoding_current_trials_outcome_20211112.mat');
load('L:\Monkey1\region1\20211113\proportions_of_cells_encoding_current_trials_outcome_20211113.mat');
load('L:\Monkey1\region1\20211115\proportions_of_cells_encoding_current_trials_outcome_20211115.mat');
load('L:\Monkey1\region1\20211116\proportions_of_cells_encoding_current_trials_outcome_20211116.mat');
load('L:\Monkey1\region1\20211117\proportions_of_cells_encoding_current_trials_outcome_20211117.mat');
load('L:\Monkey1\region1\20211118\proportions_of_cells_encoding_current_trials_outcome_20211118.mat');
load('L:\Monkey1\region1\20211119\proportions_of_cells_encoding_current_trials_outcome_20211119.mat');
load('L:\Monkey1\region1\20211122\proportions_of_cells_encoding_current_trials_outcome_20211122.mat');
load('L:\Monkey1\region2\20211120\proportions_of_cells_encoding_current_trials_outcome_20211120.mat');
load('L:\Monkey1\region2\20211121\proportions_of_cells_encoding_current_trials_outcome_20211121.mat');
load('L:\Monkey1\region2\20211123\proportions_of_cells_encoding_current_trials_outcome_20211123.mat');
load('L:\Monkey1\region2\20211124\proportions_of_cells_encoding_current_trials_outcome_20211124.mat');
load('L:\Monkey1\region3\20211125\proportions_of_cells_encoding_current_trials_outcome_20211125.mat');
load('L:\Monkey1\region3\20211126\proportions_of_cells_encoding_current_trials_outcome_20211126.mat');
load('L:\Monkey1\region3\20211127\proportions_of_cells_encoding_current_trials_outcome_20211127.mat');
load('L:\Monkey1\region4\20211129\proportions_of_cells_encoding_current_trials_outcome_20211129.mat');
load('L:\Monkey1\region4\20211201\proportions_of_cells_encoding_current_trials_outcome_20211201.mat');
load('L:\Monkey1\region4\20211202\proportions_of_cells_encoding_current_trials_outcome_20211202.mat');
load('L:\Monkey1\region5\20211203\proportions_of_cells_encoding_current_trials_outcome_20211203.mat');
load('L:\Monkey1\region5\20211204\proportions_of_cells_encoding_current_trials_outcome_20211204.mat');
load('L:\Monkey1\region6\20211217\proportions_of_cells_encoding_current_trials_outcome_20211217.mat');
load('L:\Monkey1\region6\20211218\proportions_of_cells_encoding_current_trials_outcome_20211218.mat');
load('L:\Monkey1\region6\20211219\proportions_of_cells_encoding_current_trials_outcome_20211219.mat');
load('L:\Monkey1\region6\20211220\proportions_of_cells_encoding_current_trials_outcome_20211220.mat');
load('L:\Monkey1\region6\20211221\proportions_of_cells_encoding_current_trials_outcome_20211221.mat');
load('L:\Monkey1\region6\20211222\proportions_of_cells_encoding_current_trials_outcome_20211222.mat');
load('L:\Monkey1\region6\20211223\proportions_of_cells_encoding_current_trials_outcome_20211223.mat');
load('L:\Monkey1\region6\20211224\proportions_of_cells_encoding_current_trials_outcome_20211224.mat');
load('L:\Monkey1\region6\20211225\proportions_of_cells_encoding_current_trials_outcome_20211225.mat');
load('L:\Monkey1\region6\20211226\proportions_of_cells_encoding_current_trials_outcome_20211226.mat');
load('L:\Monkey1\region7\20220115\proportions_of_cells_encoding_current_trials_outcome_20220115.mat');
load('L:\Monkey1\region7\20220116\proportions_of_cells_encoding_current_trials_outcome_20220116.mat');
load('L:\Monkey1\region7\20220117\proportions_of_cells_encoding_current_trials_outcome_20220117.mat');



M1_region1_day1_4stages=union(union(union(M1region1stage1day1index,M1region1stage2day1index),M1region1stage3day1index),M1region1stage4day1index);
M1_region1_day1_0stage=setdiff(M1region1stage1day1diff_ratio_deltaF(:,1),M1_region1_day1_4stages);

M1_region1_day2_4stages=union(union(union(M1region1stage1day2index,M1region1stage2day2index),M1region1stage3day2index),M1region1stage4day2index);
M1_region1_day2_0stage=setdiff(M1region1stage1day2diff_ratio_deltaF(:,1),M1_region1_day2_4stages);

M1_region1_day3_4stages=union(union(union(M1region1stage1day3index,M1region1stage2day3index),M1region1stage3day3index),M1region1stage4day3index);
M1_region1_day3_0stage=setdiff(M1region1stage1day3diff_ratio_deltaF(:,1),M1_region1_day3_4stages);

M1_region1_day4_4stages=union(union(union(M1region1stage1day4index,M1region1stage2day4index),M1region1stage3day4index),M1region1stage4day4index);
M1_region1_day4_0stage=setdiff(M1region1stage1day4diff_ratio_deltaF(:,1),M1_region1_day4_4stages);

M1_region1_day5_4stages=union(union(union(M1region1stage1day5index,M1region1stage2day5index),M1region1stage3day5index),M1region1stage4day5index);
M1_region1_day5_0stage=setdiff(M1region1stage1day5diff_ratio_deltaF(:,1),M1_region1_day5_4stages);

M1_region1_day6_4stages=union(union(union(M1region1stage1day6index,M1region1stage2day6index),M1region1stage3day6index),M1region1stage4day6index);
M1_region1_day6_0stage=setdiff(M1region1stage1day6diff_ratio_deltaF(:,1),M1_region1_day6_4stages);

M1_region1_day7_4stages=union(union(union(M1region1stage1day7index,M1region1stage2day7index),M1region1stage3day7index),M1region1stage4day7index);
M1_region1_day7_0stage=setdiff(M1region1stage1day7diff_ratio_deltaF(:,1),M1_region1_day7_4stages);

M1_region1_day8_4stages=union(union(union(M1region1stage1day8index,M1region1stage2day8index),M1region1stage3day8index),M1region1stage4day8index);
M1_region1_day8_0stage=setdiff(M1region1stage1day8diff_ratio_deltaF(:,1),M1_region1_day8_4stages);

M1_region1_day9_4stages=union(union(union(M1region1stage1day9index,M1region1stage2day9index),M1region1stage3day9index),M1region1stage4day9index);
M1_region1_day9_0stage=setdiff(M1region1stage1day9diff_ratio_deltaF(:,1),M1_region1_day9_4stages);

M1_region1_day10_4stages=union(union(union(M1region1stage1day10index,M1region1stage2day10index),M1region1stage3day10index),M1region1stage4day10index);
M1_region1_day10_0stage=setdiff(M1region1stage1day10diff_ratio_deltaF(:,1),M1_region1_day10_4stages);

M1_region1_day11_4stages=union(union(union(M1region1stage1day11index,M1region1stage2day11index),M1region1stage3day11index),M1region1stage4day11index);
M1_region1_day11_0stage=setdiff(M1region1stage1day11diff_ratio_deltaF(:,1),M1_region1_day11_4stages);

M1_region1_day12_4stages=union(union(union(M1region1stage1day12index,M1region1stage2day12index),M1region1stage3day12index),M1region1stage4day12index);
M1_region1_day12_0stage=setdiff(M1region1stage1day12diff_ratio_deltaF(:,1),M1_region1_day12_4stages);






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
for i=1:length(M1region1day1)
    
    if sum(M1region1day1(i,1:4)<0)>sum(M1region1day1(i,1:4)>0)
        M1region1day1(i,6)=-1;
    elseif sum(M1region1day1(i,1:4)<0)<sum(M1region1day1(i,1:4)>0)
        M1region1day1(i,6)=1;
    elseif sum(M1region1day1(i,1:4)<0)==sum(M1region1day1(i,1:4)>0)
        if abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)<0))))>abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)>0))))
            M1region1day1(i,6)=-1;
        elseif abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)<0))))<abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)>0))))
            M1region1day1(i,6)=1;
        end
    end
end

M1region1day1_wrong_number=sum(M1region1day1(:,6)==-1);
M1region1day1_correct_number=sum(M1region1day1(:,6)==1);



for cell_num=1:length(M1_region1_day2_4stages)
    M1region1stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))))-mean(M1region1stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))));
    M1region1stage1day2_difference_struct=cell2mat(struct2cell(M1region1stage1day2_difference));
    
    M1region1stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))))-mean(M1region1stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))));
    M1region1stage2day2_difference_struct=cell2mat(struct2cell(M1region1stage2day2_difference));
    
    M1region1stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))))-mean(M1region1stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))));
    M1region1stage3day2_difference_struct=cell2mat(struct2cell(M1region1stage3day2_difference));
    
    M1region1stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))))-mean(M1region1stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))));
    M1region1stage4day2_difference_struct=cell2mat(struct2cell(M1region1stage4day2_difference));
end
M1region1day2=[M1region1stage1day2_difference_struct M1region1stage2day2_difference_struct M1region1stage3day2_difference_struct M1region1stage4day2_difference_struct M1_region1_day2_4stages];
for i=1:length(M1region1day2)
    
    if sum(M1region1day2(i,1:4)<0)>sum(M1region1day2(i,1:4)>0)
        M1region1day2(i,6)=-1;
    elseif sum(M1region1day2(i,1:4)<0)<sum(M1region1day2(i,1:4)>0)
        M1region1day2(i,6)=1;
    elseif sum(M1region1day2(i,1:4)<0)==sum(M1region1day2(i,1:4)>0)
        if abs(mean(M1region1day2(i,find(M1region1day2(i,1:4)<0))))>abs(mean(M1region1day2(i,find(M1region1day2(i,1:4)>0))))
            M1region1day2(i,6)=-1;
        elseif abs(mean(M1region1day2(i,find(M1region1day2(i,1:4)<0))))<abs(mean(M1region1day2(i,find(M1region1day2(i,1:4)>0))))
            M1region1day2(i,6)=1;
        end
    end
end
M1region1day2_wrong_number=sum(M1region1day2(:,6)==-1);
M1region1day2_correct_number=sum(M1region1day2(:,6)==1);


for cell_num=1:length(M1_region1_day3_4stages)
    M1region1stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))))-mean(M1region1stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))));
    M1region1stage1day3_difference_struct=cell2mat(struct2cell(M1region1stage1day3_difference));
    
    M1region1stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))))-mean(M1region1stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))));
    M1region1stage2day3_difference_struct=cell2mat(struct2cell(M1region1stage2day3_difference));
    
    M1region1stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))))-mean(M1region1stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))));
    M1region1stage3day3_difference_struct=cell2mat(struct2cell(M1region1stage3day3_difference));
    
    M1region1stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))))-mean(M1region1stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))));
    M1region1stage4day3_difference_struct=cell2mat(struct2cell(M1region1stage4day3_difference));
end
M1region1day3=[M1region1stage1day3_difference_struct M1region1stage2day3_difference_struct M1region1stage3day3_difference_struct M1region1stage4day3_difference_struct M1_region1_day3_4stages];
for i=1:length(M1region1day3)
    
    if sum(M1region1day3(i,1:4)<0)>sum(M1region1day3(i,1:4)>0)
        M1region1day3(i,6)=-1;
    elseif sum(M1region1day3(i,1:4)<0)<sum(M1region1day3(i,1:4)>0)
        M1region1day3(i,6)=1;
    elseif sum(M1region1day3(i,1:4)<0)==sum(M1region1day3(i,1:4)>0)
        if abs(mean(M1region1day3(i,find(M1region1day3(i,1:4)<0))))>abs(mean(M1region1day3(i,find(M1region1day3(i,1:4)>0))))
            M1region1day3(i,6)=-1;
        elseif abs(mean(M1region1day3(i,find(M1region1day3(i,1:4)<0))))<abs(mean(M1region1day3(i,find(M1region1day3(i,1:4)>0))))
            M1region1day3(i,6)=1;
        end
    end
end
M1region1day3_wrong_number=sum(M1region1day3(:,6)==-1);
M1region1day3_correct_number=sum(M1region1day3(:,6)==1);





for cell_num=1:length(M1_region1_day4_4stages)
    M1region1stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))))-mean(M1region1stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))));
    M1region1stage1day4_difference_struct=cell2mat(struct2cell(M1region1stage1day4_difference));
    
    M1region1stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))))-mean(M1region1stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))));
    M1region1stage2day4_difference_struct=cell2mat(struct2cell(M1region1stage2day4_difference));
    
    M1region1stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))))-mean(M1region1stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))));
    M1region1stage3day4_difference_struct=cell2mat(struct2cell(M1region1stage3day4_difference));
    
    M1region1stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))))-mean(M1region1stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))));
    M1region1stage4day4_difference_struct=cell2mat(struct2cell(M1region1stage4day4_difference));
end
M1region1day4=[M1region1stage1day4_difference_struct M1region1stage2day4_difference_struct M1region1stage3day4_difference_struct M1region1stage4day4_difference_struct M1_region1_day4_4stages];
for i=1:length(M1region1day4)
    
    if sum(M1region1day4(i,1:4)<0)>sum(M1region1day4(i,1:4)>0)
        M1region1day4(i,6)=-1;
    elseif sum(M1region1day4(i,1:4)<0)<sum(M1region1day4(i,1:4)>0)
        M1region1day4(i,6)=1;
    elseif sum(M1region1day4(i,1:4)<0)==sum(M1region1day4(i,1:4)>0)
        if abs(mean(M1region1day4(i,find(M1region1day4(i,1:4)<0))))>abs(mean(M1region1day4(i,find(M1region1day4(i,1:4)>0))))
            M1region1day4(i,6)=-1;
        elseif abs(mean(M1region1day4(i,find(M1region1day4(i,1:4)<0))))<abs(mean(M1region1day4(i,find(M1region1day4(i,1:4)>0))))
            M1region1day4(i,6)=1;
        end
    end
end
M1region1day4_wrong_number=sum(M1region1day4(:,6)==-1);
M1region1day4_correct_number=sum(M1region1day4(:,6)==1);


for cell_num=1:length(M1_region1_day5_4stages)
    M1region1stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))))-mean(M1region1stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))));
    M1region1stage1day5_difference_struct=cell2mat(struct2cell(M1region1stage1day5_difference));
    
    M1region1stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))))-mean(M1region1stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))));
    M1region1stage2day5_difference_struct=cell2mat(struct2cell(M1region1stage2day5_difference));
    
    M1region1stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))))-mean(M1region1stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))));
    M1region1stage3day5_difference_struct=cell2mat(struct2cell(M1region1stage3day5_difference));
    
    M1region1stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))))-mean(M1region1stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))));
    M1region1stage4day5_difference_struct=cell2mat(struct2cell(M1region1stage4day5_difference));
end
M1region1day5=[M1region1stage1day5_difference_struct M1region1stage2day5_difference_struct M1region1stage3day5_difference_struct M1region1stage4day5_difference_struct M1_region1_day5_4stages];
for i=1:length(M1region1day5)
    
    if sum(M1region1day5(i,1:4)<0)>sum(M1region1day5(i,1:4)>0)
        M1region1day5(i,6)=-1;
    elseif sum(M1region1day5(i,1:4)<0)<sum(M1region1day5(i,1:4)>0)
        M1region1day5(i,6)=1;
    elseif sum(M1region1day5(i,1:4)<0)==sum(M1region1day5(i,1:4)>0)
        if abs(mean(M1region1day5(i,find(M1region1day5(i,1:4)<0))))>abs(mean(M1region1day5(i,find(M1region1day5(i,1:4)>0))))
            M1region1day5(i,6)=-1;
        elseif abs(mean(M1region1day5(i,find(M1region1day5(i,1:4)<0))))<abs(mean(M1region1day5(i,find(M1region1day5(i,1:4)>0))))
            M1region1day5(i,6)=1;
        end
    end
end
M1region1day5_wrong_number=sum(M1region1day5(:,6)==-1);
M1region1day5_correct_number=sum(M1region1day5(:,6)==1);


for cell_num=1:length(M1_region1_day6_4stages)
    M1region1stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))))-mean(M1region1stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))));
    M1region1stage1day6_difference_struct=cell2mat(struct2cell(M1region1stage1day6_difference));
    
    M1region1stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))))-mean(M1region1stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))));
    M1region1stage2day6_difference_struct=cell2mat(struct2cell(M1region1stage2day6_difference));
    
    M1region1stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))))-mean(M1region1stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))));
    M1region1stage3day6_difference_struct=cell2mat(struct2cell(M1region1stage3day6_difference));
    
    M1region1stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))))-mean(M1region1stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))));
    M1region1stage4day6_difference_struct=cell2mat(struct2cell(M1region1stage4day6_difference));
end
M1region1day6=[M1region1stage1day6_difference_struct M1region1stage2day6_difference_struct M1region1stage3day6_difference_struct M1region1stage4day6_difference_struct M1_region1_day6_4stages];
for i=1:length(M1region1day6)
    
    if sum(M1region1day6(i,1:4)<0)>sum(M1region1day6(i,1:4)>0)
        M1region1day6(i,6)=-1;
    elseif sum(M1region1day6(i,1:4)<0)<sum(M1region1day6(i,1:4)>0)
        M1region1day6(i,6)=1;
    elseif sum(M1region1day6(i,1:4)<0)==sum(M1region1day6(i,1:4)>0)
        if abs(mean(M1region1day6(i,find(M1region1day6(i,1:4)<0))))>abs(mean(M1region1day6(i,find(M1region1day6(i,1:4)>0))))
            M1region1day6(i,6)=-1;
        elseif abs(mean(M1region1day6(i,find(M1region1day6(i,1:4)<0))))<abs(mean(M1region1day6(i,find(M1region1day6(i,1:4)>0))))
            M1region1day6(i,6)=1;
        end
    end
end
M1region1day6_wrong_number=sum(M1region1day6(:,6)==-1);
M1region1day6_correct_number=sum(M1region1day6(:,6)==1);

for cell_num=1:length(M1_region1_day7_4stages)
    M1region1stage1day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))))-mean(M1region1stage1day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))));
    M1region1stage1day7_difference_struct=cell2mat(struct2cell(M1region1stage1day7_difference));
    
    M1region1stage2day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))))-mean(M1region1stage2day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))));
    M1region1stage2day7_difference_struct=cell2mat(struct2cell(M1region1stage2day7_difference));
    
    M1region1stage3day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))))-mean(M1region1stage3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))));
    M1region1stage3day7_difference_struct=cell2mat(struct2cell(M1region1stage3day7_difference));
    
    M1region1stage4day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))))-mean(M1region1stage4day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))));
    M1region1stage4day7_difference_struct=cell2mat(struct2cell(M1region1stage4day7_difference));
end
M1region1day7=[M1region1stage1day7_difference_struct M1region1stage2day7_difference_struct M1region1stage3day7_difference_struct M1region1stage4day7_difference_struct M1_region1_day7_4stages];
for i=1:length(M1region1day7)
    
    if sum(M1region1day7(i,1:4)<0)>sum(M1region1day7(i,1:4)>0)
        M1region1day7(i,6)=-1;
    elseif sum(M1region1day7(i,1:4)<0)<sum(M1region1day7(i,1:4)>0)
        M1region1day7(i,6)=1;
    elseif sum(M1region1day7(i,1:4)<0)==sum(M1region1day7(i,1:4)>0)
        if abs(mean(M1region1day7(i,find(M1region1day7(i,1:4)<0))))>abs(mean(M1region1day7(i,find(M1region1day7(i,1:4)>0))))
            M1region1day7(i,6)=-1;
        elseif abs(mean(M1region1day7(i,find(M1region1day7(i,1:4)<0))))<abs(mean(M1region1day7(i,find(M1region1day7(i,1:4)>0))))
            M1region1day7(i,6)=1;
        end
    end
end
M1region1day7_wrong_number=sum(M1region1day7(:,6)==-1);
M1region1day7_correct_number=sum(M1region1day7(:,6)==1);



for cell_num=1:length(M1_region1_day8_4stages)
    M1region1stage1day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))))-mean(M1region1stage1day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))));
    M1region1stage1day8_difference_struct=cell2mat(struct2cell(M1region1stage1day8_difference));
    
    M1region1stage2day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))))-mean(M1region1stage2day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))));
    M1region1stage2day8_difference_struct=cell2mat(struct2cell(M1region1stage2day8_difference));
    
    M1region1stage3day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))))-mean(M1region1stage3day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))));
    M1region1stage3day8_difference_struct=cell2mat(struct2cell(M1region1stage3day8_difference));
    
    M1region1stage4day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))))-mean(M1region1stage4day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))));
    M1region1stage4day8_difference_struct=cell2mat(struct2cell(M1region1stage4day8_difference));
end
M1region1day8=[M1region1stage1day8_difference_struct M1region1stage2day8_difference_struct M1region1stage3day8_difference_struct M1region1stage4day8_difference_struct M1_region1_day8_4stages];
for i=1:length(M1region1day8)
    
    if sum(M1region1day8(i,1:4)<0)>sum(M1region1day8(i,1:4)>0)
        M1region1day8(i,6)=-1;
    elseif sum(M1region1day8(i,1:4)<0)<sum(M1region1day8(i,1:4)>0)
        M1region1day8(i,6)=1;
    elseif sum(M1region1day8(i,1:4)<0)==sum(M1region1day8(i,1:4)>0)
        if abs(mean(M1region1day8(i,find(M1region1day8(i,1:4)<0))))>abs(mean(M1region1day8(i,find(M1region1day8(i,1:4)>0))))
            M1region1day8(i,6)=-1;
        elseif abs(mean(M1region1day8(i,find(M1region1day8(i,1:4)<0))))<abs(mean(M1region1day8(i,find(M1region1day8(i,1:4)>0))))
            M1region1day8(i,6)=1;
        end
    end
end
M1region1day8_wrong_number=sum(M1region1day8(:,6)==-1);
M1region1day8_correct_number=sum(M1region1day8(:,6)==1);


for cell_num=1:length(M1_region1_day9_4stages)
    M1region1stage1day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))))-mean(M1region1stage1day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))));
    M1region1stage1day9_difference_struct=cell2mat(struct2cell(M1region1stage1day9_difference));
    
    M1region1stage2day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))))-mean(M1region1stage2day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))));
    M1region1stage2day9_difference_struct=cell2mat(struct2cell(M1region1stage2day9_difference));
    
    M1region1stage3day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))))-mean(M1region1stage3day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))));
    M1region1stage3day9_difference_struct=cell2mat(struct2cell(M1region1stage3day9_difference));
    
    M1region1stage4day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))))-mean(M1region1stage4day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))));
    M1region1stage4day9_difference_struct=cell2mat(struct2cell(M1region1stage4day9_difference));
end
M1region1day9=[M1region1stage1day9_difference_struct M1region1stage2day9_difference_struct M1region1stage3day9_difference_struct M1region1stage4day9_difference_struct M1_region1_day9_4stages];
for i=1:length(M1region1day9)
    
    if sum(M1region1day9(i,1:4)<0)>sum(M1region1day9(i,1:4)>0)
        M1region1day9(i,6)=-1;
    elseif sum(M1region1day9(i,1:4)<0)<sum(M1region1day9(i,1:4)>0)
        M1region1day9(i,6)=1;
    elseif sum(M1region1day9(i,1:4)<0)==sum(M1region1day9(i,1:4)>0)
        if abs(mean(M1region1day9(i,find(M1region1day9(i,1:4)<0))))>abs(mean(M1region1day9(i,find(M1region1day9(i,1:4)>0))))
            M1region1day9(i,6)=-1;
        elseif abs(mean(M1region1day9(i,find(M1region1day9(i,1:4)<0))))<abs(mean(M1region1day9(i,find(M1region1day9(i,1:4)>0))))
            M1region1day9(i,6)=1;
        end
    end
end
M1region1day9_wrong_number=sum(M1region1day9(:,6)==-1);
M1region1day9_correct_number=sum(M1region1day9(:,6)==1);


for cell_num=1:length(M1_region1_day10_4stages)
    M1region1stage1day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))))-mean(M1region1stage1day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))));
    M1region1stage1day10_difference_struct=cell2mat(struct2cell(M1region1stage1day10_difference));
    
    M1region1stage2day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))))-mean(M1region1stage2day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))));
    M1region1stage2day10_difference_struct=cell2mat(struct2cell(M1region1stage2day10_difference));
    
    M1region1stage3day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))))-mean(M1region1stage3day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))));
    M1region1stage3day10_difference_struct=cell2mat(struct2cell(M1region1stage3day10_difference));
    
    M1region1stage4day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))))-mean(M1region1stage4day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))));
    M1region1stage4day10_difference_struct=cell2mat(struct2cell(M1region1stage4day10_difference));
end
M1region1day10=[M1region1stage1day10_difference_struct M1region1stage2day10_difference_struct M1region1stage3day10_difference_struct M1region1stage4day10_difference_struct M1_region1_day10_4stages];
for i=1:length(M1region1day10)
    
    if sum(M1region1day10(i,1:4)<0)>sum(M1region1day10(i,1:4)>0)
        M1region1day10(i,6)=-1;
    elseif sum(M1region1day10(i,1:4)<0)<sum(M1region1day10(i,1:4)>0)
        M1region1day10(i,6)=1;
    elseif sum(M1region1day10(i,1:4)<0)==sum(M1region1day10(i,1:4)>0)
        if abs(mean(M1region1day10(i,find(M1region1day10(i,1:4)<0))))>abs(mean(M1region1day10(i,find(M1region1day10(i,1:4)>0))))
            M1region1day10(i,6)=-1;
        elseif abs(mean(M1region1day10(i,find(M1region1day10(i,1:4)<0))))<abs(mean(M1region1day10(i,find(M1region1day10(i,1:4)>0))))
            M1region1day10(i,6)=1;
        end
    end
end
M1region1day10_wrong_number=sum(M1region1day10(:,6)==-1);
M1region1day10_correct_number=sum(M1region1day10(:,6)==1);

for cell_num=1:length(M1_region1_day11_4stages)
    M1region1stage1day11_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day11_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))))-mean(M1region1stage1day11_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))));
    M1region1stage1day11_difference_struct=cell2mat(struct2cell(M1region1stage1day11_difference));
    
    M1region1stage2day11_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day11_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))))-mean(M1region1stage2day11_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))));
    M1region1stage2day11_difference_struct=cell2mat(struct2cell(M1region1stage2day11_difference));
    
    M1region1stage3day11_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day11_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))))-mean(M1region1stage3day11_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))));
    M1region1stage3day11_difference_struct=cell2mat(struct2cell(M1region1stage3day11_difference));
    
    M1region1stage4day11_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day11_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))))-mean(M1region1stage4day11_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))));
    M1region1stage4day11_difference_struct=cell2mat(struct2cell(M1region1stage4day11_difference));
end
M1region1day11=[M1region1stage1day11_difference_struct M1region1stage2day11_difference_struct M1region1stage3day11_difference_struct M1region1stage4day11_difference_struct M1_region1_day11_4stages];
for i=1:length(M1region1day11)
    
    if sum(M1region1day11(i,1:4)<0)>sum(M1region1day11(i,1:4)>0)
        M1region1day11(i,6)=-1;
    elseif sum(M1region1day11(i,1:4)<0)<sum(M1region1day11(i,1:4)>0)
        M1region1day11(i,6)=1;
    elseif sum(M1region1day11(i,1:4)<0)==sum(M1region1day11(i,1:4)>0)
        if abs(mean(M1region1day11(i,find(M1region1day11(i,1:4)<0))))>abs(mean(M1region1day11(i,find(M1region1day11(i,1:4)>0))))
            M1region1day11(i,6)=-1;
        elseif abs(mean(M1region1day11(i,find(M1region1day11(i,1:4)<0))))<abs(mean(M1region1day11(i,find(M1region1day11(i,1:4)>0))))
            M1region1day11(i,6)=1;
        end
    end
end
M1region1day11_wrong_number=sum(M1region1day11(:,6)==-1);
M1region1day11_correct_number=sum(M1region1day11(:,6)==1);


for cell_num=1:length(M1_region1_day12_4stages)
    M1region1stage1day12_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day12_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))))-mean(M1region1stage1day12_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))));
    M1region1stage1day12_difference_struct=cell2mat(struct2cell(M1region1stage1day12_difference));
    
    M1region1stage2day12_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day12_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))))-mean(M1region1stage2day12_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))));
    M1region1stage2day12_difference_struct=cell2mat(struct2cell(M1region1stage2day12_difference));
    
    M1region1stage3day12_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day12_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))))-mean(M1region1stage3day12_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))));
    M1region1stage3day12_difference_struct=cell2mat(struct2cell(M1region1stage3day12_difference));
    
    M1region1stage4day12_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day12_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))))-mean(M1region1stage4day12_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))));
    M1region1stage4day12_difference_struct=cell2mat(struct2cell(M1region1stage4day12_difference));
end
M1region1day12=[M1region1stage1day12_difference_struct M1region1stage2day12_difference_struct M1region1stage3day12_difference_struct M1region1stage4day12_difference_struct M1_region1_day12_4stages];
for i=1:length(M1region1day12)
    
    if sum(M1region1day12(i,1:4)<0)>sum(M1region1day12(i,1:4)>0)
        M1region1day12(i,6)=-1;
    elseif sum(M1region1day12(i,1:4)<0)<sum(M1region1day12(i,1:4)>0)
        M1region1day12(i,6)=1;
    elseif sum(M1region1day12(i,1:4)<0)==sum(M1region1day12(i,1:4)>0)
        if abs(mean(M1region1day12(i,find(M1region1day12(i,1:4)<0))))>abs(mean(M1region1day12(i,find(M1region1day12(i,1:4)>0))))
            M1region1day12(i,6)=-1;
        elseif abs(mean(M1region1day12(i,find(M1region1day12(i,1:4)<0))))<abs(mean(M1region1day12(i,find(M1region1day12(i,1:4)>0))))
            M1region1day12(i,6)=1;
        end
    end
end
M1region1day12_wrong_number=sum(M1region1day12(:,6)==-1);
M1region1day12_correct_number=sum(M1region1day12(:,6)==1);


M1_region2_day1_4stages=union(union(union(M1region2stage1day1index,M1region2stage2day1index),M1region2stage3day1index),M1region2stage4day1index);
M1_region2_day1_0stage=setdiff(M1region2stage1day1diff_ratio_deltaF(:,1),M1_region2_day1_4stages);

M1_region2_day2_4stages=union(union(union(M1region2stage1day2index,M1region2stage2day2index),M1region2stage3day2index),M1region2stage4day2index);
M1_region2_day2_0stage=setdiff(M1region2stage1day2diff_ratio_deltaF(:,1),M1_region2_day2_4stages);

M1_region2_day3_4stages=union(union(union(M1region2stage1day3index,M1region2stage2day3index),M1region2stage3day3index),M1region2stage4day3index);
M1_region2_day3_0stage=setdiff(M1region2stage1day3diff_ratio_deltaF(:,1),M1_region2_day3_4stages);

M1_region2_day4_4stages=union(union(union(M1region2stage1day4index,M1region2stage2day4index),M1region2stage3day4index),M1region2stage4day4index);
M1_region2_day4_0stage=setdiff(M1region2stage1day4diff_ratio_deltaF(:,1),M1_region2_day4_4stages);








for cell_num=1:length(M1_region2_day1_4stages)
    M1region2stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))))-mean(M1region2stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))));
    M1region2stage1day1_difference_struct=cell2mat(struct2cell(M1region2stage1day1_difference));
    
    M1region2stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))))-mean(M1region2stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))));
    M1region2stage2day1_difference_struct=cell2mat(struct2cell(M1region2stage2day1_difference));
    
    M1region2stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))))-mean(M1region2stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))));
    M1region2stage3day1_difference_struct=cell2mat(struct2cell(M1region2stage3day1_difference));
    
    M1region2stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))))-mean(M1region2stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))));
    M1region2stage4day1_difference_struct=cell2mat(struct2cell(M1region2stage4day1_difference)); 
end
M1region2day1=[M1region2stage1day1_difference_struct M1region2stage2day1_difference_struct M1region2stage3day1_difference_struct M1region2stage4day1_difference_struct M1_region2_day1_4stages];
for i=1:length(M1region2day1)
    
    if sum(M1region2day1(i,1:4)<0)>sum(M1region2day1(i,1:4)>0)
        M1region2day1(i,6)=-1;
    elseif sum(M1region2day1(i,1:4)<0)<sum(M1region2day1(i,1:4)>0)
        M1region2day1(i,6)=1;
    elseif sum(M1region2day1(i,1:4)<0)==sum(M1region2day1(i,1:4)>0)
        if abs(mean(M1region2day1(i,find(M1region2day1(i,1:4)<0))))>abs(mean(M1region2day1(i,find(M1region2day1(i,1:4)>0))))
            M1region2day1(i,6)=-1;
        elseif abs(mean(M1region2day1(i,find(M1region2day1(i,1:4)<0))))<abs(mean(M1region2day1(i,find(M1region2day1(i,1:4)>0))))
            M1region2day1(i,6)=1;
        end
    end
end
M1region2day1_wrong_number=sum(M1region2day1(:,6)==-1);
M1region2day1_correct_number=sum(M1region2day1(:,6)==1);



for cell_num=1:length(M1_region2_day2_4stages)
    M1region2stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))))-mean(M1region2stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))));
    M1region2stage1day2_difference_struct=cell2mat(struct2cell(M1region2stage1day2_difference));
    
    M1region2stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))))-mean(M1region2stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))));
    M1region2stage2day2_difference_struct=cell2mat(struct2cell(M1region2stage2day2_difference));
    
    M1region2stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))))-mean(M1region2stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))));
    M1region2stage3day2_difference_struct=cell2mat(struct2cell(M1region2stage3day2_difference));
    
    M1region2stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))))-mean(M1region2stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))));
    M1region2stage4day2_difference_struct=cell2mat(struct2cell(M1region2stage4day2_difference));
end
M1region2day2=[M1region2stage1day2_difference_struct M1region2stage2day2_difference_struct M1region2stage3day2_difference_struct M1region2stage4day2_difference_struct M1_region2_day2_4stages];
for i=1:length(M1region2day2)
    
    if sum(M1region2day2(i,1:4)<0)>sum(M1region2day2(i,1:4)>0)
        M1region2day2(i,6)=-1;
    elseif sum(M1region2day2(i,1:4)<0)<sum(M1region2day2(i,1:4)>0)
        M1region2day2(i,6)=1;
    elseif sum(M1region2day2(i,1:4)<0)==sum(M1region2day2(i,1:4)>0)
        if abs(mean(M1region2day2(i,find(M1region2day2(i,1:4)<0))))>abs(mean(M1region2day2(i,find(M1region2day2(i,1:4)>0))))
            M1region2day2(i,6)=-1;
        elseif abs(mean(M1region2day2(i,find(M1region2day2(i,1:4)<0))))<abs(mean(M1region2day2(i,find(M1region2day2(i,1:4)>0))))
            M1region2day2(i,6)=1;
        end
    end
end
M1region2day2_wrong_number=sum(M1region2day2(:,6)==-1);
M1region2day2_correct_number=sum(M1region2day2(:,6)==1);


for cell_num=1:length(M1_region2_day3_4stages)
    M1region2stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))))-mean(M1region2stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))));
    M1region2stage1day3_difference_struct=cell2mat(struct2cell(M1region2stage1day3_difference));
    
    M1region2stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))))-mean(M1region2stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))));
    M1region2stage2day3_difference_struct=cell2mat(struct2cell(M1region2stage2day3_difference));
    
    M1region2stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))))-mean(M1region2stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))));
    M1region2stage3day3_difference_struct=cell2mat(struct2cell(M1region2stage3day3_difference));
    
    M1region2stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))))-mean(M1region2stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))));
    M1region2stage4day3_difference_struct=cell2mat(struct2cell(M1region2stage4day3_difference));
end
M1region2day3=[M1region2stage1day3_difference_struct M1region2stage2day3_difference_struct M1region2stage3day3_difference_struct M1region2stage4day3_difference_struct M1_region2_day3_4stages];
for i=1:length(M1region2day3)
    
    if sum(M1region2day3(i,1:4)<0)>sum(M1region2day3(i,1:4)>0)
        M1region2day3(i,6)=-1;
    elseif sum(M1region2day3(i,1:4)<0)<sum(M1region2day3(i,1:4)>0)
        M1region2day3(i,6)=1;
    elseif sum(M1region2day3(i,1:4)<0)==sum(M1region2day3(i,1:4)>0)
        if abs(mean(M1region2day3(i,find(M1region2day3(i,1:4)<0))))>abs(mean(M1region2day3(i,find(M1region2day3(i,1:4)>0))))
            M1region2day3(i,6)=-1;
        elseif abs(mean(M1region2day3(i,find(M1region2day3(i,1:4)<0))))<abs(mean(M1region2day3(i,find(M1region2day3(i,1:4)>0))))
            M1region2day3(i,6)=1;
        end
    end
end
M1region2day3_wrong_number=sum(M1region2day3(:,6)==-1);
M1region2day3_correct_number=sum(M1region2day3(:,6)==1);





for cell_num=1:length(M1_region2_day4_4stages)
    M1region2stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))))-mean(M1region2stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))));
    M1region2stage1day4_difference_struct=cell2mat(struct2cell(M1region2stage1day4_difference));
    
    M1region2stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))))-mean(M1region2stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))));
    M1region2stage2day4_difference_struct=cell2mat(struct2cell(M1region2stage2day4_difference));
    
    M1region2stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))))-mean(M1region2stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))));
    M1region2stage3day4_difference_struct=cell2mat(struct2cell(M1region2stage3day4_difference));
    
    M1region2stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))))-mean(M1region2stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))));
    M1region2stage4day4_difference_struct=cell2mat(struct2cell(M1region2stage4day4_difference));
end
M1region2day4=[M1region2stage1day4_difference_struct M1region2stage2day4_difference_struct M1region2stage3day4_difference_struct M1region2stage4day4_difference_struct M1_region2_day4_4stages];
for i=1:length(M1region2day4)
    
    if sum(M1region2day4(i,1:4)<0)>sum(M1region2day4(i,1:4)>0)
        M1region2day4(i,6)=-1;
    elseif sum(M1region2day4(i,1:4)<0)<sum(M1region2day4(i,1:4)>0)
        M1region2day4(i,6)=1;
    elseif sum(M1region2day4(i,1:4)<0)==sum(M1region2day4(i,1:4)>0)
        if abs(mean(M1region2day4(i,find(M1region2day4(i,1:4)<0))))>abs(mean(M1region2day4(i,find(M1region2day4(i,1:4)>0))))
            M1region2day4(i,6)=-1;
        elseif abs(mean(M1region2day4(i,find(M1region2day4(i,1:4)<0))))<abs(mean(M1region2day4(i,find(M1region2day4(i,1:4)>0))))
            M1region2day4(i,6)=1;
        end
    end
end
M1region2day4_wrong_number=sum(M1region2day4(:,6)==-1);
M1region2day4_correct_number=sum(M1region2day4(:,6)==1);

M1_region3_day1_4stages=union(union(union(M1region3stage1day1index,M1region3stage2day1index),M1region3stage3day1index),M1region3stage4day1index);
M1_region3_day1_0stage=setdiff(M1region3stage1day1diff_ratio_deltaF(:,1),M1_region3_day1_4stages);

M1_region3_day2_4stages=union(union(union(M1region3stage1day2index,M1region3stage2day2index),M1region3stage3day2index),M1region3stage4day2index);
M1_region3_day2_0stage=setdiff(M1region3stage1day2diff_ratio_deltaF(:,1),M1_region3_day2_4stages);

M1_region3_day3_4stages=union(union(union(M1region3stage1day3index,M1region3stage2day3index),M1region3stage3day3index),M1region3stage4day3index);
M1_region3_day3_0stage=setdiff(M1region3stage1day3diff_ratio_deltaF(:,1),M1_region3_day3_4stages);




for cell_num=1:length(M1_region3_day1_4stages)
    M1region3stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))))-mean(M1region3stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))));
    M1region3stage1day1_difference_struct=cell2mat(struct2cell(M1region3stage1day1_difference));
    
    M1region3stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))))-mean(M1region3stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))));
    M1region3stage2day1_difference_struct=cell2mat(struct2cell(M1region3stage2day1_difference));
    
    M1region3stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))))-mean(M1region3stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))));
    M1region3stage3day1_difference_struct=cell2mat(struct2cell(M1region3stage3day1_difference));
    
    M1region3stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))))-mean(M1region3stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))));
    M1region3stage4day1_difference_struct=cell2mat(struct2cell(M1region3stage4day1_difference)); 
end
M1region3day1=[M1region3stage1day1_difference_struct M1region3stage2day1_difference_struct M1region3stage3day1_difference_struct M1region3stage4day1_difference_struct M1_region3_day1_4stages];
for i=1:length(M1region3day1)
    
    if sum(M1region3day1(i,1:4)<0)>sum(M1region3day1(i,1:4)>0)
        M1region3day1(i,6)=-1;
    elseif sum(M1region3day1(i,1:4)<0)<sum(M1region3day1(i,1:4)>0)
        M1region3day1(i,6)=1;
    elseif sum(M1region3day1(i,1:4)<0)==sum(M1region3day1(i,1:4)>0)
        if abs(mean(M1region3day1(i,find(M1region3day1(i,1:4)<0))))>abs(mean(M1region3day1(i,find(M1region3day1(i,1:4)>0))))
            M1region3day1(i,6)=-1;
        elseif abs(mean(M1region3day1(i,find(M1region3day1(i,1:4)<0))))<abs(mean(M1region3day1(i,find(M1region3day1(i,1:4)>0))))
            M1region3day1(i,6)=1;
        end
    end
end
M1region3day1_wrong_number=sum(M1region3day1(:,6)==-1);
M1region3day1_correct_number=sum(M1region3day1(:,6)==1);




for cell_num=1:length(M1_region3_day2_4stages)
    M1region3stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))))-mean(M1region3stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))));
    M1region3stage1day2_difference_struct=cell2mat(struct2cell(M1region3stage1day2_difference));
    
    M1region3stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))))-mean(M1region3stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))));
    M1region3stage2day2_difference_struct=cell2mat(struct2cell(M1region3stage2day2_difference));
    
    M1region3stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))))-mean(M1region3stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))));
    M1region3stage3day2_difference_struct=cell2mat(struct2cell(M1region3stage3day2_difference));
    
    M1region3stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))))-mean(M1region3stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))));
    M1region3stage4day2_difference_struct=cell2mat(struct2cell(M1region3stage4day2_difference));
end
M1region3day2=[M1region3stage1day2_difference_struct M1region3stage2day2_difference_struct M1region3stage3day2_difference_struct M1region3stage4day2_difference_struct M1_region3_day2_4stages];
for i=1:length(M1region3day2)
    
    if sum(M1region3day2(i,1:4)<0)>sum(M1region3day2(i,1:4)>0)
        M1region3day2(i,6)=-1;
    elseif sum(M1region3day2(i,1:4)<0)<sum(M1region3day2(i,1:4)>0)
        M1region3day2(i,6)=1;
    elseif sum(M1region3day2(i,1:4)<0)==sum(M1region3day2(i,1:4)>0)
        if abs(mean(M1region3day2(i,find(M1region3day2(i,1:4)<0))))>abs(mean(M1region3day2(i,find(M1region3day2(i,1:4)>0))))
            M1region3day2(i,6)=-1;
        elseif abs(mean(M1region3day2(i,find(M1region3day2(i,1:4)<0))))<abs(mean(M1region3day2(i,find(M1region3day2(i,1:4)>0))))
            M1region3day2(i,6)=1;
        end
    end
end
M1region3day2_wrong_number=sum(M1region3day2(:,6)==-1);
M1region3day2_correct_number=sum(M1region3day2(:,6)==1);


for cell_num=1:length(M1_region3_day3_4stages)
    M1region3stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))))-mean(M1region3stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))));
    M1region3stage1day3_difference_struct=cell2mat(struct2cell(M1region3stage1day3_difference));
    
    M1region3stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))))-mean(M1region3stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))));
    M1region3stage2day3_difference_struct=cell2mat(struct2cell(M1region3stage2day3_difference));
    
    M1region3stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))))-mean(M1region3stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))));
    M1region3stage3day3_difference_struct=cell2mat(struct2cell(M1region3stage3day3_difference));
    
    M1region3stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))))-mean(M1region3stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))));
    M1region3stage4day3_difference_struct=cell2mat(struct2cell(M1region3stage4day3_difference));
end
M1region3day3=[M1region3stage1day3_difference_struct M1region3stage2day3_difference_struct M1region3stage3day3_difference_struct M1region3stage4day3_difference_struct M1_region3_day3_4stages];
for i=1:length(M1region3day3)
    
    if sum(M1region3day3(i,1:4)<0)>sum(M1region3day3(i,1:4)>0)
        M1region3day3(i,6)=-1;
    elseif sum(M1region3day3(i,1:4)<0)<sum(M1region3day3(i,1:4)>0)
        M1region3day3(i,6)=1;
    elseif sum(M1region3day3(i,1:4)<0)==sum(M1region3day3(i,1:4)>0)
        if abs(mean(M1region3day3(i,find(M1region3day3(i,1:4)<0))))>abs(mean(M1region3day3(i,find(M1region3day3(i,1:4)>0))))
            M1region3day3(i,6)=-1;
        elseif abs(mean(M1region3day3(i,find(M1region3day3(i,1:4)<0))))<abs(mean(M1region3day3(i,find(M1region3day3(i,1:4)>0))))
            M1region3day3(i,6)=1;
        end
    end
end
M1region3day3_wrong_number=sum(M1region3day3(:,6)==-1);
M1region3day3_correct_number=sum(M1region3day3(:,6)==1);

M1_region4_day1_4stages=union(union(union(M1region4stage1day1index,M1region4stage2day1index),M1region4stage3day1index),M1region4stage4day1index);
M1_region4_day1_0stage=setdiff(M1region4stage1day1diff_ratio_deltaF(:,1),M1_region4_day1_4stages);

M1_region4_day2_4stages=union(union(union(M1region4stage1day2index,M1region4stage2day2index),M1region4stage3day2index),M1region4stage4day2index);
M1_region4_day2_0stage=setdiff(M1region4stage1day2diff_ratio_deltaF(:,1),M1_region4_day2_4stages);

M1_region4_day3_4stages=union(union(union(M1region4stage1day3index,M1region4stage2day3index),M1region4stage3day3index),M1region4stage4day3index);
M1_region4_day3_0stage=setdiff(M1region4stage1day3diff_ratio_deltaF(:,1),M1_region4_day3_4stages);




for cell_num=1:length(M1_region4_day1_4stages)
    M1region4stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))))-mean(M1region4stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))));
    M1region4stage1day1_difference_struct=cell2mat(struct2cell(M1region4stage1day1_difference));
    
    M1region4stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))))-mean(M1region4stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))));
    M1region4stage2day1_difference_struct=cell2mat(struct2cell(M1region4stage2day1_difference));
    
    M1region4stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))))-mean(M1region4stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))));
    M1region4stage3day1_difference_struct=cell2mat(struct2cell(M1region4stage3day1_difference));
    
    M1region4stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))))-mean(M1region4stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))));
    M1region4stage4day1_difference_struct=cell2mat(struct2cell(M1region4stage4day1_difference)); 
end
M1region4day1=[M1region4stage1day1_difference_struct M1region4stage2day1_difference_struct M1region4stage3day1_difference_struct M1region4stage4day1_difference_struct M1_region4_day1_4stages];
for i=1:length(M1region4day1)
    
    if sum(M1region4day1(i,1:4)<0)>sum(M1region4day1(i,1:4)>0)
        M1region4day1(i,6)=-1;
    elseif sum(M1region4day1(i,1:4)<0)<sum(M1region4day1(i,1:4)>0)
        M1region4day1(i,6)=1;
    elseif sum(M1region4day1(i,1:4)<0)==sum(M1region4day1(i,1:4)>0)
        if abs(mean(M1region4day1(i,find(M1region4day1(i,1:4)<0))))>abs(mean(M1region4day1(i,find(M1region4day1(i,1:4)>0))))
            M1region4day1(i,6)=-1;
        elseif abs(mean(M1region4day1(i,find(M1region4day1(i,1:4)<0))))<abs(mean(M1region4day1(i,find(M1region4day1(i,1:4)>0))))
            M1region4day1(i,6)=1;
        end
    end
end
M1region4day1_wrong_number=sum(M1region4day1(:,6)==-1);
M1region4day1_correct_number=sum(M1region4day1(:,6)==1);




for cell_num=1:length(M1_region4_day2_4stages)
    M1region4stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))))-mean(M1region4stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))));
    M1region4stage1day2_difference_struct=cell2mat(struct2cell(M1region4stage1day2_difference));
    
    M1region4stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))))-mean(M1region4stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))));
    M1region4stage2day2_difference_struct=cell2mat(struct2cell(M1region4stage2day2_difference));
    
    M1region4stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))))-mean(M1region4stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))));
    M1region4stage3day2_difference_struct=cell2mat(struct2cell(M1region4stage3day2_difference));
    
    M1region4stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))))-mean(M1region4stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))));
    M1region4stage4day2_difference_struct=cell2mat(struct2cell(M1region4stage4day2_difference));
end
M1region4day2=[M1region4stage1day2_difference_struct M1region4stage2day2_difference_struct M1region4stage3day2_difference_struct M1region4stage4day2_difference_struct M1_region4_day2_4stages];
for i=1:length(M1region4day2)
    
    if sum(M1region4day2(i,1:4)<0)>sum(M1region4day2(i,1:4)>0)
        M1region4day2(i,6)=-1;
    elseif sum(M1region4day2(i,1:4)<0)<sum(M1region4day2(i,1:4)>0)
        M1region4day2(i,6)=1;
    elseif sum(M1region4day2(i,1:4)<0)==sum(M1region4day2(i,1:4)>0)
        if abs(mean(M1region4day2(i,find(M1region4day2(i,1:4)<0))))>abs(mean(M1region4day2(i,find(M1region4day2(i,1:4)>0))))
            M1region4day2(i,6)=-1;
        elseif abs(mean(M1region4day2(i,find(M1region4day2(i,1:4)<0))))<abs(mean(M1region4day2(i,find(M1region4day2(i,1:4)>0))))
            M1region4day2(i,6)=1;
        end
    end
end
M1region4day2_wrong_number=sum(M1region4day2(:,6)==-1);
M1region4day2_correct_number=sum(M1region4day2(:,6)==1);


for cell_num=1:length(M1_region4_day3_4stages)
    M1region4stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))))-mean(M1region4stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))));
    M1region4stage1day3_difference_struct=cell2mat(struct2cell(M1region4stage1day3_difference));
    
    M1region4stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))))-mean(M1region4stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))));
    M1region4stage2day3_difference_struct=cell2mat(struct2cell(M1region4stage2day3_difference));
    
    M1region4stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))))-mean(M1region4stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))));
    M1region4stage3day3_difference_struct=cell2mat(struct2cell(M1region4stage3day3_difference));
    
    M1region4stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))))-mean(M1region4stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))));
    M1region4stage4day3_difference_struct=cell2mat(struct2cell(M1region4stage4day3_difference));
end
M1region4day3=[M1region4stage1day3_difference_struct M1region4stage2day3_difference_struct M1region4stage3day3_difference_struct M1region4stage4day3_difference_struct M1_region4_day3_4stages];
for i=1:length(M1region4day3)
    
    if sum(M1region4day3(i,1:4)<0)>sum(M1region4day3(i,1:4)>0)
        M1region4day3(i,6)=-1;
    elseif sum(M1region4day3(i,1:4)<0)<sum(M1region4day3(i,1:4)>0)
        M1region4day3(i,6)=1;
    elseif sum(M1region4day3(i,1:4)<0)==sum(M1region4day3(i,1:4)>0)
        if abs(mean(M1region4day3(i,find(M1region4day3(i,1:4)<0))))>abs(mean(M1region4day3(i,find(M1region4day3(i,1:4)>0))))
            M1region4day3(i,6)=-1;
        elseif abs(mean(M1region4day3(i,find(M1region4day3(i,1:4)<0))))<abs(mean(M1region4day3(i,find(M1region4day3(i,1:4)>0))))
            M1region4day3(i,6)=1;
        end
    end
end
M1region4day3_wrong_number=sum(M1region4day3(:,6)==-1);
M1region4day3_correct_number=sum(M1region4day3(:,6)==1);
M1_region5_day1_4stages=union(union(union(M1region5stage1day1index,M1region5stage2day1index),M1region5stage3day1index),M1region5stage4day1index);
M1_region5_day1_0stage=setdiff(M1region5stage1day1diff_ratio_deltaF(:,1),M1_region5_day1_4stages);

M1_region5_day2_4stages=union(union(union(M1region5stage1day2index,M1region5stage2day2index),M1region5stage3day2index),M1region5stage4day2index);
M1_region5_day2_0stage=setdiff(M1region5stage1day2diff_ratio_deltaF(:,1),M1_region5_day2_4stages);




for cell_num=1:length(M1_region5_day1_4stages)
    M1region5stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))))-mean(M1region5stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))));
    M1region5stage1day1_difference_struct=cell2mat(struct2cell(M1region5stage1day1_difference));
    
    M1region5stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))))-mean(M1region5stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))));
    M1region5stage2day1_difference_struct=cell2mat(struct2cell(M1region5stage2day1_difference));
    
    M1region5stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))))-mean(M1region5stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))));
    M1region5stage3day1_difference_struct=cell2mat(struct2cell(M1region5stage3day1_difference));
    
    M1region5stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))))-mean(M1region5stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))));
    M1region5stage4day1_difference_struct=cell2mat(struct2cell(M1region5stage4day1_difference)); 
end
M1region5day1=[M1region5stage1day1_difference_struct M1region5stage2day1_difference_struct M1region5stage3day1_difference_struct M1region5stage4day1_difference_struct M1_region5_day1_4stages];
for i=1:length(M1region5day1)
    
    if sum(M1region5day1(i,1:4)<0)>sum(M1region5day1(i,1:4)>0)
        M1region5day1(i,6)=-1;
    elseif sum(M1region5day1(i,1:4)<0)<sum(M1region5day1(i,1:4)>0)
        M1region5day1(i,6)=1;
    elseif sum(M1region5day1(i,1:4)<0)==sum(M1region5day1(i,1:4)>0)
        if abs(mean(M1region5day1(i,find(M1region5day1(i,1:4)<0))))>abs(mean(M1region5day1(i,find(M1region5day1(i,1:4)>0))))
            M1region5day1(i,6)=-1;
        elseif abs(mean(M1region5day1(i,find(M1region5day1(i,1:4)<0))))<abs(mean(M1region5day1(i,find(M1region5day1(i,1:4)>0))))
            M1region5day1(i,6)=1;
        end
    end
end
M1region5day1_wrong_number=sum(M1region5day1(:,6)==-1);
M1region5day1_correct_number=sum(M1region5day1(:,6)==1);




for cell_num=1:length(M1_region5_day2_4stages)
    M1region5stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))))-mean(M1region5stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))));
    M1region5stage1day2_difference_struct=cell2mat(struct2cell(M1region5stage1day2_difference));
    
    M1region5stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))))-mean(M1region5stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))));
    M1region5stage2day2_difference_struct=cell2mat(struct2cell(M1region5stage2day2_difference));
    
    M1region5stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))))-mean(M1region5stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))));
    M1region5stage3day2_difference_struct=cell2mat(struct2cell(M1region5stage3day2_difference));
    
    M1region5stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))))-mean(M1region5stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))));
    M1region5stage4day2_difference_struct=cell2mat(struct2cell(M1region5stage4day2_difference));
end
M1region5day2=[M1region5stage1day2_difference_struct M1region5stage2day2_difference_struct M1region5stage3day2_difference_struct M1region5stage4day2_difference_struct M1_region5_day2_4stages];
for i=1:length(M1region5day2)
    
    if sum(M1region5day2(i,1:4)<0)>sum(M1region5day2(i,1:4)>0)
        M1region5day2(i,6)=-1;
    elseif sum(M1region5day2(i,1:4)<0)<sum(M1region5day2(i,1:4)>0)
        M1region5day2(i,6)=1;
    elseif sum(M1region5day2(i,1:4)<0)==sum(M1region5day2(i,1:4)>0)
        if abs(mean(M1region5day2(i,find(M1region5day2(i,1:4)<0))))>abs(mean(M1region5day2(i,find(M1region5day2(i,1:4)>0))))
            M1region5day2(i,6)=-1;
        elseif abs(mean(M1region5day2(i,find(M1region5day2(i,1:4)<0))))<abs(mean(M1region5day2(i,find(M1region5day2(i,1:4)>0))))
            M1region5day2(i,6)=1;
        end
    end
end
M1region5day2_wrong_number=sum(M1region5day2(:,6)==-1);
M1region5day2_correct_number=sum(M1region5day2(:,6)==1);

M1_region6_day1_4stages=union(union(union(M1region6stage1day1index,M1region6stage2day1index),M1region6stage3day1index),M1region6stage4day1index);
M1_region6_day1_0stage=setdiff(M1region6stage1day1diff_ratio_deltaF(:,1),M1_region6_day1_4stages);

M1_region6_day2_4stages=union(union(union(M1region6stage1day2index,M1region6stage2day2index),M1region6stage3day2index),M1region6stage4day2index);
M1_region6_day2_0stage=setdiff(M1region6stage1day2diff_ratio_deltaF(:,1),M1_region6_day2_4stages);

M1_region6_day3_4stages=union(union(union(M1region6stage1day3index,M1region6stage2day3index),M1region6stage3day3index),M1region6stage4day3index);
M1_region6_day3_0stage=setdiff(M1region6stage1day3diff_ratio_deltaF(:,1),M1_region6_day3_4stages);

M1_region6_day4_4stages=union(union(union(M1region6stage1day4index,M1region6stage2day4index),M1region6stage3day4index),M1region6stage4day4index);
M1_region6_day4_0stage=setdiff(M1region6stage1day4diff_ratio_deltaF(:,1),M1_region6_day4_4stages);

M1_region6_day5_4stages=union(union(union(M1region6stage1day5index,M1region6stage2day5index),M1region6stage3day5index),M1region6stage4day5index);
M1_region6_day5_0stage=setdiff(M1region6stage1day5diff_ratio_deltaF(:,1),M1_region6_day5_4stages);

M1_region6_day6_4stages=union(union(union(M1region6stage1day6index,M1region6stage2day6index),M1region6stage3day6index),M1region6stage4day6index);
M1_region6_day6_0stage=setdiff(M1region6stage1day6diff_ratio_deltaF(:,1),M1_region6_day6_4stages);

M1_region6_day7_4stages=union(union(union(M1region6stage1day7index,M1region6stage2day7index),M1region6stage3day7index),M1region6stage4day7index);
M1_region6_day7_0stage=setdiff(M1region6stage1day7diff_ratio_deltaF(:,1),M1_region6_day7_4stages);

M1_region6_day8_4stages=union(union(union(M1region6stage1day8index,M1region6stage2day8index),M1region6stage3day8index),M1region6stage4day8index);
M1_region6_day8_0stage=setdiff(M1region6stage1day8diff_ratio_deltaF(:,1),M1_region6_day8_4stages);

M1_region6_day9_4stages=union(union(union(M1region6stage1day9index,M1region6stage2day9index),M1region6stage3day9index),M1region6stage4day9index);
M1_region6_day9_0stage=setdiff(M1region6stage1day9diff_ratio_deltaF(:,1),M1_region6_day9_4stages);

M1_region6_day10_4stages=union(union(union(M1region6stage1day10index,M1region6stage2day10index),M1region6stage3day10index),M1region6stage4day10index);
M1_region6_day10_0stage=setdiff(M1region6stage1day10diff_ratio_deltaF(:,1),M1_region6_day10_4stages);







for cell_num=1:length(M1_region6_day1_4stages)
    M1region6stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))))-mean(M1region6stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))));
    M1region6stage1day1_difference_struct=cell2mat(struct2cell(M1region6stage1day1_difference));
    
    M1region6stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))))-mean(M1region6stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))));
    M1region6stage2day1_difference_struct=cell2mat(struct2cell(M1region6stage2day1_difference));
    
    M1region6stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))))-mean(M1region6stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))));
    M1region6stage3day1_difference_struct=cell2mat(struct2cell(M1region6stage3day1_difference));
    
    M1region6stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))))-mean(M1region6stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))));
    M1region6stage4day1_difference_struct=cell2mat(struct2cell(M1region6stage4day1_difference)); 
end
M1region6day1=[M1region6stage1day1_difference_struct M1region6stage2day1_difference_struct M1region6stage3day1_difference_struct M1region6stage4day1_difference_struct M1_region6_day1_4stages];
for i=1:length(M1region6day1)
    
    if sum(M1region6day1(i,1:4)<0)>sum(M1region6day1(i,1:4)>0)
        M1region6day1(i,6)=-1;
    elseif sum(M1region6day1(i,1:4)<0)<sum(M1region6day1(i,1:4)>0)
        M1region6day1(i,6)=1;
    elseif sum(M1region6day1(i,1:4)<0)==sum(M1region6day1(i,1:4)>0)
        if abs(mean(M1region6day1(i,find(M1region6day1(i,1:4)<0))))>abs(mean(M1region6day1(i,find(M1region6day1(i,1:4)>0))))
            M1region6day1(i,6)=-1;
        elseif abs(mean(M1region6day1(i,find(M1region6day1(i,1:4)<0))))<abs(mean(M1region6day1(i,find(M1region6day1(i,1:4)>0))))
            M1region6day1(i,6)=1;
        end
    end
end
M1region6day1_wrong_number=sum(M1region6day1(:,6)==-1);
M1region6day1_correct_number=sum(M1region6day1(:,6)==1);





for cell_num=1:length(M1_region6_day2_4stages)
    M1region6stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))))-mean(M1region6stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))));
    M1region6stage1day2_difference_struct=cell2mat(struct2cell(M1region6stage1day2_difference));
    
    M1region6stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))))-mean(M1region6stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))));
    M1region6stage2day2_difference_struct=cell2mat(struct2cell(M1region6stage2day2_difference));
    
    M1region6stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))))-mean(M1region6stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))));
    M1region6stage3day2_difference_struct=cell2mat(struct2cell(M1region6stage3day2_difference));
    
    M1region6stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))))-mean(M1region6stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))));
    M1region6stage4day2_difference_struct=cell2mat(struct2cell(M1region6stage4day2_difference));
end
M1region6day2=[M1region6stage1day2_difference_struct M1region6stage2day2_difference_struct M1region6stage3day2_difference_struct M1region6stage4day2_difference_struct M1_region6_day2_4stages];
for i=1:length(M1region6day2)
    
    if sum(M1region6day2(i,1:4)<0)>sum(M1region6day2(i,1:4)>0)
        M1region6day2(i,6)=-1;
    elseif sum(M1region6day2(i,1:4)<0)<sum(M1region6day2(i,1:4)>0)
        M1region6day2(i,6)=1;
    elseif sum(M1region6day2(i,1:4)<0)==sum(M1region6day2(i,1:4)>0)
        if abs(mean(M1region6day2(i,find(M1region6day2(i,1:4)<0))))>abs(mean(M1region6day2(i,find(M1region6day2(i,1:4)>0))))
            M1region6day2(i,6)=-1;
        elseif abs(mean(M1region6day2(i,find(M1region6day2(i,1:4)<0))))<abs(mean(M1region6day2(i,find(M1region6day2(i,1:4)>0))))
            M1region6day2(i,6)=1;
        end
    end
end
M1region6day2_wrong_number=sum(M1region6day2(:,6)==-1);
M1region6day2_correct_number=sum(M1region6day2(:,6)==1);

for cell_num=1:length(M1_region6_day3_4stages)
    M1region6stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))))-mean(M1region6stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))));
    M1region6stage1day3_difference_struct=cell2mat(struct2cell(M1region6stage1day3_difference));
    
    M1region6stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))))-mean(M1region6stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))));
    M1region6stage2day3_difference_struct=cell2mat(struct2cell(M1region6stage2day3_difference));
    
    M1region6stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))))-mean(M1region6stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))));
    M1region6stage3day3_difference_struct=cell2mat(struct2cell(M1region6stage3day3_difference));
    
    M1region6stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))))-mean(M1region6stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))));
    M1region6stage4day3_difference_struct=cell2mat(struct2cell(M1region6stage4day3_difference));
end
M1region6day3=[M1region6stage1day3_difference_struct M1region6stage2day3_difference_struct M1region6stage3day3_difference_struct M1region6stage4day3_difference_struct M1_region6_day3_4stages];
for i=1:length(M1region6day3)
    
    if sum(M1region6day3(i,1:4)<0)>sum(M1region6day3(i,1:4)>0)
        M1region6day3(i,6)=-1;
    elseif sum(M1region6day3(i,1:4)<0)<sum(M1region6day3(i,1:4)>0)
        M1region6day3(i,6)=1;
    elseif sum(M1region6day3(i,1:4)<0)==sum(M1region6day3(i,1:4)>0)
        if abs(mean(M1region6day3(i,find(M1region6day3(i,1:4)<0))))>abs(mean(M1region6day3(i,find(M1region6day3(i,1:4)>0))))
            M1region6day3(i,6)=-1;
        elseif abs(mean(M1region6day3(i,find(M1region6day3(i,1:4)<0))))<abs(mean(M1region6day3(i,find(M1region6day3(i,1:4)>0))))
            M1region6day3(i,6)=1;
        end
    end
end
M1region6day3_wrong_number=sum(M1region6day3(:,6)==-1);
M1region6day3_correct_number=sum(M1region6day3(:,6)==1);




for cell_num=1:length(M1_region6_day4_4stages)
    M1region6stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))))-mean(M1region6stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))));
    M1region6stage1day4_difference_struct=cell2mat(struct2cell(M1region6stage1day4_difference));
    
    M1region6stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))))-mean(M1region6stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))));
    M1region6stage2day4_difference_struct=cell2mat(struct2cell(M1region6stage2day4_difference));
    
    M1region6stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))))-mean(M1region6stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))));
    M1region6stage3day4_difference_struct=cell2mat(struct2cell(M1region6stage3day4_difference));
    
    M1region6stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))))-mean(M1region6stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))));
    M1region6stage4day4_difference_struct=cell2mat(struct2cell(M1region6stage4day4_difference));
end
M1region6day4=[M1region6stage1day4_difference_struct M1region6stage2day4_difference_struct M1region6stage3day4_difference_struct M1region6stage4day4_difference_struct M1_region6_day4_4stages];
for i=1:length(M1region6day4)
    
    if sum(M1region6day4(i,1:4)<0)>sum(M1region6day4(i,1:4)>0)
        M1region6day4(i,6)=-1;
    elseif sum(M1region6day4(i,1:4)<0)<sum(M1region6day4(i,1:4)>0)
        M1region6day4(i,6)=1;
    elseif sum(M1region6day4(i,1:4)<0)==sum(M1region6day4(i,1:4)>0)
        if abs(mean(M1region6day4(i,find(M1region6day4(i,1:4)<0))))>abs(mean(M1region6day4(i,find(M1region6day4(i,1:4)>0))))
            M1region6day4(i,6)=-1;
        elseif abs(mean(M1region6day4(i,find(M1region6day4(i,1:4)<0))))<abs(mean(M1region6day4(i,find(M1region6day4(i,1:4)>0))))
            M1region6day4(i,6)=1;
        end
    end
end
M1region6day4_wrong_number=sum(M1region6day4(:,6)==-1);
M1region6day4_correct_number=sum(M1region6day4(:,6)==1);

for cell_num=1:length(M1_region6_day5_4stages)
    M1region6stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))))-mean(M1region6stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))));
    M1region6stage1day5_difference_struct=cell2mat(struct2cell(M1region6stage1day5_difference));
    
    M1region6stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))))-mean(M1region6stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))));
    M1region6stage2day5_difference_struct=cell2mat(struct2cell(M1region6stage2day5_difference));
    
    M1region6stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))))-mean(M1region6stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))));
    M1region6stage3day5_difference_struct=cell2mat(struct2cell(M1region6stage3day5_difference));
    
    M1region6stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))))-mean(M1region6stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))));
    M1region6stage4day5_difference_struct=cell2mat(struct2cell(M1region6stage4day5_difference));
end
M1region6day5=[M1region6stage1day5_difference_struct M1region6stage2day5_difference_struct M1region6stage3day5_difference_struct M1region6stage4day5_difference_struct M1_region6_day5_4stages];
for i=1:length(M1region6day5)
    
    if sum(M1region6day5(i,1:4)<0)>sum(M1region6day5(i,1:4)>0)
        M1region6day5(i,6)=-1;
    elseif sum(M1region6day5(i,1:4)<0)<sum(M1region6day5(i,1:4)>0)
        M1region6day5(i,6)=1;
    elseif sum(M1region6day5(i,1:4)<0)==sum(M1region6day5(i,1:4)>0)
        if abs(mean(M1region6day5(i,find(M1region6day5(i,1:4)<0))))>abs(mean(M1region6day5(i,find(M1region6day5(i,1:4)>0))))
            M1region6day5(i,6)=-1;
        elseif abs(mean(M1region6day5(i,find(M1region6day5(i,1:4)<0))))<abs(mean(M1region6day5(i,find(M1region6day5(i,1:4)>0))))
            M1region6day5(i,6)=1;
        end
    end
end
M1region6day5_wrong_number=sum(M1region6day5(:,6)==-1);
M1region6day5_correct_number=sum(M1region6day5(:,6)==1);

for cell_num=1:length(M1_region6_day6_4stages)
    M1region6stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))))-mean(M1region6stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))));
    M1region6stage1day6_difference_struct=cell2mat(struct2cell(M1region6stage1day6_difference));
    
    M1region6stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))))-mean(M1region6stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))));
    M1region6stage2day6_difference_struct=cell2mat(struct2cell(M1region6stage2day6_difference));
    
    M1region6stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))))-mean(M1region6stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))));
    M1region6stage3day6_difference_struct=cell2mat(struct2cell(M1region6stage3day6_difference));
    
    M1region6stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))))-mean(M1region6stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))));
    M1region6stage4day6_difference_struct=cell2mat(struct2cell(M1region6stage4day6_difference));
end
M1region6day6=[M1region6stage1day6_difference_struct M1region6stage2day6_difference_struct M1region6stage3day6_difference_struct M1region6stage4day6_difference_struct M1_region6_day6_4stages];
for i=1:length(M1region6day6)
    
    if sum(M1region6day6(i,1:4)<0)>sum(M1region6day6(i,1:4)>0)
        M1region6day6(i,6)=-1;
    elseif sum(M1region6day6(i,1:4)<0)<sum(M1region6day6(i,1:4)>0)
        M1region6day6(i,6)=1;
    elseif sum(M1region6day6(i,1:4)<0)==sum(M1region6day6(i,1:4)>0)
        if abs(mean(M1region6day6(i,find(M1region6day6(i,1:4)<0))))>abs(mean(M1region6day6(i,find(M1region6day6(i,1:4)>0))))
            M1region6day6(i,6)=-1;
        elseif abs(mean(M1region6day6(i,find(M1region6day6(i,1:4)<0))))<abs(mean(M1region6day6(i,find(M1region6day6(i,1:4)>0))))
            M1region6day6(i,6)=1;
        end
    end
end
M1region6day6_wrong_number=sum(M1region6day6(:,6)==-1);
M1region6day6_correct_number=sum(M1region6day6(:,6)==1);

for cell_num=1:length(M1_region6_day7_4stages)
    M1region6stage1day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))))-mean(M1region6stage1day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))));
    M1region6stage1day7_difference_struct=cell2mat(struct2cell(M1region6stage1day7_difference));
    
    M1region6stage2day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))))-mean(M1region6stage2day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))));
    M1region6stage2day7_difference_struct=cell2mat(struct2cell(M1region6stage2day7_difference));
    
    M1region6stage3day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))))-mean(M1region6stage3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))));
    M1region6stage3day7_difference_struct=cell2mat(struct2cell(M1region6stage3day7_difference));
    
    M1region6stage4day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))))-mean(M1region6stage4day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))));
    M1region6stage4day7_difference_struct=cell2mat(struct2cell(M1region6stage4day7_difference));
end
M1region6day7=[M1region6stage1day7_difference_struct M1region6stage2day7_difference_struct M1region6stage3day7_difference_struct M1region6stage4day7_difference_struct M1_region6_day7_4stages];
for i=1:length(M1region6day7)
    
    if sum(M1region6day7(i,1:4)<0)>sum(M1region6day7(i,1:4)>0)
        M1region6day7(i,6)=-1;
    elseif sum(M1region6day7(i,1:4)<0)<sum(M1region6day7(i,1:4)>0)
        M1region6day7(i,6)=1;
    elseif sum(M1region6day7(i,1:4)<0)==sum(M1region6day7(i,1:4)>0)
        if abs(mean(M1region6day7(i,find(M1region6day7(i,1:4)<0))))>abs(mean(M1region6day7(i,find(M1region6day7(i,1:4)>0))))
            M1region6day7(i,6)=-1;
        elseif abs(mean(M1region6day7(i,find(M1region6day7(i,1:4)<0))))<abs(mean(M1region6day7(i,find(M1region6day7(i,1:4)>0))))
            M1region6day7(i,6)=1;
        end
    end
end
M1region6day7_wrong_number=sum(M1region6day7(:,6)==-1);
M1region6day7_correct_number=sum(M1region6day7(:,6)==1);



for cell_num=1:length(M1_region6_day8_4stages)
    M1region6stage1day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))))-mean(M1region6stage1day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))));
    M1region6stage1day8_difference_struct=cell2mat(struct2cell(M1region6stage1day8_difference));
    
    M1region6stage2day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))))-mean(M1region6stage2day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))));
    M1region6stage2day8_difference_struct=cell2mat(struct2cell(M1region6stage2day8_difference));
    
    M1region6stage3day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))))-mean(M1region6stage3day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))));
    M1region6stage3day8_difference_struct=cell2mat(struct2cell(M1region6stage3day8_difference));
    
    M1region6stage4day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))))-mean(M1region6stage4day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))));
    M1region6stage4day8_difference_struct=cell2mat(struct2cell(M1region6stage4day8_difference));
end
M1region6day8=[M1region6stage1day8_difference_struct M1region6stage2day8_difference_struct M1region6stage3day8_difference_struct M1region6stage4day8_difference_struct M1_region6_day8_4stages];
for i=1:length(M1region6day8)
    
    if sum(M1region6day8(i,1:4)<0)>sum(M1region6day8(i,1:4)>0)
        M1region6day8(i,6)=-1;
    elseif sum(M1region6day8(i,1:4)<0)<sum(M1region6day8(i,1:4)>0)
        M1region6day8(i,6)=1;
    elseif sum(M1region6day8(i,1:4)<0)==sum(M1region6day8(i,1:4)>0)
        if abs(mean(M1region6day8(i,find(M1region6day8(i,1:4)<0))))>abs(mean(M1region6day8(i,find(M1region6day8(i,1:4)>0))))
            M1region6day8(i,6)=-1;
        elseif abs(mean(M1region6day8(i,find(M1region6day8(i,1:4)<0))))<abs(mean(M1region6day8(i,find(M1region6day8(i,1:4)>0))))
            M1region6day8(i,6)=1;
        end
    end
end
M1region6day8_wrong_number=sum(M1region6day8(:,6)==-1);
M1region6day8_correct_number=sum(M1region6day8(:,6)==1);

for cell_num=1:length(M1_region6_day9_4stages)
    M1region6stage1day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))))-mean(M1region6stage1day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))));
    M1region6stage1day9_difference_struct=cell2mat(struct2cell(M1region6stage1day9_difference));
    
    M1region6stage2day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))))-mean(M1region6stage2day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))));
    M1region6stage2day9_difference_struct=cell2mat(struct2cell(M1region6stage2day9_difference));
    
    M1region6stage3day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))))-mean(M1region6stage3day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))));
    M1region6stage3day9_difference_struct=cell2mat(struct2cell(M1region6stage3day9_difference));
    
    M1region6stage4day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))))-mean(M1region6stage4day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))));
    M1region6stage4day9_difference_struct=cell2mat(struct2cell(M1region6stage4day9_difference));
end
M1region6day9=[M1region6stage1day9_difference_struct M1region6stage2day9_difference_struct M1region6stage3day9_difference_struct M1region6stage4day9_difference_struct M1_region6_day9_4stages];
for i=1:length(M1region6day9)
    
    if sum(M1region6day9(i,1:4)<0)>sum(M1region6day9(i,1:4)>0)
        M1region6day9(i,6)=-1;
    elseif sum(M1region6day9(i,1:4)<0)<sum(M1region6day9(i,1:4)>0)
        M1region6day9(i,6)=1;
    elseif sum(M1region6day9(i,1:4)<0)==sum(M1region6day9(i,1:4)>0)
        if abs(mean(M1region6day9(i,find(M1region6day9(i,1:4)<0))))>abs(mean(M1region6day9(i,find(M1region6day9(i,1:4)>0))))
            M1region6day9(i,6)=-1;
        elseif abs(mean(M1region6day9(i,find(M1region6day9(i,1:4)<0))))<abs(mean(M1region6day9(i,find(M1region6day9(i,1:4)>0))))
            M1region6day9(i,6)=1;
        end
    end
end
M1region6day9_wrong_number=sum(M1region6day9(:,6)==-1);
M1region6day9_correct_number=sum(M1region6day9(:,6)==1);

for cell_num=1:length(M1_region6_day10_4stages)
    M1region6stage1day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))))-mean(M1region6stage1day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))));
    M1region6stage1day10_difference_struct=cell2mat(struct2cell(M1region6stage1day10_difference));
    
    M1region6stage2day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))))-mean(M1region6stage2day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))));
    M1region6stage2day10_difference_struct=cell2mat(struct2cell(M1region6stage2day10_difference));
    
    M1region6stage3day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))))-mean(M1region6stage3day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))));
    M1region6stage3day10_difference_struct=cell2mat(struct2cell(M1region6stage3day10_difference));
    
    M1region6stage4day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))))-mean(M1region6stage4day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))));
    M1region6stage4day10_difference_struct=cell2mat(struct2cell(M1region6stage4day10_difference));
end
M1region6day10=[M1region6stage1day10_difference_struct M1region6stage2day10_difference_struct M1region6stage3day10_difference_struct M1region6stage4day10_difference_struct M1_region6_day10_4stages];
for i=1:length(M1region6day10)
    
    if sum(M1region6day10(i,1:4)<0)>sum(M1region6day10(i,1:4)>0)
        M1region6day10(i,6)=-1;
    elseif sum(M1region6day10(i,1:4)<0)<sum(M1region6day10(i,1:4)>0)
        M1region6day10(i,6)=1;
    elseif sum(M1region6day10(i,1:4)<0)==sum(M1region6day10(i,1:4)>0)
        if abs(mean(M1region6day10(i,find(M1region6day10(i,1:4)<0))))>abs(mean(M1region6day10(i,find(M1region6day10(i,1:4)>0))))
            M1region6day10(i,6)=-1;
        elseif abs(mean(M1region6day10(i,find(M1region6day10(i,1:4)<0))))<abs(mean(M1region6day10(i,find(M1region6day10(i,1:4)>0))))
            M1region6day10(i,6)=1;
        end
    end
end
M1region6day10_wrong_number=sum(M1region6day10(:,6)==-1);
M1region6day10_correct_number=sum(M1region6day10(:,6)==1);

M1_region7_day1_4stages=union(union(union(M1region7stage1day1index,M1region7stage2day1index),M1region7stage3day1index),M1region7stage4day1index);
M1_region7_day1_0stage=setdiff(M1region7stage1day1diff_ratio_deltaF(:,1),M1_region7_day1_4stages);

M1_region7_day2_4stages=union(union(union(M1region7stage1day2index,M1region7stage2day2index),M1region7stage3day2index),M1region7stage4day2index);
M1_region7_day2_0stage=setdiff(M1region7stage1day2diff_ratio_deltaF(:,1),M1_region7_day2_4stages);

M1_region7_day3_4stages=union(union(union(M1region7stage1day3index,M1region7stage2day3index),M1region7stage3day3index),M1region7stage4day3index);
M1_region7_day3_0stage=setdiff(M1region7stage1day3diff_ratio_deltaF(:,1),M1_region7_day3_4stages);








for cell_num=1:length(M1_region7_day1_4stages)
    M1region7stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))))-mean(M1region7stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))));
    M1region7stage1day1_difference_struct=cell2mat(struct2cell(M1region7stage1day1_difference));
    
    M1region7stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))))-mean(M1region7stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))));
    M1region7stage2day1_difference_struct=cell2mat(struct2cell(M1region7stage2day1_difference));
    
    M1region7stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))))-mean(M1region7stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))));
    M1region7stage3day1_difference_struct=cell2mat(struct2cell(M1region7stage3day1_difference));
    
    M1region7stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))))-mean(M1region7stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))));
    M1region7stage4day1_difference_struct=cell2mat(struct2cell(M1region7stage4day1_difference)); 
end
M1region7day1=[M1region7stage1day1_difference_struct M1region7stage2day1_difference_struct M1region7stage3day1_difference_struct M1region7stage4day1_difference_struct M1_region7_day1_4stages];
for i=1:length(M1region7day1)
    
    if sum(M1region7day1(i,1:4)<0)>sum(M1region7day1(i,1:4)>0)
        M1region7day1(i,6)=-1;
    elseif sum(M1region7day1(i,1:4)<0)<sum(M1region7day1(i,1:4)>0)
        M1region7day1(i,6)=1;
    elseif sum(M1region7day1(i,1:4)<0)==sum(M1region7day1(i,1:4)>0)
        if abs(mean(M1region7day1(i,find(M1region7day1(i,1:4)<0))))>abs(mean(M1region7day1(i,find(M1region7day1(i,1:4)>0))))
            M1region7day1(i,6)=-1;
        elseif abs(mean(M1region7day1(i,find(M1region7day1(i,1:4)<0))))<abs(mean(M1region7day1(i,find(M1region7day1(i,1:4)>0))))
            M1region7day1(i,6)=1;
        end
    end
end
M1region7day1_wrong_number=sum(M1region7day1(:,6)==-1);
M1region7day1_correct_number=sum(M1region7day1(:,6)==1);



for cell_num=1:length(M1_region7_day2_4stages)
    M1region7stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))))-mean(M1region7stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))));
    M1region7stage1day2_difference_struct=cell2mat(struct2cell(M1region7stage1day2_difference));
    
    M1region7stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))))-mean(M1region7stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))));
    M1region7stage2day2_difference_struct=cell2mat(struct2cell(M1region7stage2day2_difference));
    
    M1region7stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))))-mean(M1region7stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))));
    M1region7stage3day2_difference_struct=cell2mat(struct2cell(M1region7stage3day2_difference));
    
    M1region7stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))))-mean(M1region7stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))));
    M1region7stage4day2_difference_struct=cell2mat(struct2cell(M1region7stage4day2_difference));
end
M1region7day2=[M1region7stage1day2_difference_struct M1region7stage2day2_difference_struct M1region7stage3day2_difference_struct M1region7stage4day2_difference_struct M1_region7_day2_4stages];
for i=1:length(M1region7day2)
    
    if sum(M1region7day2(i,1:4)<0)>sum(M1region7day2(i,1:4)>0)
        M1region7day2(i,6)=-1;
    elseif sum(M1region7day2(i,1:4)<0)<sum(M1region7day2(i,1:4)>0)
        M1region7day2(i,6)=1;
    elseif sum(M1region7day2(i,1:4)<0)==sum(M1region7day2(i,1:4)>0)
        if abs(mean(M1region7day2(i,find(M1region7day2(i,1:4)<0))))>abs(mean(M1region7day2(i,find(M1region7day2(i,1:4)>0))))
            M1region7day2(i,6)=-1;
        elseif abs(mean(M1region7day2(i,find(M1region7day2(i,1:4)<0))))<abs(mean(M1region7day2(i,find(M1region7day2(i,1:4)>0))))
            M1region7day2(i,6)=1;
        end
    end
end
M1region7day2_wrong_number=sum(M1region7day2(:,6)==-1);
M1region7day2_correct_number=sum(M1region7day2(:,6)==1);


for cell_num=1:length(M1_region7_day3_4stages)
    M1region7stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))))-mean(M1region7stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))));
    M1region7stage1day3_difference_struct=cell2mat(struct2cell(M1region7stage1day3_difference));
    
    M1region7stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))))-mean(M1region7stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))));
    M1region7stage2day3_difference_struct=cell2mat(struct2cell(M1region7stage2day3_difference));
    
    M1region7stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))))-mean(M1region7stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))));
    M1region7stage3day3_difference_struct=cell2mat(struct2cell(M1region7stage3day3_difference));
    
    M1region7stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))))-mean(M1region7stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))));
    M1region7stage4day3_difference_struct=cell2mat(struct2cell(M1region7stage4day3_difference));
end
M1region7day3=[M1region7stage1day3_difference_struct M1region7stage2day3_difference_struct M1region7stage3day3_difference_struct M1region7stage4day3_difference_struct M1_region7_day3_4stages];
for i=1:length(M1region7day3)
    
    if sum(M1region7day3(i,1:4)<0)>sum(M1region7day3(i,1:4)>0)
        M1region7day3(i,6)=-1;
    elseif sum(M1region7day3(i,1:4)<0)<sum(M1region7day3(i,1:4)>0)
        M1region7day3(i,6)=1;
    elseif sum(M1region7day3(i,1:4)<0)==sum(M1region7day3(i,1:4)>0)
        if abs(mean(M1region7day3(i,find(M1region7day3(i,1:4)<0))))>abs(mean(M1region7day3(i,find(M1region7day3(i,1:4)>0))))
            M1region7day3(i,6)=-1;
        elseif abs(mean(M1region7day3(i,find(M1region7day3(i,1:4)<0))))<abs(mean(M1region7day3(i,find(M1region7day3(i,1:4)>0))))
            M1region7day3(i,6)=1;
        end
    end
end
M1region7day3_wrong_number=sum(M1region7day3(:,6)==-1);
M1region7day3_correct_number=sum(M1region7day3(:,6)==1);



















subregions_recordingnum=M1region1day1_recordingnum+M1region1day2_recordingnum+M1region1day3_recordingnum+M1region1day4_recordingnum+M1region1day5_recordingnum+M1region1day6_recordingnum+M1region1day7_recordingnum+M1region1day8_recordingnum+M1region1day9_recordingnum+M1region1day10_recordingnum+M1region1day11_recordingnum+M1region1day12_recordingnum+M1region2day1_recordingnum+M1region2day2_recordingnum+M1region2day3_recordingnum+M1region2day4_recordingnum+M1region3day1_recordingnum+M1region3day2_recordingnum+M1region3day3_recordingnum+M1region4day1_recordingnum+M1region4day2_recordingnum+M1region4day3_recordingnum+M1region5day1_recordingnum+M1region5day2_recordingnum+M1region6day1_recordingnum+M1region6day2_recordingnum+M1region6day3_recordingnum+M1region6day4_recordingnum+M1region6day5_recordingnum+M1region6day6_recordingnum+M1region6day7_recordingnum+M1region6day8_recordingnum+M1region6day9_recordingnum+M1region6day10_recordingnum+M1region7day1_recordingnum+M1region7day2_recordingnum+M1region7day3_recordingnum;
m1_correct=M1region1day1_correct_number+M1region1day2_correct_number+M1region1day3_correct_number+M1region1day4_correct_number+M1region1day5_correct_number+M1region1day6_correct_number+M1region1day7_correct_number+M1region1day8_correct_number+M1region1day9_correct_number+M1region1day10_correct_number+M1region1day11_correct_number+M1region1day12_correct_number+M1region2day1_correct_number+M1region2day2_correct_number+M1region2day3_correct_number+M1region2day4_correct_number+M1region3day1_correct_number+M1region3day2_correct_number+M1region3day3_correct_number+M1region4day1_correct_number+M1region4day2_correct_number+M1region4day3_correct_number+M1region5day1_correct_number+M1region5day2_correct_number+M1region6day1_correct_number+M1region6day2_correct_number+M1region6day3_correct_number+M1region6day4_correct_number+M1region6day5_correct_number+M1region6day6_correct_number+M1region6day7_correct_number+M1region6day8_correct_number+M1region6day9_correct_number+M1region6day10_correct_number+M1region7day1_correct_number+M1region7day2_correct_number+M1region7day3_correct_number;

m1_wrong=M1region1day1_wrong_number+M1region1day2_wrong_number+M1region1day3_wrong_number+M1region1day4_wrong_number+M1region1day5_wrong_number+M1region1day6_wrong_number+M1region1day7_wrong_number+M1region1day8_wrong_number+M1region1day9_wrong_number+M1region1day10_wrong_number+M1region1day11_wrong_number+M1region1day12_wrong_number+M1region2day1_wrong_number+M1region2day2_wrong_number+M1region2day3_wrong_number+M1region2day4_wrong_number+M1region3day1_wrong_number+M1region3day2_wrong_number+M1region3day3_wrong_number+M1region4day1_wrong_number+M1region4day2_wrong_number+M1region4day3_wrong_number+M1region5day1_wrong_number+M1region5day2_wrong_number+M1region6day1_wrong_number+M1region6day2_wrong_number+M1region6day3_wrong_number+M1region6day4_wrong_number+M1region6day5_wrong_number+M1region6day6_wrong_number+M1region6day7_wrong_number+M1region6day8_wrong_number+M1region6day9_wrong_number+M1region6day10_wrong_number+M1region7day1_wrong_number+M1region7day2_wrong_number+M1region7day3_wrong_number;



p_m1_correct=m1_correct/subregions_recordingnum;
p_m1_wrong=m1_wrong/subregions_recordingnum;

pie([p_m1_correct,p_m1_wrong]);
cm=[0.6 0.8 0.7;0.9 0.5 0.4];
colormap(cm);






