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



mean_recording_number=mean([length(M1region1stage1day1diff_ratio_deltaF),length(M1region1stage1day2diff_ratio_deltaF),length(M1region1stage1day3diff_ratio_deltaF),length(M1region1stage1day4diff_ratio_deltaF),length(M1region1stage1day5diff_ratio_deltaF),length(M1region1stage1day6diff_ratio_deltaF),length(M1region1stage1day7diff_ratio_deltaF),length(M1region1stage1day8diff_ratio_deltaF),length(M1region1stage1day9diff_ratio_deltaF),length(M1region1stage1day10diff_ratio_deltaF),length(M1region1stage1day11diff_ratio_deltaF),length(M1region1stage1day12diff_ratio_deltaF)]);
std_recording_number=std([length(M1region1stage1day1diff_ratio_deltaF),length(M1region1stage1day2diff_ratio_deltaF),length(M1region1stage1day3diff_ratio_deltaF),length(M1region1stage1day4diff_ratio_deltaF),length(M1region1stage1day5diff_ratio_deltaF),length(M1region1stage1day6diff_ratio_deltaF),length(M1region1stage1day7diff_ratio_deltaF),length(M1region1stage1day8diff_ratio_deltaF),length(M1region1stage1day9diff_ratio_deltaF),length(M1region1stage1day10diff_ratio_deltaF),length(M1region1stage1day11diff_ratio_deltaF),length(M1region1stage1day12diff_ratio_deltaF)]);

mean_responsive_num=mean([length(M1_region1_day1_4stages),length(M1_region1_day2_4stages),length(M1_region1_day3_4stages),length(M1_region1_day4_4stages),length(M1_region1_day5_4stages),length(M1_region1_day6_4stages),length(M1_region1_day7_4stages),length(M1_region1_day8_4stages),length(M1_region1_day9_4stages),length(M1_region1_day10_4stages),length(M1_region1_day11_4stages),length(M1_region1_day12_4stages)]);
std_responsive_num=std([length(M1_region1_day1_4stages),length(M1_region1_day2_4stages),length(M1_region1_day3_4stages),length(M1_region1_day4_4stages),length(M1_region1_day5_4stages),length(M1_region1_day6_4stages),length(M1_region1_day7_4stages),length(M1_region1_day8_4stages),length(M1_region1_day9_4stages),length(M1_region1_day10_4stages),length(M1_region1_day11_4stages),length(M1_region1_day12_4stages)]);

mean_responsive_per=mean([length(M1_region1_day1_4stages)/length(M1region1stage1day1diff_ratio_deltaF),length(M1_region1_day2_4stages)/length(M1region1stage1day2diff_ratio_deltaF),length(M1_region1_day3_4stages)/length(M1region1stage1day3diff_ratio_deltaF),length(M1_region1_day4_4stages)/length(M1region1stage1day4diff_ratio_deltaF),length(M1_region1_day5_4stages)/length(M1region1stage1day5diff_ratio_deltaF),length(M1_region1_day6_4stages)/length(M1region1stage1day6diff_ratio_deltaF),length(M1_region1_day7_4stages)/length(M1region1stage1day7diff_ratio_deltaF),length(M1_region1_day8_4stages)/length(M1region1stage1day8diff_ratio_deltaF),length(M1_region1_day9_4stages)/length(M1region1stage1day9diff_ratio_deltaF),length(M1_region1_day10_4stages)/length(M1region1stage1day10diff_ratio_deltaF),length(M1_region1_day11_4stages)/length(M1region1stage1day11diff_ratio_deltaF),length(M1_region1_day12_4stages)/length(M1region1stage1day12diff_ratio_deltaF)]);
std_responsive_per=std([length(M1_region1_day1_4stages)/length(M1region1stage1day1diff_ratio_deltaF),length(M1_region1_day2_4stages)/length(M1region1stage1day2diff_ratio_deltaF),length(M1_region1_day3_4stages)/length(M1region1stage1day3diff_ratio_deltaF),length(M1_region1_day4_4stages)/length(M1region1stage1day4diff_ratio_deltaF),length(M1_region1_day5_4stages)/length(M1region1stage1day5diff_ratio_deltaF),length(M1_region1_day6_4stages)/length(M1region1stage1day6diff_ratio_deltaF),length(M1_region1_day7_4stages)/length(M1region1stage1day7diff_ratio_deltaF),length(M1_region1_day8_4stages)/length(M1region1stage1day8diff_ratio_deltaF),length(M1_region1_day9_4stages)/length(M1region1stage1day9diff_ratio_deltaF),length(M1_region1_day10_4stages)/length(M1region1stage1day10diff_ratio_deltaF),length(M1_region1_day11_4stages)/length(M1region1stage1day11diff_ratio_deltaF),length(M1_region1_day12_4stages)/length(M1region1stage1day12diff_ratio_deltaF)]);







% color_bar=bar(1,10.02);
% set(color_bar,'FaceColor',[0.6 0.2 0.3]);
% hold on
% color_bar=bar(2,15.5);
% set(color_bar,'FaceColor',[1 0.8 0.3]);
% hold on
% color_bar=bar(3,18.03);
% set(color_bar,'FaceColor',[1 0.8 0.3]);
% hold on
% color_bar=bar(4,17.90);
% set(color_bar,'FaceColor',[1 0.8 0.3]);
% hold on
% color_bar=bar(5,17.38);
% set(color_bar,'FaceColor',[1 0.8 0.3]);
% hold on
% color_bar=bar(6,21.17);
% set(color_bar,'FaceColor',[1 0.8 0.3]);
% 
% 
% hold on
% errorbar(1,10.02,7.72,'k');
% hold on
% errorbar(2,15.5,5.48,'k');
% hold on
% errorbar(3,18.03,8.06,'k');
% hold on
% errorbar(4,17.90,5.85,'k');
% hold on
% errorbar(5,17.38,6.53,'k');
% hold on
% errorbar(6,21.17,18.65,'k');

mean_m1_region1_correct=mean([M1region1day1_correct_number/M1region1day1_recordingnum,M1region1day2_correct_number/M1region1day2_recordingnum,M1region1day3_correct_number/M1region1day3_recordingnum,M1region1day4_correct_number/M1region1day4_recordingnum,M1region1day5_correct_number/M1region1day5_recordingnum,M1region1day6_correct_number/M1region1day6_recordingnum,M1region1day7_correct_number/M1region1day7_recordingnum,M1region1day8_correct_number/M1region1day8_recordingnum,M1region1day9_correct_number/M1region1day9_recordingnum,M1region1day10_correct_number/M1region1day10_recordingnum,M1region1day11_correct_number/M1region1day11_recordingnum,M1region1day12_correct_number/M1region1day12_recordingnum]);

mean_m1_region1_wrong=mean([M1region1day1_wrong_number/M1region1day1_recordingnum,M1region1day2_wrong_number/M1region1day2_recordingnum,M1region1day3_wrong_number/M1region1day3_recordingnum,M1region1day4_wrong_number/M1region1day4_recordingnum,M1region1day5_wrong_number/M1region1day5_recordingnum,M1region1day6_wrong_number/M1region1day6_recordingnum,M1region1day7_wrong_number/M1region1day7_recordingnum,M1region1day8_wrong_number/M1region1day8_recordingnum,M1region1day9_wrong_number/M1region1day9_recordingnum,M1region1day10_wrong_number/M1region1day10_recordingnum,M1region1day11_wrong_number/M1region1day11_recordingnum,M1region1day12_wrong_number/M1region1day12_recordingnum]);
std_m1_region1_correct=std([M1region1day1_correct_number/M1region1day1_recordingnum,M1region1day2_correct_number/M1region1day2_recordingnum,M1region1day3_correct_number/M1region1day3_recordingnum,M1region1day4_correct_number/M1region1day4_recordingnum,M1region1day5_correct_number/M1region1day5_recordingnum,M1region1day6_correct_number/M1region1day6_recordingnum,M1region1day7_correct_number/M1region1day7_recordingnum,M1region1day8_correct_number/M1region1day8_recordingnum,M1region1day9_correct_number/M1region1day9_recordingnum,M1region1day10_correct_number/M1region1day10_recordingnum,M1region1day11_correct_number/M1region1day11_recordingnum,M1region1day12_correct_number/M1region1day12_recordingnum]);

std_m1_region1_wrong=std([M1region1day1_wrong_number/M1region1day1_recordingnum,M1region1day2_wrong_number/M1region1day2_recordingnum,M1region1day3_wrong_number/M1region1day3_recordingnum,M1region1day4_wrong_number/M1region1day4_recordingnum,M1region1day5_wrong_number/M1region1day5_recordingnum,M1region1day6_wrong_number/M1region1day6_recordingnum,M1region1day7_wrong_number/M1region1day7_recordingnum,M1region1day8_wrong_number/M1region1day8_recordingnum,M1region1day9_wrong_number/M1region1day9_recordingnum,M1region1day10_wrong_number/M1region1day10_recordingnum,M1region1day11_wrong_number/M1region1day11_recordingnum,M1region1day12_wrong_number/M1region1day12_recordingnum]);
pie([mean_m1_region1_correct,mean_m1_region1_wrong]);
cm=[0.6 0.8 0.7;0.9 0.5 0.4];
colormap(cm);

