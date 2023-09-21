
load('L:\Monkey2\region1\20220426\proportions_of_cells_encoding_current_trials_outcome_20220426.mat');
load('L:\Monkey2\region1\20220427\proportions_of_cells_encoding_current_trials_outcome_20220427.mat');
load('L:\Monkey2\region1\20220428\proportions_of_cells_encoding_current_trials_outcome_20220428.mat');
load('L:\Monkey2\region1\20220429\proportions_of_cells_encoding_current_trials_outcome_20220429.mat');
load('L:\Monkey2\region1\20220430\proportions_of_cells_encoding_current_trials_outcome_20220430.mat');
load('L:\Monkey2\region1\20220501\proportions_of_cells_encoding_current_trials_outcome_20220501.mat');
load('L:\Monkey2\region1\20220502\proportions_of_cells_encoding_current_trials_outcome_20220502.mat');
load('L:\Monkey2\region2\20220503\proportions_of_cells_encoding_current_trials_outcome_20220503.mat');
load('L:\Monkey2\region2\20220504\proportions_of_cells_encoding_current_trials_outcome_20220504.mat');
load('L:\Monkey2\region2\20220505\proportions_of_cells_encoding_current_trials_outcome_20220505.mat');
load('L:\Monkey2\region2\20220506\proportions_of_cells_encoding_current_trials_outcome_20220506.mat');
load('L:\Monkey2\region3\20220507\proportions_of_cells_encoding_current_trials_outcome_20220507.mat');
load('L:\Monkey2\region3\20220508\proportions_of_cells_encoding_current_trials_outcome_20220508.mat');
load('L:\Monkey2\region3\20220509\proportions_of_cells_encoding_current_trials_outcome_20220509.mat');
load('L:\Monkey2\region3\20220510\proportions_of_cells_encoding_current_trials_outcome_20220510.mat');
load('L:\Monkey2\region3\20220511\proportions_of_cells_encoding_current_trials_outcome_20220511.mat');
load('L:\Monkey2\region3\20220512\proportions_of_cells_encoding_current_trials_outcome_20220512.mat');
load('L:\Monkey2\region3\20220513\proportions_of_cells_encoding_current_trials_outcome_20220513.mat');
load('L:\Monkey2\region4\20220517\proportions_of_cells_encoding_current_trials_outcome_20220517.mat');
load('L:\Monkey2\region4\20220518\proportions_of_cells_encoding_current_trials_outcome_20220518.mat');
load('L:\Monkey2\region4\20220519\proportions_of_cells_encoding_current_trials_outcome_20220519.mat');
load('L:\Monkey2\region5\20220524\proportions_of_cells_encoding_current_trials_outcome_20220524.mat');
load('L:\Monkey2\region5\20220526\proportions_of_cells_encoding_current_trials_outcome_20220526.mat');
load('L:\Monkey2\region5\20220527\proportions_of_cells_encoding_current_trials_outcome_20220527.mat');
load('L:\Monkey2\region5\20220528\proportions_of_cells_encoding_current_trials_outcome_20220528.mat');
load('L:\Monkey2\region5\20220529\proportions_of_cells_encoding_current_trials_outcome_20220529.mat');
load('L:\Monkey2\region5\20220530\proportions_of_cells_encoding_current_trials_outcome_20220530.mat');
load('L:\Monkey2\region6\20220610\proportions_of_cells_encoding_current_trials_outcome_20220610.mat');
load('L:\Monkey2\region6\20220611\proportions_of_cells_encoding_current_trials_outcome_20220611.mat');
load('L:\Monkey2\region6\20220612\proportions_of_cells_encoding_current_trials_outcome_20220612.mat');
load('L:\Monkey2\region6\20220613\proportions_of_cells_encoding_current_trials_outcome_20220613.mat');
load('L:\Monkey2\region7\20220618\proportions_of_cells_encoding_current_trials_outcome_20220618.mat');
load('L:\Monkey2\region7\20220619\proportions_of_cells_encoding_current_trials_outcome_20220619.mat');
load('L:\Monkey2\region7\20220620\proportions_of_cells_encoding_current_trials_outcome_20220620.mat');
load('L:\Monkey2\region7\20220621\proportions_of_cells_encoding_current_trials_outcome_20220621.mat');
load('L:\Monkey2\region7\20220622\proportions_of_cells_encoding_current_trials_outcome_20220622.mat');
load('L:\Monkey2\region7\20220623\proportions_of_cells_encoding_current_trials_outcome_20220623.mat');
load('L:\Monkey2\region8\20220624\proportions_of_cells_encoding_current_trials_outcome_20220624.mat');
load('L:\Monkey2\region8\20220627\proportions_of_cells_encoding_current_trials_outcome_20220627.mat');
load('L:\Monkey2\region8\20220628\proportions_of_cells_encoding_current_trials_outcome_20220628.mat');
load('L:\Monkey2\region8\20220629\proportions_of_cells_encoding_current_trials_outcome_20220629.mat');
load('L:\Monkey2\region8\20220630\proportions_of_cells_encoding_current_trials_outcome_20220630.mat');



M2_region1_day1_4stages=union(union(union(M2region1stage1day1index,M2region1stage2day1index),M2region1stage3day1index),M2region1stage4day1index);
M2_region1_day1_0stage=setdiff(M2region1stage1day1diff_ratio_deltaF(:,1),M2_region1_day1_4stages);

M2_region1_day2_4stages=union(union(union(M2region1stage1day2index,M2region1stage2day2index),M2region1stage3day2index),M2region1stage4day2index);
M2_region1_day2_0stage=setdiff(M2region1stage1day2diff_ratio_deltaF(:,1),M2_region1_day2_4stages);

M2_region1_day3_4stages=union(union(union(M2region1stage1day3index,M2region1stage2day3index),M2region1stage3day3index),M2region1stage4day3index);
M2_region1_day3_0stage=setdiff(M2region1stage1day3diff_ratio_deltaF(:,1),M2_region1_day3_4stages);

M2_region1_day4_4stages=union(union(union(M2region1stage1day4index,M2region1stage2day4index),M2region1stage3day4index),M2region1stage4day4index);
M2_region1_day4_0stage=setdiff(M2region1stage1day4diff_ratio_deltaF(:,1),M2_region1_day4_4stages);

M2_region1_day5_4stages=union(union(union(M2region1stage1day5index,M2region1stage2day5index),M2region1stage3day5index),M2region1stage4day5index);
M2_region1_day5_0stage=setdiff(M2region1stage1day5diff_ratio_deltaF(:,1),M2_region1_day5_4stages);

M2_region1_day6_4stages=union(union(union(M2region1stage1day6index,M2region1stage2day6index),M2region1stage3day6index),M2region1stage4day6index);
M2_region1_day6_0stage=setdiff(M2region1stage1day6diff_ratio_deltaF(:,1),M2_region1_day6_4stages);

M2_region1_day7_4stages=union(union(union(M2region1stage1day7index,M2region1stage2day7index),M2region1stage3day7index),M2region1stage4day7index);
M2_region1_day7_0stage=setdiff(M2region1stage1day7diff_ratio_deltaF(:,1),M2_region1_day7_4stages);











for cell_num=1:length(M2_region1_day1_4stages)
    M2region1stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))))-mean(M2region1stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))));
    M2region1stage1day1_difference_struct=cell2mat(struct2cell(M2region1stage1day1_difference));
    
    M2region1stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))))-mean(M2region1stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))));
    M2region1stage2day1_difference_struct=cell2mat(struct2cell(M2region1stage2day1_difference));
    
    M2region1stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))))-mean(M2region1stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))));
    M2region1stage3day1_difference_struct=cell2mat(struct2cell(M2region1stage3day1_difference));
    
    M2region1stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))))-mean(M2region1stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))));
    M2region1stage4day1_difference_struct=cell2mat(struct2cell(M2region1stage4day1_difference)); 
end
M2region1day1=[M2region1stage1day1_difference_struct M2region1stage2day1_difference_struct M2region1stage3day1_difference_struct M2region1stage4day1_difference_struct M2_region1_day1_4stages];
for i=1:length(M2region1day1)
    
    if sum(M2region1day1(i,1:4)<0)>sum(M2region1day1(i,1:4)>0)
        M2region1day1(i,6)=-1;
    elseif sum(M2region1day1(i,1:4)<0)<sum(M2region1day1(i,1:4)>0)
        M2region1day1(i,6)=1;
    elseif sum(M2region1day1(i,1:4)<0)==sum(M2region1day1(i,1:4)>0)
        if abs(mean(M2region1day1(i,find(M2region1day1(i,1:4)<0))))>abs(mean(M2region1day1(i,find(M2region1day1(i,1:4)>0))))
            M2region1day1(i,6)=-1;
        elseif abs(mean(M2region1day1(i,find(M2region1day1(i,1:4)<0))))<abs(mean(M2region1day1(i,find(M2region1day1(i,1:4)>0))))
            M2region1day1(i,6)=1;
        end
    end
end
M2region1day1_wrong_number=sum(M2region1day1(:,6)==-1);
M2region1day1_correct_number=sum(M2region1day1(:,6)==1);




for cell_num=1:length(M2_region1_day2_4stages)
    M2region1stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))))-mean(M2region1stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))));
    M2region1stage1day2_difference_struct=cell2mat(struct2cell(M2region1stage1day2_difference));
    
    M2region1stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))))-mean(M2region1stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))));
    M2region1stage2day2_difference_struct=cell2mat(struct2cell(M2region1stage2day2_difference));
    
    M2region1stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))))-mean(M2region1stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))));
    M2region1stage3day2_difference_struct=cell2mat(struct2cell(M2region1stage3day2_difference));
    
    M2region1stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))))-mean(M2region1stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))));
    M2region1stage4day2_difference_struct=cell2mat(struct2cell(M2region1stage4day2_difference));
end
M2region1day2=[M2region1stage1day2_difference_struct M2region1stage2day2_difference_struct M2region1stage3day2_difference_struct M2region1stage4day2_difference_struct M2_region1_day2_4stages];
for i=1:length(M2region1day2)
    
    if sum(M2region1day2(i,1:4)<0)>sum(M2region1day2(i,1:4)>0)
        M2region1day2(i,6)=-1;
    elseif sum(M2region1day2(i,1:4)<0)<sum(M2region1day2(i,1:4)>0)
        M2region1day2(i,6)=1;
    elseif sum(M2region1day2(i,1:4)<0)==sum(M2region1day2(i,1:4)>0)
        if abs(mean(M2region1day2(i,find(M2region1day2(i,1:4)<0))))>abs(mean(M2region1day2(i,find(M2region1day2(i,1:4)>0))))
            M2region1day2(i,6)=-1;
        elseif abs(mean(M2region1day2(i,find(M2region1day2(i,1:4)<0))))<abs(mean(M2region1day2(i,find(M2region1day2(i,1:4)>0))))
            M2region1day2(i,6)=1;
        end
    end
end
M2region1day2_wrong_number=sum(M2region1day2(:,6)==-1);
M2region1day2_correct_number=sum(M2region1day2(:,6)==1);


for cell_num=1:length(M2_region1_day3_4stages)
    M2region1stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))))-mean(M2region1stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))));
    M2region1stage1day3_difference_struct=cell2mat(struct2cell(M2region1stage1day3_difference));
    
    M2region1stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))))-mean(M2region1stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))));
    M2region1stage2day3_difference_struct=cell2mat(struct2cell(M2region1stage2day3_difference));
    
    M2region1stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))))-mean(M2region1stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))));
    M2region1stage3day3_difference_struct=cell2mat(struct2cell(M2region1stage3day3_difference));
    
    M2region1stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))))-mean(M2region1stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))));
    M2region1stage4day3_difference_struct=cell2mat(struct2cell(M2region1stage4day3_difference));
end
M2region1day3=[M2region1stage1day3_difference_struct M2region1stage2day3_difference_struct M2region1stage3day3_difference_struct M2region1stage4day3_difference_struct M2_region1_day3_4stages];
for i=1:length(M2region1day3)
    
    if sum(M2region1day3(i,1:4)<0)>sum(M2region1day3(i,1:4)>0)
        M2region1day3(i,6)=-1;
    elseif sum(M2region1day3(i,1:4)<0)<sum(M2region1day3(i,1:4)>0)
        M2region1day3(i,6)=1;
    elseif sum(M2region1day3(i,1:4)<0)==sum(M2region1day3(i,1:4)>0)
        if abs(mean(M2region1day3(i,find(M2region1day3(i,1:4)<0))))>abs(mean(M2region1day3(i,find(M2region1day3(i,1:4)>0))))
            M2region1day3(i,6)=-1;
        elseif abs(mean(M2region1day3(i,find(M2region1day3(i,1:4)<0))))<abs(mean(M2region1day3(i,find(M2region1day3(i,1:4)>0))))
            M2region1day3(i,6)=1;
        end
    end
end
M2region1day3_wrong_number=sum(M2region1day3(:,6)==-1);
M2region1day3_correct_number=sum(M2region1day3(:,6)==1);





for cell_num=1:length(M2_region1_day4_4stages)
    M2region1stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))))-mean(M2region1stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))));
    M2region1stage1day4_difference_struct=cell2mat(struct2cell(M2region1stage1day4_difference));
    
    M2region1stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))))-mean(M2region1stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))));
    M2region1stage2day4_difference_struct=cell2mat(struct2cell(M2region1stage2day4_difference));
    
    M2region1stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))))-mean(M2region1stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))));
    M2region1stage3day4_difference_struct=cell2mat(struct2cell(M2region1stage3day4_difference));
    
    M2region1stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))))-mean(M2region1stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))));
    M2region1stage4day4_difference_struct=cell2mat(struct2cell(M2region1stage4day4_difference));
end
M2region1day4=[M2region1stage1day4_difference_struct M2region1stage2day4_difference_struct M2region1stage3day4_difference_struct M2region1stage4day4_difference_struct M2_region1_day4_4stages];
for i=1:length(M2region1day4)
    
    if sum(M2region1day4(i,1:4)<0)>sum(M2region1day4(i,1:4)>0)
        M2region1day4(i,6)=-1;
    elseif sum(M2region1day4(i,1:4)<0)<sum(M2region1day4(i,1:4)>0)
        M2region1day4(i,6)=1;
    elseif sum(M2region1day4(i,1:4)<0)==sum(M2region1day4(i,1:4)>0)
        if abs(mean(M2region1day4(i,find(M2region1day4(i,1:4)<0))))>abs(mean(M2region1day4(i,find(M2region1day4(i,1:4)>0))))
            M2region1day4(i,6)=-1;
        elseif abs(mean(M2region1day4(i,find(M2region1day4(i,1:4)<0))))<abs(mean(M2region1day4(i,find(M2region1day4(i,1:4)>0))))
            M2region1day4(i,6)=1;
        end
    end
end
M2region1day4_wrong_number=sum(M2region1day4(:,6)==-1);
M2region1day4_correct_number=sum(M2region1day4(:,6)==1);



for cell_num=1:length(M2_region1_day5_4stages)
    M2region1stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))))-mean(M2region1stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))));
    M2region1stage1day5_difference_struct=cell2mat(struct2cell(M2region1stage1day5_difference));
    
    M2region1stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))))-mean(M2region1stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))));
    M2region1stage2day5_difference_struct=cell2mat(struct2cell(M2region1stage2day5_difference));
    
    M2region1stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))))-mean(M2region1stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))));
    M2region1stage3day5_difference_struct=cell2mat(struct2cell(M2region1stage3day5_difference));
    
    M2region1stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))))-mean(M2region1stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))));
    M2region1stage4day5_difference_struct=cell2mat(struct2cell(M2region1stage4day5_difference));
end
M2region1day5=[M2region1stage1day5_difference_struct M2region1stage2day5_difference_struct M2region1stage3day5_difference_struct M2region1stage4day5_difference_struct M2_region1_day5_4stages];
for i=1:length(M2region1day5)
    
    if sum(M2region1day5(i,1:4)<0)>sum(M2region1day5(i,1:4)>0)
        M2region1day5(i,6)=-1;
    elseif sum(M2region1day5(i,1:4)<0)<sum(M2region1day5(i,1:4)>0)
        M2region1day5(i,6)=1;
    elseif sum(M2region1day5(i,1:4)<0)==sum(M2region1day5(i,1:4)>0)
        if abs(mean(M2region1day5(i,find(M2region1day5(i,1:4)<0))))>abs(mean(M2region1day5(i,find(M2region1day5(i,1:4)>0))))
            M2region1day5(i,6)=-1;
        elseif abs(mean(M2region1day5(i,find(M2region1day5(i,1:4)<0))))<abs(mean(M2region1day5(i,find(M2region1day5(i,1:4)>0))))
            M2region1day5(i,6)=1;
        end
    end
end
M2region1day5_wrong_number=sum(M2region1day5(:,6)==-1);
M2region1day5_correct_number=sum(M2region1day5(:,6)==1);



for cell_num=1:length(M2_region1_day6_4stages)
    M2region1stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))))-mean(M2region1stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))));
    M2region1stage1day6_difference_struct=cell2mat(struct2cell(M2region1stage1day6_difference));
    
    M2region1stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))))-mean(M2region1stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))));
    M2region1stage2day6_difference_struct=cell2mat(struct2cell(M2region1stage2day6_difference));
    
    M2region1stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))))-mean(M2region1stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))));
    M2region1stage3day6_difference_struct=cell2mat(struct2cell(M2region1stage3day6_difference));
    
    M2region1stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))))-mean(M2region1stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))));
    M2region1stage4day6_difference_struct=cell2mat(struct2cell(M2region1stage4day6_difference));
end
M2region1day6=[M2region1stage1day6_difference_struct M2region1stage2day6_difference_struct M2region1stage3day6_difference_struct M2region1stage4day6_difference_struct M2_region1_day6_4stages];
for i=1:length(M2region1day6)
    
    if sum(M2region1day6(i,1:4)<0)>sum(M2region1day6(i,1:4)>0)
        M2region1day6(i,6)=-1;
    elseif sum(M2region1day6(i,1:4)<0)<sum(M2region1day6(i,1:4)>0)
        M2region1day6(i,6)=1;
    elseif sum(M2region1day6(i,1:4)<0)==sum(M2region1day6(i,1:4)>0)
        if abs(mean(M2region1day6(i,find(M2region1day6(i,1:4)<0))))>abs(mean(M2region1day6(i,find(M2region1day6(i,1:4)>0))))
            M2region1day6(i,6)=-1;
        elseif abs(mean(M2region1day6(i,find(M2region1day6(i,1:4)<0))))<abs(mean(M2region1day6(i,find(M2region1day6(i,1:4)>0))))
            M2region1day6(i,6)=1;
        end
    end
end
M2region1day6_wrong_number=sum(M2region1day6(:,6)==-1);
M2region1day6_correct_number=sum(M2region1day6(:,6)==1);



for cell_num=1:length(M2_region1_day7_4stages)
    M2region1stage1day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))))-mean(M2region1stage1day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))));
    M2region1stage1day7_difference_struct=cell2mat(struct2cell(M2region1stage1day7_difference));
    
    M2region1stage2day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))))-mean(M2region1stage2day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))));
    M2region1stage2day7_difference_struct=cell2mat(struct2cell(M2region1stage2day7_difference));
    
    M2region1stage3day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))))-mean(M2region1stage3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))));
    M2region1stage3day7_difference_struct=cell2mat(struct2cell(M2region1stage3day7_difference));
    
    M2region1stage4day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))))-mean(M2region1stage4day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))));
    M2region1stage4day7_difference_struct=cell2mat(struct2cell(M2region1stage4day7_difference));
end
M2region1day7=[M2region1stage1day7_difference_struct M2region1stage2day7_difference_struct M2region1stage3day7_difference_struct M2region1stage4day7_difference_struct M2_region1_day7_4stages];
for i=1:length(M2region1day7)
    
    if sum(M2region1day7(i,1:4)<0)>sum(M2region1day7(i,1:4)>0)
        M2region1day7(i,6)=-1;
    elseif sum(M2region1day7(i,1:4)<0)<sum(M2region1day7(i,1:4)>0)
        M2region1day7(i,6)=1;
    elseif sum(M2region1day7(i,1:4)<0)==sum(M2region1day7(i,1:4)>0)
        if abs(mean(M2region1day7(i,find(M2region1day7(i,1:4)<0))))>abs(mean(M2region1day7(i,find(M2region1day7(i,1:4)>0))))
            M2region1day7(i,6)=-1;
        elseif abs(mean(M2region1day7(i,find(M2region1day7(i,1:4)<0))))<abs(mean(M2region1day7(i,find(M2region1day7(i,1:4)>0))))
            M2region1day7(i,6)=1;
        end
    end
end
M2region1day7_wrong_number=sum(M2region1day7(:,6)==-1);
M2region1day7_correct_number=sum(M2region1day7(:,6)==1);

M2_region2_day1_4stages=union(union(union(M2region2stage1day1index,M2region2stage2day1index),M2region2stage3day1index),M2region2stage4day1index);
M2_region2_day1_0stage=setdiff(M2region2stage1day1diff_ratio_deltaF(:,1),M2_region2_day1_4stages);

M2_region2_day2_4stages=union(union(union(M2region2stage1day2index,M2region2stage2day2index),M2region2stage3day2index),M2region2stage4day2index);
M2_region2_day2_0stage=setdiff(M2region2stage1day2diff_ratio_deltaF(:,1),M2_region2_day2_4stages);

M2_region2_day3_4stages=union(union(union(M2region2stage1day3index,M2region2stage2day3index),M2region2stage3day3index),M2region2stage4day3index);
M2_region2_day3_0stage=setdiff(M2region2stage1day3diff_ratio_deltaF(:,1),M2_region2_day3_4stages);

M2_region2_day4_4stages=union(union(union(M2region2stage1day4index,M2region2stage2day4index),M2region2stage3day4index),M2region2stage4day4index);
M2_region2_day4_0stage=setdiff(M2region2stage1day4diff_ratio_deltaF(:,1),M2_region2_day4_4stages);








for cell_num=1:length(M2_region2_day1_4stages)
    M2region2stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))))-mean(M2region2stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))));
    M2region2stage1day1_difference_struct=cell2mat(struct2cell(M2region2stage1day1_difference));
    
    M2region2stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))))-mean(M2region2stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))));
    M2region2stage2day1_difference_struct=cell2mat(struct2cell(M2region2stage2day1_difference));
    
    M2region2stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))))-mean(M2region2stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))));
    M2region2stage3day1_difference_struct=cell2mat(struct2cell(M2region2stage3day1_difference));
    
    M2region2stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))))-mean(M2region2stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))));
    M2region2stage4day1_difference_struct=cell2mat(struct2cell(M2region2stage4day1_difference)); 
end
M2region2day1=[M2region2stage1day1_difference_struct M2region2stage2day1_difference_struct M2region2stage3day1_difference_struct M2region2stage4day1_difference_struct M2_region2_day1_4stages];
for i=1:length(M2region2day1)
    
    if sum(M2region2day1(i,1:4)<0)>sum(M2region2day1(i,1:4)>0)
        M2region2day1(i,6)=-1;
    elseif sum(M2region2day1(i,1:4)<0)<sum(M2region2day1(i,1:4)>0)
        M2region2day1(i,6)=1;
    elseif sum(M2region2day1(i,1:4)<0)==sum(M2region2day1(i,1:4)>0)
        if abs(mean(M2region2day1(i,find(M2region2day1(i,1:4)<0))))>abs(mean(M2region2day1(i,find(M2region2day1(i,1:4)>0))))
            M2region2day1(i,6)=-1;
        elseif abs(mean(M2region2day1(i,find(M2region2day1(i,1:4)<0))))<abs(mean(M2region2day1(i,find(M2region2day1(i,1:4)>0))))
            M2region2day1(i,6)=1;
        end
    end
end
M2region2day1_wrong_number=sum(M2region2day1(:,6)==-1);
M2region2day1_correct_number=sum(M2region2day1(:,6)==1);




for cell_num=1:length(M2_region2_day2_4stages)
    M2region2stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))))-mean(M2region2stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))));
    M2region2stage1day2_difference_struct=cell2mat(struct2cell(M2region2stage1day2_difference));
    
    M2region2stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))))-mean(M2region2stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))));
    M2region2stage2day2_difference_struct=cell2mat(struct2cell(M2region2stage2day2_difference));
    
    M2region2stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))))-mean(M2region2stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))));
    M2region2stage3day2_difference_struct=cell2mat(struct2cell(M2region2stage3day2_difference));
    
    M2region2stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))))-mean(M2region2stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))));
    M2region2stage4day2_difference_struct=cell2mat(struct2cell(M2region2stage4day2_difference));
end
M2region2day2=[M2region2stage1day2_difference_struct M2region2stage2day2_difference_struct M2region2stage3day2_difference_struct M2region2stage4day2_difference_struct M2_region2_day2_4stages];
for i=1:length(M2region2day2)
    
    if sum(M2region2day2(i,1:4)<0)>sum(M2region2day2(i,1:4)>0)
        M2region2day2(i,6)=-1;
    elseif sum(M2region2day2(i,1:4)<0)<sum(M2region2day2(i,1:4)>0)
        M2region2day2(i,6)=1;
    elseif sum(M2region2day2(i,1:4)<0)==sum(M2region2day2(i,1:4)>0)
        if abs(mean(M2region2day2(i,find(M2region2day2(i,1:4)<0))))>abs(mean(M2region2day2(i,find(M2region2day2(i,1:4)>0))))
            M2region2day2(i,6)=-1;
        elseif abs(mean(M2region2day2(i,find(M2region2day2(i,1:4)<0))))<abs(mean(M2region2day2(i,find(M2region2day2(i,1:4)>0))))
            M2region2day2(i,6)=1;
        end
    end
end
M2region2day2_wrong_number=sum(M2region2day2(:,6)==-1);
M2region2day2_correct_number=sum(M2region2day2(:,6)==1);


for cell_num=1:length(M2_region2_day3_4stages)
    M2region2stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))))-mean(M2region2stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))));
    M2region2stage1day3_difference_struct=cell2mat(struct2cell(M2region2stage1day3_difference));
    
    M2region2stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))))-mean(M2region2stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))));
    M2region2stage2day3_difference_struct=cell2mat(struct2cell(M2region2stage2day3_difference));
    
    M2region2stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))))-mean(M2region2stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))));
    M2region2stage3day3_difference_struct=cell2mat(struct2cell(M2region2stage3day3_difference));
    
    M2region2stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))))-mean(M2region2stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))));
    M2region2stage4day3_difference_struct=cell2mat(struct2cell(M2region2stage4day3_difference));
end
M2region2day3=[M2region2stage1day3_difference_struct M2region2stage2day3_difference_struct M2region2stage3day3_difference_struct M2region2stage4day3_difference_struct M2_region2_day3_4stages];
for i=1:length(M2region2day3)
    
    if sum(M2region2day3(i,1:4)<0)>sum(M2region2day3(i,1:4)>0)
        M2region2day3(i,6)=-1;
    elseif sum(M2region2day3(i,1:4)<0)<sum(M2region2day3(i,1:4)>0)
        M2region2day3(i,6)=1;
    elseif sum(M2region2day3(i,1:4)<0)==sum(M2region2day3(i,1:4)>0)
        if abs(mean(M2region2day3(i,find(M2region2day3(i,1:4)<0))))>abs(mean(M2region2day3(i,find(M2region2day3(i,1:4)>0))))
            M2region2day3(i,6)=-1;
        elseif abs(mean(M2region2day3(i,find(M2region2day3(i,1:4)<0))))<abs(mean(M2region2day3(i,find(M2region2day3(i,1:4)>0))))
            M2region2day3(i,6)=1;
        end
    end
end
M2region2day3_wrong_number=sum(M2region2day3(:,6)==-1);
M2region2day3_correct_number=sum(M2region2day3(:,6)==1);





for cell_num=1:length(M2_region2_day4_4stages)
    M2region2stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))))-mean(M2region2stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))));
    M2region2stage1day4_difference_struct=cell2mat(struct2cell(M2region2stage1day4_difference));
    
    M2region2stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))))-mean(M2region2stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))));
    M2region2stage2day4_difference_struct=cell2mat(struct2cell(M2region2stage2day4_difference));
    
    M2region2stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))))-mean(M2region2stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))));
    M2region2stage3day4_difference_struct=cell2mat(struct2cell(M2region2stage3day4_difference));
    
    M2region2stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))))-mean(M2region2stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))));
    M2region2stage4day4_difference_struct=cell2mat(struct2cell(M2region2stage4day4_difference));
end
M2region2day4=[M2region2stage1day4_difference_struct M2region2stage2day4_difference_struct M2region2stage3day4_difference_struct M2region2stage4day4_difference_struct M2_region2_day4_4stages];
for i=1:length(M2region2day4)
    
    if sum(M2region2day4(i,1:4)<0)>sum(M2region2day4(i,1:4)>0)
        M2region2day4(i,6)=-1;
    elseif sum(M2region2day4(i,1:4)<0)<sum(M2region2day4(i,1:4)>0)
        M2region2day4(i,6)=1;
    elseif sum(M2region2day4(i,1:4)<0)==sum(M2region2day4(i,1:4)>0)
        if abs(mean(M2region2day4(i,find(M2region2day4(i,1:4)<0))))>abs(mean(M2region2day4(i,find(M2region2day4(i,1:4)>0))))
            M2region2day4(i,6)=-1;
        elseif abs(mean(M2region2day4(i,find(M2region2day4(i,1:4)<0))))<abs(mean(M2region2day4(i,find(M2region2day4(i,1:4)>0))))
            M2region2day4(i,6)=1;
        end
    end
end
M2region2day4_wrong_number=sum(M2region2day4(:,6)==-1);
M2region2day4_correct_number=sum(M2region2day4(:,6)==1);


M2_region3_day1_4stages=union(union(union(M2region3stage1day1index,M2region3stage2day1index),M2region3stage3day1index),M2region3stage4day1index);
M2_region3_day1_0stage=setdiff(M2region3stage1day1diff_ratio_deltaF(:,1),M2_region3_day1_4stages);

M2_region3_day2_4stages=union(union(union(M2region3stage1day2index,M2region3stage2day2index),M2region3stage3day2index),M2region3stage4day2index);
M2_region3_day2_0stage=setdiff(M2region3stage1day2diff_ratio_deltaF(:,1),M2_region3_day2_4stages);

M2_region3_day3_4stages=union(union(union(M2region3stage1day3index,M2region3stage2day3index),M2region3stage3day3index),M2region3stage4day3index);
M2_region3_day3_0stage=setdiff(M2region3stage1day3diff_ratio_deltaF(:,1),M2_region3_day3_4stages);

M2_region3_day4_4stages=union(union(union(M2region3stage1day4index,M2region3stage2day4index),M2region3stage3day4index),M2region3stage4day4index);
M2_region3_day4_0stage=setdiff(M2region3stage1day4diff_ratio_deltaF(:,1),M2_region3_day4_4stages);

M2_region3_day5_4stages=union(union(union(M2region3stage1day5index,M2region3stage2day5index),M2region3stage3day5index),M2region3stage4day5index);
M2_region3_day5_0stage=setdiff(M2region3stage1day5diff_ratio_deltaF(:,1),M2_region3_day5_4stages);

M2_region3_day6_4stages=union(union(union(M2region3stage1day6index,M2region3stage2day6index),M2region3stage3day6index),M2region3stage4day6index);
M2_region3_day6_0stage=setdiff(M2region3stage1day6diff_ratio_deltaF(:,1),M2_region3_day6_4stages);

M2_region3_day7_4stages=union(union(union(M2region3stage1day7index,M2region3stage2day7index),M2region3stage3day7index),M2region3stage4day7index);
M2_region3_day7_0stage=setdiff(M2region3stage1day7diff_ratio_deltaF(:,1),M2_region3_day7_4stages);







for cell_num=1:length(M2_region3_day1_4stages)
    M2region3stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))))-mean(M2region3stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))));
    M2region3stage1day1_difference_struct=cell2mat(struct2cell(M2region3stage1day1_difference));
    
    M2region3stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))))-mean(M2region3stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))));
    M2region3stage2day1_difference_struct=cell2mat(struct2cell(M2region3stage2day1_difference));
    
    M2region3stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))))-mean(M2region3stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))));
    M2region3stage3day1_difference_struct=cell2mat(struct2cell(M2region3stage3day1_difference));
    
    M2region3stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))))-mean(M2region3stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))));
    M2region3stage4day1_difference_struct=cell2mat(struct2cell(M2region3stage4day1_difference)); 
end
M2region3day1=[M2region3stage1day1_difference_struct M2region3stage2day1_difference_struct M2region3stage3day1_difference_struct M2region3stage4day1_difference_struct M2_region3_day1_4stages];
for i=1:length(M2region3day1)
    
    if sum(M2region3day1(i,1:4)<0)>sum(M2region3day1(i,1:4)>0)
        M2region3day1(i,6)=-1;
    elseif sum(M2region3day1(i,1:4)<0)<sum(M2region3day1(i,1:4)>0)
        M2region3day1(i,6)=1;
    elseif sum(M2region3day1(i,1:4)<0)==sum(M2region3day1(i,1:4)>0)
        if abs(mean(M2region3day1(i,find(M2region3day1(i,1:4)<0))))>abs(mean(M2region3day1(i,find(M2region3day1(i,1:4)>0))))
            M2region3day1(i,6)=-1;
        elseif abs(mean(M2region3day1(i,find(M2region3day1(i,1:4)<0))))<abs(mean(M2region3day1(i,find(M2region3day1(i,1:4)>0))))
            M2region3day1(i,6)=1;
        end
    end
end
M2region3day1_wrong_number=sum(M2region3day1(:,6)==-1);
M2region3day1_correct_number=sum(M2region3day1(:,6)==1);





for cell_num=1:length(M2_region3_day2_4stages)
    M2region3stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))))-mean(M2region3stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))));
    M2region3stage1day2_difference_struct=cell2mat(struct2cell(M2region3stage1day2_difference));
    
    M2region3stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))))-mean(M2region3stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))));
    M2region3stage2day2_difference_struct=cell2mat(struct2cell(M2region3stage2day2_difference));
    
    M2region3stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))))-mean(M2region3stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))));
    M2region3stage3day2_difference_struct=cell2mat(struct2cell(M2region3stage3day2_difference));
    
    M2region3stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))))-mean(M2region3stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))));
    M2region3stage4day2_difference_struct=cell2mat(struct2cell(M2region3stage4day2_difference));
end
M2region3day2=[M2region3stage1day2_difference_struct M2region3stage2day2_difference_struct M2region3stage3day2_difference_struct M2region3stage4day2_difference_struct M2_region3_day2_4stages];
for i=1:length(M2region3day2)
    
    if sum(M2region3day2(i,1:4)<0)>sum(M2region3day2(i,1:4)>0)
        M2region3day2(i,6)=-1;
    elseif sum(M2region3day2(i,1:4)<0)<sum(M2region3day2(i,1:4)>0)
        M2region3day2(i,6)=1;
    elseif sum(M2region3day2(i,1:4)<0)==sum(M2region3day2(i,1:4)>0)
        if abs(mean(M2region3day2(i,find(M2region3day2(i,1:4)<0))))>abs(mean(M2region3day2(i,find(M2region3day2(i,1:4)>0))))
            M2region3day2(i,6)=-1;
        elseif abs(mean(M2region3day2(i,find(M2region3day2(i,1:4)<0))))<abs(mean(M2region3day2(i,find(M2region3day2(i,1:4)>0))))
            M2region3day2(i,6)=1;
        end
    end
end
M2region3day2_wrong_number=sum(M2region3day2(:,6)==-1);
M2region3day2_correct_number=sum(M2region3day2(:,6)==1);



for cell_num=1:length(M2_region3_day3_4stages)
    M2region3stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))))-mean(M2region3stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))));
    M2region3stage1day3_difference_struct=cell2mat(struct2cell(M2region3stage1day3_difference));
    
    M2region3stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))))-mean(M2region3stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))));
    M2region3stage2day3_difference_struct=cell2mat(struct2cell(M2region3stage2day3_difference));
    
    M2region3stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))))-mean(M2region3stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))));
    M2region3stage3day3_difference_struct=cell2mat(struct2cell(M2region3stage3day3_difference));
    
    M2region3stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))))-mean(M2region3stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))));
    M2region3stage4day3_difference_struct=cell2mat(struct2cell(M2region3stage4day3_difference));
end
M2region3day3=[M2region3stage1day3_difference_struct M2region3stage2day3_difference_struct M2region3stage3day3_difference_struct M2region3stage4day3_difference_struct M2_region3_day3_4stages];
for i=1:length(M2region3day3)
    
    if sum(M2region3day3(i,1:4)<0)>sum(M2region3day3(i,1:4)>0)
        M2region3day3(i,6)=-1;
    elseif sum(M2region3day3(i,1:4)<0)<sum(M2region3day3(i,1:4)>0)
        M2region3day3(i,6)=1;
    elseif sum(M2region3day3(i,1:4)<0)==sum(M2region3day3(i,1:4)>0)
        if abs(mean(M2region3day3(i,find(M2region3day3(i,1:4)<0))))>abs(mean(M2region3day3(i,find(M2region3day3(i,1:4)>0))))
            M2region3day3(i,6)=-1;
        elseif abs(mean(M2region3day3(i,find(M2region3day3(i,1:4)<0))))<abs(mean(M2region3day3(i,find(M2region3day3(i,1:4)>0))))
            M2region3day3(i,6)=1;
        end
    end
end
M2region3day3_wrong_number=sum(M2region3day3(:,6)==-1);
M2region3day3_correct_number=sum(M2region3day3(:,6)==1);





for cell_num=1:length(M2_region3_day4_4stages)
    M2region3stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))))-mean(M2region3stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))));
    M2region3stage1day4_difference_struct=cell2mat(struct2cell(M2region3stage1day4_difference));
    
    M2region3stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))))-mean(M2region3stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))));
    M2region3stage2day4_difference_struct=cell2mat(struct2cell(M2region3stage2day4_difference));
    
    M2region3stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))))-mean(M2region3stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))));
    M2region3stage3day4_difference_struct=cell2mat(struct2cell(M2region3stage3day4_difference));
    
    M2region3stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))))-mean(M2region3stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))));
    M2region3stage4day4_difference_struct=cell2mat(struct2cell(M2region3stage4day4_difference));
end
M2region3day4=[M2region3stage1day4_difference_struct M2region3stage2day4_difference_struct M2region3stage3day4_difference_struct M2region3stage4day4_difference_struct M2_region3_day4_4stages];
for i=1:length(M2region3day4)
    
    if sum(M2region3day4(i,1:4)<0)>sum(M2region3day4(i,1:4)>0)
        M2region3day4(i,6)=-1;
    elseif sum(M2region3day4(i,1:4)<0)<sum(M2region3day4(i,1:4)>0)
        M2region3day4(i,6)=1;
    elseif sum(M2region3day4(i,1:4)<0)==sum(M2region3day4(i,1:4)>0)
        if abs(mean(M2region3day4(i,find(M2region3day4(i,1:4)<0))))>abs(mean(M2region3day4(i,find(M2region3day4(i,1:4)>0))))
            M2region3day4(i,6)=-1;
        elseif abs(mean(M2region3day4(i,find(M2region3day4(i,1:4)<0))))<abs(mean(M2region3day4(i,find(M2region3day4(i,1:4)>0))))
            M2region3day4(i,6)=1;
        end
    end
end
M2region3day4_wrong_number=sum(M2region3day4(:,6)==-1);
M2region3day4_correct_number=sum(M2region3day4(:,6)==1);

for cell_num=1:length(M2_region3_day5_4stages)
    M2region3stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))))-mean(M2region3stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))));
    M2region3stage1day5_difference_struct=cell2mat(struct2cell(M2region3stage1day5_difference));
    
    M2region3stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))))-mean(M2region3stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))));
    M2region3stage2day5_difference_struct=cell2mat(struct2cell(M2region3stage2day5_difference));
    
    M2region3stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))))-mean(M2region3stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))));
    M2region3stage3day5_difference_struct=cell2mat(struct2cell(M2region3stage3day5_difference));
    
    M2region3stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))))-mean(M2region3stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))));
    M2region3stage4day5_difference_struct=cell2mat(struct2cell(M2region3stage4day5_difference));
end
M2region3day5=[M2region3stage1day5_difference_struct M2region3stage2day5_difference_struct M2region3stage3day5_difference_struct M2region3stage4day5_difference_struct M2_region3_day5_4stages];
for i=1:length(M2region3day5)
    
    if sum(M2region3day5(i,1:4)<0)>sum(M2region3day5(i,1:4)>0)
        M2region3day5(i,6)=-1;
    elseif sum(M2region3day5(i,1:4)<0)<sum(M2region3day5(i,1:4)>0)
        M2region3day5(i,6)=1;
    elseif sum(M2region3day5(i,1:4)<0)==sum(M2region3day5(i,1:4)>0)
        if abs(mean(M2region3day5(i,find(M2region3day5(i,1:4)<0))))>abs(mean(M2region3day5(i,find(M2region3day5(i,1:4)>0))))
            M2region3day5(i,6)=-1;
        elseif abs(mean(M2region3day5(i,find(M2region3day5(i,1:4)<0))))<abs(mean(M2region3day5(i,find(M2region3day5(i,1:4)>0))))
            M2region3day5(i,6)=1;
        end
    end
end
M2region3day5_wrong_number=sum(M2region3day5(:,6)==-1);
M2region3day5_correct_number=sum(M2region3day5(:,6)==1);

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


for cell_num=1:length(M2_region3_day7_4stages)
    M2region3stage1day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))))-mean(M2region3stage1day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))));
    M2region3stage1day7_difference_struct=cell2mat(struct2cell(M2region3stage1day7_difference));
    
    M2region3stage2day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))))-mean(M2region3stage2day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))));
    M2region3stage2day7_difference_struct=cell2mat(struct2cell(M2region3stage2day7_difference));
    
    M2region3stage3day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))))-mean(M2region3stage3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))));
    M2region3stage3day7_difference_struct=cell2mat(struct2cell(M2region3stage3day7_difference));
    
    M2region3stage4day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))))-mean(M2region3stage4day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))));
    M2region3stage4day7_difference_struct=cell2mat(struct2cell(M2region3stage4day7_difference));
end
M2region3day7=[M2region3stage1day7_difference_struct M2region3stage2day7_difference_struct M2region3stage3day7_difference_struct M2region3stage4day7_difference_struct M2_region3_day7_4stages];
for i=1:length(M2region3day7)
    
    if sum(M2region3day7(i,1:4)<0)>sum(M2region3day7(i,1:4)>0)
        M2region3day7(i,6)=-1;
    elseif sum(M2region3day7(i,1:4)<0)<sum(M2region3day7(i,1:4)>0)
        M2region3day7(i,6)=1;
    elseif sum(M2region3day7(i,1:4)<0)==sum(M2region3day7(i,1:4)>0)
        if abs(mean(M2region3day7(i,find(M2region3day7(i,1:4)<0))))>abs(mean(M2region3day7(i,find(M2region3day7(i,1:4)>0))))
            M2region3day7(i,6)=-1;
        elseif abs(mean(M2region3day7(i,find(M2region3day7(i,1:4)<0))))<abs(mean(M2region3day7(i,find(M2region3day7(i,1:4)>0))))
            M2region3day7(i,6)=1;
        end
    end
end
M2region3day7_wrong_number=sum(M2region3day7(:,6)==-1);
M2region3day7_correct_number=sum(M2region3day7(:,6)==1);


M2_region4_day1_4stages=union(union(union(M2region4stage1day1index,M2region4stage2day1index),M2region4stage3day1index),M2region4stage4day1index);
M2_region4_day1_0stage=setdiff(M2region4stage1day1diff_ratio_deltaF(:,1),M2_region4_day1_4stages);

M2_region4_day2_4stages=union(union(union(M2region4stage1day2index,M2region4stage2day2index),M2region4stage3day2index),M2region4stage4day2index);
M2_region4_day2_0stage=setdiff(M2region4stage1day2diff_ratio_deltaF(:,1),M2_region4_day2_4stages);

M2_region4_day3_4stages=union(union(union(M2region4stage1day3index,M2region4stage2day3index),M2region4stage3day3index),M2region4stage4day3index);
M2_region4_day3_0stage=setdiff(M2region4stage1day3diff_ratio_deltaF(:,1),M2_region4_day3_4stages);






for cell_num=1:length(M2_region4_day1_4stages)
    M2region4stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))))-mean(M2region4stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))));
    M2region4stage1day1_difference_struct=cell2mat(struct2cell(M2region4stage1day1_difference));
    
    M2region4stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))))-mean(M2region4stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))));
    M2region4stage2day1_difference_struct=cell2mat(struct2cell(M2region4stage2day1_difference));
    
    M2region4stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))))-mean(M2region4stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))));
    M2region4stage3day1_difference_struct=cell2mat(struct2cell(M2region4stage3day1_difference));
    
    M2region4stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))))-mean(M2region4stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))));
    M2region4stage4day1_difference_struct=cell2mat(struct2cell(M2region4stage4day1_difference)); 
end
M2region4day1=[M2region4stage1day1_difference_struct M2region4stage2day1_difference_struct M2region4stage3day1_difference_struct M2region4stage4day1_difference_struct M2_region4_day1_4stages];
for i=1:length(M2region4day1)
    
    if sum(M2region4day1(i,1:4)<0)>sum(M2region4day1(i,1:4)>0)
        M2region4day1(i,6)=-1;
    elseif sum(M2region4day1(i,1:4)<0)<sum(M2region4day1(i,1:4)>0)
        M2region4day1(i,6)=1;
    elseif sum(M2region4day1(i,1:4)<0)==sum(M2region4day1(i,1:4)>0)
        if abs(mean(M2region4day1(i,find(M2region4day1(i,1:4)<0))))>abs(mean(M2region4day1(i,find(M2region4day1(i,1:4)>0))))
            M2region4day1(i,6)=-1;
        elseif abs(mean(M2region4day1(i,find(M2region4day1(i,1:4)<0))))<abs(mean(M2region4day1(i,find(M2region4day1(i,1:4)>0))))
            M2region4day1(i,6)=1;
        end
    end
end
M2region4day1_wrong_number=sum(M2region4day1(:,6)==-1);
M2region4day1_correct_number=sum(M2region4day1(:,6)==1);




for cell_num=1:length(M2_region4_day2_4stages)
    M2region4stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))))-mean(M2region4stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))));
    M2region4stage1day2_difference_struct=cell2mat(struct2cell(M2region4stage1day2_difference));
    
    M2region4stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))))-mean(M2region4stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))));
    M2region4stage2day2_difference_struct=cell2mat(struct2cell(M2region4stage2day2_difference));
    
    M2region4stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))))-mean(M2region4stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))));
    M2region4stage3day2_difference_struct=cell2mat(struct2cell(M2region4stage3day2_difference));
    
    M2region4stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))))-mean(M2region4stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))));
    M2region4stage4day2_difference_struct=cell2mat(struct2cell(M2region4stage4day2_difference));
end
M2region4day2=[M2region4stage1day2_difference_struct M2region4stage2day2_difference_struct M2region4stage3day2_difference_struct M2region4stage4day2_difference_struct M2_region4_day2_4stages];
for i=1:length(M2region4day2)
    
    if sum(M2region4day2(i,1:4)<0)>sum(M2region4day2(i,1:4)>0)
        M2region4day2(i,6)=-1;
    elseif sum(M2region4day2(i,1:4)<0)<sum(M2region4day2(i,1:4)>0)
        M2region4day2(i,6)=1;
    elseif sum(M2region4day2(i,1:4)<0)==sum(M2region4day2(i,1:4)>0)
        if abs(mean(M2region4day2(i,find(M2region4day2(i,1:4)<0))))>abs(mean(M2region4day2(i,find(M2region4day2(i,1:4)>0))))
            M2region4day2(i,6)=-1;
        elseif abs(mean(M2region4day2(i,find(M2region4day2(i,1:4)<0))))<abs(mean(M2region4day2(i,find(M2region4day2(i,1:4)>0))))
            M2region4day2(i,6)=1;
        end
    end
end
M2region4day2_wrong_number=sum(M2region4day2(:,6)==-1);
M2region4day2_correct_number=sum(M2region4day2(:,6)==1);


for cell_num=1:length(M2_region4_day3_4stages)
    M2region4stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))))-mean(M2region4stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))));
    M2region4stage1day3_difference_struct=cell2mat(struct2cell(M2region4stage1day3_difference));
    
    M2region4stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))))-mean(M2region4stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))));
    M2region4stage2day3_difference_struct=cell2mat(struct2cell(M2region4stage2day3_difference));
    
    M2region4stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))))-mean(M2region4stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))));
    M2region4stage3day3_difference_struct=cell2mat(struct2cell(M2region4stage3day3_difference));
    
    M2region4stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))))-mean(M2region4stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))));
    M2region4stage4day3_difference_struct=cell2mat(struct2cell(M2region4stage4day3_difference));
end
M2region4day3=[M2region4stage1day3_difference_struct M2region4stage2day3_difference_struct M2region4stage3day3_difference_struct M2region4stage4day3_difference_struct M2_region4_day3_4stages];
for i=1:length(M2region4day3)
    
    if sum(M2region4day3(i,1:4)<0)>sum(M2region4day3(i,1:4)>0)
        M2region4day3(i,6)=-1;
    elseif sum(M2region4day3(i,1:4)<0)<sum(M2region4day3(i,1:4)>0)
        M2region4day3(i,6)=1;
    elseif sum(M2region4day3(i,1:4)<0)==sum(M2region4day3(i,1:4)>0)
        if abs(mean(M2region4day3(i,find(M2region4day3(i,1:4)<0))))>abs(mean(M2region4day3(i,find(M2region4day3(i,1:4)>0))))
            M2region4day3(i,6)=-1;
        elseif abs(mean(M2region4day3(i,find(M2region4day3(i,1:4)<0))))<abs(mean(M2region4day3(i,find(M2region4day3(i,1:4)>0))))
            M2region4day3(i,6)=1;
        end
    end
end
M2region4day3_wrong_number=sum(M2region4day3(:,6)==-1);
M2region4day3_correct_number=sum(M2region4day3(:,6)==1);


M2_region5_day1_4stages=union(union(union(M2region5stage1day1index,M2region5stage2day1index),M2region5stage3day1index),M2region5stage4day1index);
M2_region5_day1_0stage=setdiff(M2region5stage1day1diff_ratio_deltaF(:,1),M2_region5_day1_4stages);

M2_region5_day2_4stages=union(union(union(M2region5stage1day2index,M2region5stage2day2index),M2region5stage3day2index),M2region5stage4day2index);
M2_region5_day2_0stage=setdiff(M2region5stage1day2diff_ratio_deltaF(:,1),M2_region5_day2_4stages);

M2_region5_day3_4stages=union(union(union(M2region5stage1day3index,M2region5stage2day3index),M2region5stage3day3index),M2region5stage4day3index);
M2_region5_day3_0stage=setdiff(M2region5stage1day3diff_ratio_deltaF(:,1),M2_region5_day3_4stages);

M2_region5_day4_4stages=union(union(union(M2region5stage1day4index,M2region5stage2day4index),M2region5stage3day4index),M2region5stage4day4index);
M2_region5_day4_0stage=setdiff(M2region5stage1day4diff_ratio_deltaF(:,1),M2_region5_day4_4stages);

M2_region5_day5_4stages=union(union(union(M2region5stage1day5index,M2region5stage2day5index),M2region5stage3day5index),M2region5stage4day5index);
M2_region5_day5_0stage=setdiff(M2region5stage1day5diff_ratio_deltaF(:,1),M2_region5_day5_4stages);

M2_region5_day6_4stages=union(union(union(M2region5stage1day6index,M2region5stage2day6index),M2region5stage3day6index),M2region5stage4day6index);
M2_region5_day6_0stage=setdiff(M2region5stage1day6diff_ratio_deltaF(:,1),M2_region5_day6_4stages);







for cell_num=1:length(M2_region5_day1_4stages)
    M2region5stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))))-mean(M2region5stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))));
    M2region5stage1day1_difference_struct=cell2mat(struct2cell(M2region5stage1day1_difference));
    
    M2region5stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))))-mean(M2region5stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))));
    M2region5stage2day1_difference_struct=cell2mat(struct2cell(M2region5stage2day1_difference));
    
    M2region5stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))))-mean(M2region5stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))));
    M2region5stage3day1_difference_struct=cell2mat(struct2cell(M2region5stage3day1_difference));
    
    M2region5stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))))-mean(M2region5stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))));
    M2region5stage4day1_difference_struct=cell2mat(struct2cell(M2region5stage4day1_difference)); 
end
M2region5day1=[M2region5stage1day1_difference_struct M2region5stage2day1_difference_struct M2region5stage3day1_difference_struct M2region5stage4day1_difference_struct M2_region5_day1_4stages];
for i=1:length(M2region5day1)
    
    if sum(M2region5day1(i,1:4)<0)>sum(M2region5day1(i,1:4)>0)
        M2region5day1(i,6)=-1;
    elseif sum(M2region5day1(i,1:4)<0)<sum(M2region5day1(i,1:4)>0)
        M2region5day1(i,6)=1;
    elseif sum(M2region5day1(i,1:4)<0)==sum(M2region5day1(i,1:4)>0)
        if abs(mean(M2region5day1(i,find(M2region5day1(i,1:4)<0))))>abs(mean(M2region5day1(i,find(M2region5day1(i,1:4)>0))))
            M2region5day1(i,6)=-1;
        elseif abs(mean(M2region5day1(i,find(M2region5day1(i,1:4)<0))))<abs(mean(M2region5day1(i,find(M2region5day1(i,1:4)>0))))
            M2region5day1(i,6)=1;
        end
    end
end
M2region5day1_wrong_number=sum(M2region5day1(:,6)==-1);
M2region5day1_correct_number=sum(M2region5day1(:,6)==1);



for cell_num=1:length(M2_region5_day2_4stages)
    M2region5stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))))-mean(M2region5stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))));
    M2region5stage1day2_difference_struct=cell2mat(struct2cell(M2region5stage1day2_difference));
    
    M2region5stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))))-mean(M2region5stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))));
    M2region5stage2day2_difference_struct=cell2mat(struct2cell(M2region5stage2day2_difference));
    
    M2region5stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))))-mean(M2region5stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))));
    M2region5stage3day2_difference_struct=cell2mat(struct2cell(M2region5stage3day2_difference));
    
    M2region5stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))))-mean(M2region5stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))));
    M2region5stage4day2_difference_struct=cell2mat(struct2cell(M2region5stage4day2_difference));
end
M2region5day2=[M2region5stage1day2_difference_struct M2region5stage2day2_difference_struct M2region5stage3day2_difference_struct M2region5stage4day2_difference_struct M2_region5_day2_4stages];
for i=1:length(M2region5day2)
    
    if sum(M2region5day2(i,1:4)<0)>sum(M2region5day2(i,1:4)>0)
        M2region5day2(i,6)=-1;
    elseif sum(M2region5day2(i,1:4)<0)<sum(M2region5day2(i,1:4)>0)
        M2region5day2(i,6)=1;
    elseif sum(M2region5day2(i,1:4)<0)==sum(M2region5day2(i,1:4)>0)
        if abs(mean(M2region5day2(i,find(M2region5day2(i,1:4)<0))))>abs(mean(M2region5day2(i,find(M2region5day2(i,1:4)>0))))
            M2region5day2(i,6)=-1;
        elseif abs(mean(M2region5day2(i,find(M2region5day2(i,1:4)<0))))<abs(mean(M2region5day2(i,find(M2region5day2(i,1:4)>0))))
            M2region5day2(i,6)=1;
        end
    end
end
M2region5day2_wrong_number=sum(M2region5day2(:,6)==-1);
M2region5day2_correct_number=sum(M2region5day2(:,6)==1);

for cell_num=1:length(M2_region5_day3_4stages)
    M2region5stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))))-mean(M2region5stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))));
    M2region5stage1day3_difference_struct=cell2mat(struct2cell(M2region5stage1day3_difference));
    
    M2region5stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))))-mean(M2region5stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))));
    M2region5stage2day3_difference_struct=cell2mat(struct2cell(M2region5stage2day3_difference));
    
    M2region5stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))))-mean(M2region5stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))));
    M2region5stage3day3_difference_struct=cell2mat(struct2cell(M2region5stage3day3_difference));
    
    M2region5stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))))-mean(M2region5stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))));
    M2region5stage4day3_difference_struct=cell2mat(struct2cell(M2region5stage4day3_difference));
end
M2region5day3=[M2region5stage1day3_difference_struct M2region5stage2day3_difference_struct M2region5stage3day3_difference_struct M2region5stage4day3_difference_struct M2_region5_day3_4stages];
for i=1:length(M2region5day3)
    
    if sum(M2region5day3(i,1:4)<0)>sum(M2region5day3(i,1:4)>0)
        M2region5day3(i,6)=-1;
    elseif sum(M2region5day3(i,1:4)<0)<sum(M2region5day3(i,1:4)>0)
        M2region5day3(i,6)=1;
    elseif sum(M2region5day3(i,1:4)<0)==sum(M2region5day3(i,1:4)>0)
        if abs(mean(M2region5day3(i,find(M2region5day3(i,1:4)<0))))>abs(mean(M2region5day3(i,find(M2region5day3(i,1:4)>0))))
            M2region5day3(i,6)=-1;
        elseif abs(mean(M2region5day3(i,find(M2region5day3(i,1:4)<0))))<abs(mean(M2region5day3(i,find(M2region5day3(i,1:4)>0))))
            M2region5day3(i,6)=1;
        end
    end
end
M2region5day3_wrong_number=sum(M2region5day3(:,6)==-1);
M2region5day3_correct_number=sum(M2region5day3(:,6)==1);





for cell_num=1:length(M2_region5_day4_4stages)
    M2region5stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))))-mean(M2region5stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))));
    M2region5stage1day4_difference_struct=cell2mat(struct2cell(M2region5stage1day4_difference));
    
    M2region5stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))))-mean(M2region5stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))));
    M2region5stage2day4_difference_struct=cell2mat(struct2cell(M2region5stage2day4_difference));
    
    M2region5stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))))-mean(M2region5stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))));
    M2region5stage3day4_difference_struct=cell2mat(struct2cell(M2region5stage3day4_difference));
    
    M2region5stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))))-mean(M2region5stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))));
    M2region5stage4day4_difference_struct=cell2mat(struct2cell(M2region5stage4day4_difference));
end
M2region5day4=[M2region5stage1day4_difference_struct M2region5stage2day4_difference_struct M2region5stage3day4_difference_struct M2region5stage4day4_difference_struct M2_region5_day4_4stages];
for i=1:length(M2region5day4)
    
    if sum(M2region5day4(i,1:4)<0)>sum(M2region5day4(i,1:4)>0)
        M2region5day4(i,6)=-1;
    elseif sum(M2region5day4(i,1:4)<0)<sum(M2region5day4(i,1:4)>0)
        M2region5day4(i,6)=1;
    elseif sum(M2region5day4(i,1:4)<0)==sum(M2region5day4(i,1:4)>0)
        if abs(mean(M2region5day4(i,find(M2region5day4(i,1:4)<0))))>abs(mean(M2region5day4(i,find(M2region5day4(i,1:4)>0))))
            M2region5day4(i,6)=-1;
        elseif abs(mean(M2region5day4(i,find(M2region5day4(i,1:4)<0))))<abs(mean(M2region5day4(i,find(M2region5day4(i,1:4)>0))))
            M2region5day4(i,6)=1;
        end
    end
end
M2region5day4_wrong_number=sum(M2region5day4(:,6)==-1);
M2region5day4_correct_number=sum(M2region5day4(:,6)==1);


for cell_num=1:length(M2_region5_day5_4stages)
    M2region5stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))))-mean(M2region5stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))));
    M2region5stage1day5_difference_struct=cell2mat(struct2cell(M2region5stage1day5_difference));
    
    M2region5stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))))-mean(M2region5stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))));
    M2region5stage2day5_difference_struct=cell2mat(struct2cell(M2region5stage2day5_difference));
    
    M2region5stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))))-mean(M2region5stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))));
    M2region5stage3day5_difference_struct=cell2mat(struct2cell(M2region5stage3day5_difference));
    
    M2region5stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))))-mean(M2region5stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))));
    M2region5stage4day5_difference_struct=cell2mat(struct2cell(M2region5stage4day5_difference));
end
M2region5day5=[M2region5stage1day5_difference_struct M2region5stage2day5_difference_struct M2region5stage3day5_difference_struct M2region5stage4day5_difference_struct M2_region5_day5_4stages];
for i=1:length(M2region5day5)
    
    if sum(M2region5day5(i,1:4)<0)>sum(M2region5day5(i,1:4)>0)
        M2region5day5(i,6)=-1;
    elseif sum(M2region5day5(i,1:4)<0)<sum(M2region5day5(i,1:4)>0)
        M2region5day5(i,6)=1;
    elseif sum(M2region5day5(i,1:4)<0)==sum(M2region5day5(i,1:4)>0)
        if abs(mean(M2region5day5(i,find(M2region5day5(i,1:4)<0))))>abs(mean(M2region5day5(i,find(M2region5day5(i,1:4)>0))))
            M2region5day5(i,6)=-1;
        elseif abs(mean(M2region5day5(i,find(M2region5day5(i,1:4)<0))))<abs(mean(M2region5day5(i,find(M2region5day5(i,1:4)>0))))
            M2region5day5(i,6)=1;
        end
    end
end
M2region5day5_wrong_number=sum(M2region5day5(:,6)==-1);
M2region5day5_correct_number=sum(M2region5day5(:,6)==1);


for cell_num=1:length(M2_region5_day6_4stages)
    M2region5stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))))-mean(M2region5stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))));
    M2region5stage1day6_difference_struct=cell2mat(struct2cell(M2region5stage1day6_difference));
    
    M2region5stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))))-mean(M2region5stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))));
    M2region5stage2day6_difference_struct=cell2mat(struct2cell(M2region5stage2day6_difference));
    
    M2region5stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))))-mean(M2region5stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))));
    M2region5stage3day6_difference_struct=cell2mat(struct2cell(M2region5stage3day6_difference));
    
    M2region5stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))))-mean(M2region5stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))));
    M2region5stage4day6_difference_struct=cell2mat(struct2cell(M2region5stage4day6_difference));
end
M2region5day6=[M2region5stage1day6_difference_struct M2region5stage2day6_difference_struct M2region5stage3day6_difference_struct M2region5stage4day6_difference_struct M2_region5_day6_4stages];
for i=1:length(M2region5day6)
    
    if sum(M2region5day6(i,1:4)<0)>sum(M2region5day6(i,1:4)>0)
        M2region5day6(i,6)=-1;
    elseif sum(M2region5day6(i,1:4)<0)<sum(M2region5day6(i,1:4)>0)
        M2region5day6(i,6)=1;
    elseif sum(M2region5day6(i,1:4)<0)==sum(M2region5day6(i,1:4)>0)
        if abs(mean(M2region5day6(i,find(M2region5day6(i,1:4)<0))))>abs(mean(M2region5day6(i,find(M2region5day6(i,1:4)>0))))
            M2region5day6(i,6)=-1;
        elseif abs(mean(M2region5day6(i,find(M2region5day6(i,1:4)<0))))<abs(mean(M2region5day6(i,find(M2region5day6(i,1:4)>0))))
            M2region5day6(i,6)=1;
        end
    end
end
M2region5day6_wrong_number=sum(M2region5day6(:,6)==-1);
M2region5day6_correct_number=sum(M2region5day6(:,6)==1);


M2_region6_day1_4stages=union(union(union(M2region6stage1day1index,M2region6stage2day1index),M2region6stage3day1index),M2region6stage4day1index);
M2_region6_day1_0stage=setdiff(M2region6stage1day1diff_ratio_deltaF(:,1),M2_region6_day1_4stages);

M2_region6_day2_4stages=union(union(union(M2region6stage1day2index,M2region6stage2day2index),M2region6stage3day2index),M2region6stage4day2index);
M2_region6_day2_0stage=setdiff(M2region6stage1day2diff_ratio_deltaF(:,1),M2_region6_day2_4stages);

M2_region6_day3_4stages=union(union(union(M2region6stage1day3index,M2region6stage2day3index),M2region6stage3day3index),M2region6stage4day3index);
M2_region6_day3_0stage=setdiff(M2region6stage1day3diff_ratio_deltaF(:,1),M2_region6_day3_4stages);

M2_region6_day4_4stages=union(union(union(M2region6stage1day4index,M2region6stage2day4index),M2region6stage3day4index),M2region6stage4day4index);
M2_region6_day4_0stage=setdiff(M2region6stage1day4diff_ratio_deltaF(:,1),M2_region6_day4_4stages);






for cell_num=1:length(M2_region6_day1_4stages)
    M2region6stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))))-mean(M2region6stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))));
    M2region6stage1day1_difference_struct=cell2mat(struct2cell(M2region6stage1day1_difference));
    
    M2region6stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))))-mean(M2region6stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))));
    M2region6stage2day1_difference_struct=cell2mat(struct2cell(M2region6stage2day1_difference));
    
    M2region6stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))))-mean(M2region6stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))));
    M2region6stage3day1_difference_struct=cell2mat(struct2cell(M2region6stage3day1_difference));
    
    M2region6stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))))-mean(M2region6stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))));
    M2region6stage4day1_difference_struct=cell2mat(struct2cell(M2region6stage4day1_difference)); 
end
M2region6day1=[M2region6stage1day1_difference_struct M2region6stage2day1_difference_struct M2region6stage3day1_difference_struct M2region6stage4day1_difference_struct M2_region6_day1_4stages];
for i=1:length(M2region6day1)
    
    if sum(M2region6day1(i,1:4)<0)>sum(M2region6day1(i,1:4)>0)
        M2region6day1(i,6)=-1;
    elseif sum(M2region6day1(i,1:4)<0)<sum(M2region6day1(i,1:4)>0)
        M2region6day1(i,6)=1;
    elseif sum(M2region6day1(i,1:4)<0)==sum(M2region6day1(i,1:4)>0)
        if abs(mean(M2region6day1(i,find(M2region6day1(i,1:4)<0))))>abs(mean(M2region6day1(i,find(M2region6day1(i,1:4)>0))))
            M2region6day1(i,6)=-1;
        elseif abs(mean(M2region6day1(i,find(M2region6day1(i,1:4)<0))))<abs(mean(M2region6day1(i,find(M2region6day1(i,1:4)>0))))
            M2region6day1(i,6)=1;
        end
    end
end
M2region6day1_wrong_number=sum(M2region6day1(:,6)==-1);
M2region6day1_correct_number=sum(M2region6day1(:,6)==1);





for cell_num=1:length(M2_region6_day2_4stages)
    M2region6stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))))-mean(M2region6stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))));
    M2region6stage1day2_difference_struct=cell2mat(struct2cell(M2region6stage1day2_difference));
    
    M2region6stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))))-mean(M2region6stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))));
    M2region6stage2day2_difference_struct=cell2mat(struct2cell(M2region6stage2day2_difference));
    
    M2region6stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))))-mean(M2region6stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))));
    M2region6stage3day2_difference_struct=cell2mat(struct2cell(M2region6stage3day2_difference));
    
    M2region6stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))))-mean(M2region6stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))));
    M2region6stage4day2_difference_struct=cell2mat(struct2cell(M2region6stage4day2_difference));
end
M2region6day2=[M2region6stage1day2_difference_struct M2region6stage2day2_difference_struct M2region6stage3day2_difference_struct M2region6stage4day2_difference_struct M2_region6_day2_4stages];
for i=1:length(M2region6day2)
    
    if sum(M2region6day2(i,1:4)<0)>sum(M2region6day2(i,1:4)>0)
        M2region6day2(i,6)=-1;
    elseif sum(M2region6day2(i,1:4)<0)<sum(M2region6day2(i,1:4)>0)
        M2region6day2(i,6)=1;
    elseif sum(M2region6day2(i,1:4)<0)==sum(M2region6day2(i,1:4)>0)
        if abs(mean(M2region6day2(i,find(M2region6day2(i,1:4)<0))))>abs(mean(M2region6day2(i,find(M2region6day2(i,1:4)>0))))
            M2region6day2(i,6)=-1;
        elseif abs(mean(M2region6day2(i,find(M2region6day2(i,1:4)<0))))<abs(mean(M2region6day2(i,find(M2region6day2(i,1:4)>0))))
            M2region6day2(i,6)=1;
        end
    end
end
M2region6day2_wrong_number=sum(M2region6day2(:,6)==-1);
M2region6day2_correct_number=sum(M2region6day2(:,6)==1);

for cell_num=1:length(M2_region6_day3_4stages)
    M2region6stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))))-mean(M2region6stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))));
    M2region6stage1day3_difference_struct=cell2mat(struct2cell(M2region6stage1day3_difference));
    
    M2region6stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))))-mean(M2region6stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))));
    M2region6stage2day3_difference_struct=cell2mat(struct2cell(M2region6stage2day3_difference));
    
    M2region6stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))))-mean(M2region6stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))));
    M2region6stage3day3_difference_struct=cell2mat(struct2cell(M2region6stage3day3_difference));
    
    M2region6stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))))-mean(M2region6stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))));
    M2region6stage4day3_difference_struct=cell2mat(struct2cell(M2region6stage4day3_difference));
end
M2region6day3=[M2region6stage1day3_difference_struct M2region6stage2day3_difference_struct M2region6stage3day3_difference_struct M2region6stage4day3_difference_struct M2_region6_day3_4stages];
for i=1:length(M2region6day3)
    
    if sum(M2region6day3(i,1:4)<0)>sum(M2region6day3(i,1:4)>0)
        M2region6day3(i,6)=-1;
    elseif sum(M2region6day3(i,1:4)<0)<sum(M2region6day3(i,1:4)>0)
        M2region6day3(i,6)=1;
    elseif sum(M2region6day3(i,1:4)<0)==sum(M2region6day3(i,1:4)>0)
        if abs(mean(M2region6day3(i,find(M2region6day3(i,1:4)<0))))>abs(mean(M2region6day3(i,find(M2region6day3(i,1:4)>0))))
            M2region6day3(i,6)=-1;
        elseif abs(mean(M2region6day3(i,find(M2region6day3(i,1:4)<0))))<abs(mean(M2region6day3(i,find(M2region6day3(i,1:4)>0))))
            M2region6day3(i,6)=1;
        end
    end
end
M2region6day3_wrong_number=sum(M2region6day3(:,6)==-1);
M2region6day3_correct_number=sum(M2region6day3(:,6)==1);




for cell_num=1:length(M2_region6_day4_4stages)
    M2region6stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))))-mean(M2region6stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))));
    M2region6stage1day4_difference_struct=cell2mat(struct2cell(M2region6stage1day4_difference));
    
    M2region6stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))))-mean(M2region6stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))));
    M2region6stage2day4_difference_struct=cell2mat(struct2cell(M2region6stage2day4_difference));
    
    M2region6stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))))-mean(M2region6stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))));
    M2region6stage3day4_difference_struct=cell2mat(struct2cell(M2region6stage3day4_difference));
    
    M2region6stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))))-mean(M2region6stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))));
    M2region6stage4day4_difference_struct=cell2mat(struct2cell(M2region6stage4day4_difference));
end
M2region6day4=[M2region6stage1day4_difference_struct M2region6stage2day4_difference_struct M2region6stage3day4_difference_struct M2region6stage4day4_difference_struct M2_region6_day4_4stages];
for i=1:length(M2region6day4)
    
    if sum(M2region6day4(i,1:4)<0)>sum(M2region6day4(i,1:4)>0)
        M2region6day4(i,6)=-1;
    elseif sum(M2region6day4(i,1:4)<0)<sum(M2region6day4(i,1:4)>0)
        M2region6day4(i,6)=1;
    elseif sum(M2region6day4(i,1:4)<0)==sum(M2region6day4(i,1:4)>0)
        if abs(mean(M2region6day4(i,find(M2region6day4(i,1:4)<0))))>abs(mean(M2region6day4(i,find(M2region6day4(i,1:4)>0))))
            M2region6day4(i,6)=-1;
        elseif abs(mean(M2region6day4(i,find(M2region6day4(i,1:4)<0))))<abs(mean(M2region6day4(i,find(M2region6day4(i,1:4)>0))))
            M2region6day4(i,6)=1;
        end
    end
end
M2region6day4_wrong_number=sum(M2region6day4(:,6)==-1);
M2region6day4_correct_number=sum(M2region6day4(:,6)==1);


M2_region7_day1_4stages=union(union(union(M2region7stage1day1index,M2region7stage2day1index),M2region7stage3day1index),M2region7stage4day1index);
M2_region7_day1_0stage=setdiff(M2region7stage1day1diff_ratio_deltaF(:,1),M2_region7_day1_4stages);

M2_region7_day2_4stages=union(union(union(M2region7stage1day2index,M2region7stage2day2index),M2region7stage3day2index),M2region7stage4day2index);
M2_region7_day2_0stage=setdiff(M2region7stage1day2diff_ratio_deltaF(:,1),M2_region7_day2_4stages);

M2_region7_day3_4stages=union(union(union(M2region7stage1day3index,M2region7stage2day3index),M2region7stage3day3index),M2region7stage4day3index);
M2_region7_day3_0stage=setdiff(M2region7stage1day3diff_ratio_deltaF(:,1),M2_region7_day3_4stages);

M2_region7_day4_4stages=union(union(union(M2region7stage1day4index,M2region7stage2day4index),M2region7stage3day4index),M2region7stage4day4index);
M2_region7_day4_0stage=setdiff(M2region7stage1day4diff_ratio_deltaF(:,1),M2_region7_day4_4stages);

M2_region7_day5_4stages=union(union(union(M2region7stage1day5index,M2region7stage2day5index),M2region7stage3day5index),M2region7stage4day5index);
M2_region7_day5_0stage=setdiff(M2region7stage1day5diff_ratio_deltaF(:,1),M2_region7_day5_4stages);


M2_region7_day6_4stages=union(union(union(M2region7stage1day6index,M2region7stage2day6index),M2region7stage3day6index),M2region7stage4day6index);
M2_region7_day6_0stage=setdiff(M2region7stage1day6diff_ratio_deltaF(:,1),M2_region7_day6_4stages);





for cell_num=1:length(M2_region7_day1_4stages)
    M2region7stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))))-mean(M2region7stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))));
    M2region7stage1day1_difference_struct=cell2mat(struct2cell(M2region7stage1day1_difference));
    
    M2region7stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))))-mean(M2region7stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))));
    M2region7stage2day1_difference_struct=cell2mat(struct2cell(M2region7stage2day1_difference));
    
    M2region7stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))))-mean(M2region7stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))));
    M2region7stage3day1_difference_struct=cell2mat(struct2cell(M2region7stage3day1_difference));
    
    M2region7stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))))-mean(M2region7stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))));
    M2region7stage4day1_difference_struct=cell2mat(struct2cell(M2region7stage4day1_difference)); 
end
M2region7day1=[M2region7stage1day1_difference_struct M2region7stage2day1_difference_struct M2region7stage3day1_difference_struct M2region7stage4day1_difference_struct M2_region7_day1_4stages];
for i=1:length(M2region7day1)
    
    if sum(M2region7day1(i,1:4)<0)>sum(M2region7day1(i,1:4)>0)
        M2region7day1(i,6)=-1;
    elseif sum(M2region7day1(i,1:4)<0)<sum(M2region7day1(i,1:4)>0)
        M2region7day1(i,6)=1;
    elseif sum(M2region7day1(i,1:4)<0)==sum(M2region7day1(i,1:4)>0)
        if abs(mean(M2region7day1(i,find(M2region7day1(i,1:4)<0))))>abs(mean(M2region7day1(i,find(M2region7day1(i,1:4)>0))))
            M2region7day1(i,6)=-1;
        elseif abs(mean(M2region7day1(i,find(M2region7day1(i,1:4)<0))))<abs(mean(M2region7day1(i,find(M2region7day1(i,1:4)>0))))
            M2region7day1(i,6)=1;
        end
    end
end
M2region7day1_wrong_number=sum(M2region7day1(:,6)==-1);
M2region7day1_correct_number=sum(M2region7day1(:,6)==1);





for cell_num=1:length(M2_region7_day2_4stages)
    M2region7stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))))-mean(M2region7stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))));
    M2region7stage1day2_difference_struct=cell2mat(struct2cell(M2region7stage1day2_difference));
    
    M2region7stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))))-mean(M2region7stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))));
    M2region7stage2day2_difference_struct=cell2mat(struct2cell(M2region7stage2day2_difference));
    
    M2region7stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))))-mean(M2region7stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))));
    M2region7stage3day2_difference_struct=cell2mat(struct2cell(M2region7stage3day2_difference));
    
    M2region7stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))))-mean(M2region7stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))));
    M2region7stage4day2_difference_struct=cell2mat(struct2cell(M2region7stage4day2_difference));
end
M2region7day2=[M2region7stage1day2_difference_struct M2region7stage2day2_difference_struct M2region7stage3day2_difference_struct M2region7stage4day2_difference_struct M2_region7_day2_4stages];
for i=1:length(M2region7day2)
    
    if sum(M2region7day2(i,1:4)<0)>sum(M2region7day2(i,1:4)>0)
        M2region7day2(i,6)=-1;
    elseif sum(M2region7day2(i,1:4)<0)<sum(M2region7day2(i,1:4)>0)
        M2region7day2(i,6)=1;
    elseif sum(M2region7day2(i,1:4)<0)==sum(M2region7day2(i,1:4)>0)
        if abs(mean(M2region7day2(i,find(M2region7day2(i,1:4)<0))))>abs(mean(M2region7day2(i,find(M2region7day2(i,1:4)>0))))
            M2region7day2(i,6)=-1;
        elseif abs(mean(M2region7day2(i,find(M2region7day2(i,1:4)<0))))<abs(mean(M2region7day2(i,find(M2region7day2(i,1:4)>0))))
            M2region7day2(i,6)=1;
        end
    end
end
M2region7day2_wrong_number=sum(M2region7day2(:,6)==-1);
M2region7day2_correct_number=sum(M2region7day2(:,6)==1);



for cell_num=1:length(M2_region7_day3_4stages)
    M2region7stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))))-mean(M2region7stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))));
    M2region7stage1day3_difference_struct=cell2mat(struct2cell(M2region7stage1day3_difference));
    
    M2region7stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))))-mean(M2region7stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))));
    M2region7stage2day3_difference_struct=cell2mat(struct2cell(M2region7stage2day3_difference));
    
    M2region7stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))))-mean(M2region7stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))));
    M2region7stage3day3_difference_struct=cell2mat(struct2cell(M2region7stage3day3_difference));
    
    M2region7stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))))-mean(M2region7stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))));
    M2region7stage4day3_difference_struct=cell2mat(struct2cell(M2region7stage4day3_difference));
end
M2region7day3=[M2region7stage1day3_difference_struct M2region7stage2day3_difference_struct M2region7stage3day3_difference_struct M2region7stage4day3_difference_struct M2_region7_day3_4stages];
for i=1:length(M2region7day3)
    
    if sum(M2region7day3(i,1:4)<0)>sum(M2region7day3(i,1:4)>0)
        M2region7day3(i,6)=-1;
    elseif sum(M2region7day3(i,1:4)<0)<sum(M2region7day3(i,1:4)>0)
        M2region7day3(i,6)=1;
    elseif sum(M2region7day3(i,1:4)<0)==sum(M2region7day3(i,1:4)>0)
        if abs(mean(M2region7day3(i,find(M2region7day3(i,1:4)<0))))>abs(mean(M2region7day3(i,find(M2region7day3(i,1:4)>0))))
            M2region7day3(i,6)=-1;
        elseif abs(mean(M2region7day3(i,find(M2region7day3(i,1:4)<0))))<abs(mean(M2region7day3(i,find(M2region7day3(i,1:4)>0))))
            M2region7day3(i,6)=1;
        end
    end
end
M2region7day3_wrong_number=sum(M2region7day3(:,6)==-1);
M2region7day3_correct_number=sum(M2region7day3(:,6)==1);




for cell_num=1:length(M2_region7_day4_4stages)
    M2region7stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))))-mean(M2region7stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))));
    M2region7stage1day4_difference_struct=cell2mat(struct2cell(M2region7stage1day4_difference));
    
    M2region7stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))))-mean(M2region7stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))));
    M2region7stage2day4_difference_struct=cell2mat(struct2cell(M2region7stage2day4_difference));
    
    M2region7stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))))-mean(M2region7stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))));
    M2region7stage3day4_difference_struct=cell2mat(struct2cell(M2region7stage3day4_difference));
    
    M2region7stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))))-mean(M2region7stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))));
    M2region7stage4day4_difference_struct=cell2mat(struct2cell(M2region7stage4day4_difference));
end
M2region7day4=[M2region7stage1day4_difference_struct M2region7stage2day4_difference_struct M2region7stage3day4_difference_struct M2region7stage4day4_difference_struct M2_region7_day4_4stages];
for i=1:length(M2region7day4)
    
    if sum(M2region7day4(i,1:4)<0)>sum(M2region7day4(i,1:4)>0)
        M2region7day4(i,6)=-1;
    elseif sum(M2region7day4(i,1:4)<0)<sum(M2region7day4(i,1:4)>0)
        M2region7day4(i,6)=1;
    elseif sum(M2region7day4(i,1:4)<0)==sum(M2region7day4(i,1:4)>0)
        if abs(mean(M2region7day4(i,find(M2region7day4(i,1:4)<0))))>abs(mean(M2region7day4(i,find(M2region7day4(i,1:4)>0))))
            M2region7day4(i,6)=-1;
        elseif abs(mean(M2region7day4(i,find(M2region7day4(i,1:4)<0))))<abs(mean(M2region7day4(i,find(M2region7day4(i,1:4)>0))))
            M2region7day4(i,6)=1;
        end
    end
end
M2region7day4_wrong_number=sum(M2region7day4(:,6)==-1);
M2region7day4_correct_number=sum(M2region7day4(:,6)==1);


for cell_num=1:length(M2_region7_day5_4stages)
    M2region7stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))))-mean(M2region7stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))));
    M2region7stage1day5_difference_struct=cell2mat(struct2cell(M2region7stage1day5_difference));
    
    M2region7stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))))-mean(M2region7stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))));
    M2region7stage2day5_difference_struct=cell2mat(struct2cell(M2region7stage2day5_difference));
    
    M2region7stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))))-mean(M2region7stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))));
    M2region7stage3day5_difference_struct=cell2mat(struct2cell(M2region7stage3day5_difference));
    
    M2region7stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))))-mean(M2region7stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))));
    M2region7stage4day5_difference_struct=cell2mat(struct2cell(M2region7stage4day5_difference));
end
M2region7day5=[M2region7stage1day5_difference_struct M2region7stage2day5_difference_struct M2region7stage3day5_difference_struct M2region7stage4day5_difference_struct M2_region7_day5_4stages];
for i=1:length(M2region7day5)
    
    if sum(M2region7day5(i,1:4)<0)>sum(M2region7day5(i,1:4)>0)
        M2region7day5(i,6)=-1;
    elseif sum(M2region7day5(i,1:4)<0)<sum(M2region7day5(i,1:4)>0)
        M2region7day5(i,6)=1;
    elseif sum(M2region7day5(i,1:4)<0)==sum(M2region7day5(i,1:4)>0)
        if abs(mean(M2region7day5(i,find(M2region7day5(i,1:4)<0))))>abs(mean(M2region7day5(i,find(M2region7day5(i,1:4)>0))))
            M2region7day5(i,6)=-1;
        elseif abs(mean(M2region7day5(i,find(M2region7day5(i,1:4)<0))))<abs(mean(M2region7day5(i,find(M2region7day5(i,1:4)>0))))
            M2region7day5(i,6)=1;
        end
    end
end
M2region7day5_wrong_number=sum(M2region7day5(:,6)==-1);
M2region7day5_correct_number=sum(M2region7day5(:,6)==1);



for cell_num=1:length(M2_region7_day6_4stages)
    M2region7stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))))-mean(M2region7stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))));
    M2region7stage1day6_difference_struct=cell2mat(struct2cell(M2region7stage1day6_difference));
    
    M2region7stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))))-mean(M2region7stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))));
    M2region7stage2day6_difference_struct=cell2mat(struct2cell(M2region7stage2day6_difference));
    
    M2region7stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))))-mean(M2region7stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))));
    M2region7stage3day6_difference_struct=cell2mat(struct2cell(M2region7stage3day6_difference));
    
    M2region7stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))))-mean(M2region7stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))));
    M2region7stage4day6_difference_struct=cell2mat(struct2cell(M2region7stage4day6_difference));
end
M2region7day5=[M2region7stage1day6_difference_struct M2region7stage2day6_difference_struct M2region7stage3day6_difference_struct M2region7stage4day6_difference_struct M2_region7_day6_4stages];
for i=1:length(M2region7day6)
    
    if sum(M2region7day6(i,1:4)<0)>sum(M2region7day6(i,1:4)>0)
        M2region7day6(i,6)=-1;
    elseif sum(M2region7day6(i,1:4)<0)<sum(M2region7day6(i,1:4)>0)
        M2region7day6(i,6)=1;
    elseif sum(M2region7day6(i,1:4)<0)==sum(M2region7day6(i,1:4)>0)
        if abs(mean(M2region7day6(i,find(M2region7day6(i,1:4)<0))))>abs(mean(M2region7day6(i,find(M2region7day6(i,1:4)>0))))
            M2region7day6(i,6)=-1;
        elseif abs(mean(M2region7day6(i,find(M2region7day6(i,1:4)<0))))<abs(mean(M2region7day6(i,find(M2region7day6(i,1:4)>0))))
            M2region7day6(i,6)=1;
        end
    end
end
M2region7day6_wrong_number=sum(M2region7day6(:,6)==-1);
M2region7day6_correct_number=sum(M2region7day6(:,6)==1);




M2_region8_day1_4stages=union(union(union(M2region8stage1day1index,M2region8stage2day1index),M2region8stage3day1index),M2region8stage4day1index);
M2_region8_day1_0stage=setdiff(M2region8stage1day1diff_ratio_deltaF(:,1),M2_region8_day1_4stages);

M2_region8_day2_4stages=union(union(union(M2region8stage1day2index,M2region8stage2day2index),M2region8stage3day2index),M2region8stage4day2index);
M2_region8_day2_0stage=setdiff(M2region8stage1day2diff_ratio_deltaF(:,1),M2_region8_day2_4stages);

M2_region8_day3_4stages=union(union(union(M2region8stage1day3index,M2region8stage2day3index),M2region8stage3day3index),M2region8stage4day3index);
M2_region8_day3_0stage=setdiff(M2region8stage1day3diff_ratio_deltaF(:,1),M2_region8_day3_4stages);

M2_region8_day4_4stages=union(union(union(M2region8stage1day4index,M2region8stage2day4index),M2region8stage3day4index),M2region8stage4day4index);
M2_region8_day4_0stage=setdiff(M2region8stage1day4diff_ratio_deltaF(:,1),M2_region8_day4_4stages);

M2_region8_day5_4stages=union(union(union(M2region8stage1day5index,M2region8stage2day5index),M2region8stage3day5index),M2region8stage4day5index);
M2_region8_day5_0stage=setdiff(M2region8stage1day5diff_ratio_deltaF(:,1),M2_region8_day5_4stages);








for cell_num=1:length(M2_region8_day1_4stages)
    M2region8stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))))-mean(M2region8stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))));
    M2region8stage1day1_difference_struct=cell2mat(struct2cell(M2region8stage1day1_difference));
    
    M2region8stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))))-mean(M2region8stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))));
    M2region8stage2day1_difference_struct=cell2mat(struct2cell(M2region8stage2day1_difference));
    
    M2region8stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))))-mean(M2region8stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))));
    M2region8stage3day1_difference_struct=cell2mat(struct2cell(M2region8stage3day1_difference));
    
    M2region8stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))))-mean(M2region8stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))));
    M2region8stage4day1_difference_struct=cell2mat(struct2cell(M2region8stage4day1_difference)); 
end
M2region8day1=[M2region8stage1day1_difference_struct M2region8stage2day1_difference_struct M2region8stage3day1_difference_struct M2region8stage4day1_difference_struct M2_region8_day1_4stages];
for i=1:length(M2region8day1)
    
    if sum(M2region8day1(i,1:4)<0)>sum(M2region8day1(i,1:4)>0)
        M2region8day1(i,6)=-1;
    elseif sum(M2region8day1(i,1:4)<0)<sum(M2region8day1(i,1:4)>0)
        M2region8day1(i,6)=1;
    elseif sum(M2region8day1(i,1:4)<0)==sum(M2region8day1(i,1:4)>0)
        if abs(mean(M2region8day1(i,find(M2region8day1(i,1:4)<0))))>abs(mean(M2region8day1(i,find(M2region8day1(i,1:4)>0))))
            M2region8day1(i,6)=-1;
        elseif abs(mean(M2region8day1(i,find(M2region8day1(i,1:4)<0))))<abs(mean(M2region8day1(i,find(M2region8day1(i,1:4)>0))))
            M2region8day1(i,6)=1;
        end
    end
end
M2region8day1_wrong_number=sum(M2region8day1(:,6)==-1);
M2region8day1_correct_number=sum(M2region8day1(:,6)==1);





for cell_num=1:length(M2_region8_day2_4stages)
    M2region8stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))))-mean(M2region8stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))));
    M2region8stage1day2_difference_struct=cell2mat(struct2cell(M2region8stage1day2_difference));
    
    M2region8stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))))-mean(M2region8stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))));
    M2region8stage2day2_difference_struct=cell2mat(struct2cell(M2region8stage2day2_difference));
    
    M2region8stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))))-mean(M2region8stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))));
    M2region8stage3day2_difference_struct=cell2mat(struct2cell(M2region8stage3day2_difference));
    
    M2region8stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))))-mean(M2region8stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))));
    M2region8stage4day2_difference_struct=cell2mat(struct2cell(M2region8stage4day2_difference));
end
M2region8day2=[M2region8stage1day2_difference_struct M2region8stage2day2_difference_struct M2region8stage3day2_difference_struct M2region8stage4day2_difference_struct M2_region8_day2_4stages];
for i=1:length(M2region8day2)
    
    if sum(M2region8day2(i,1:4)<0)>sum(M2region8day2(i,1:4)>0)
        M2region8day2(i,6)=-1;
    elseif sum(M2region8day2(i,1:4)<0)<sum(M2region8day2(i,1:4)>0)
        M2region8day2(i,6)=1;
    elseif sum(M2region8day2(i,1:4)<0)==sum(M2region8day2(i,1:4)>0)
        if abs(mean(M2region8day2(i,find(M2region8day2(i,1:4)<0))))>abs(mean(M2region8day2(i,find(M2region8day2(i,1:4)>0))))
            M2region8day2(i,6)=-1;
        elseif abs(mean(M2region8day2(i,find(M2region8day2(i,1:4)<0))))<abs(mean(M2region8day2(i,find(M2region8day2(i,1:4)>0))))
            M2region8day2(i,6)=1;
        end
    end
end
M2region8day2_wrong_number=sum(M2region8day2(:,6)==-1);
M2region8day2_correct_number=sum(M2region8day2(:,6)==1);



for cell_num=1:length(M2_region8_day3_4stages)
    M2region8stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))))-mean(M2region8stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))));
    M2region8stage1day3_difference_struct=cell2mat(struct2cell(M2region8stage1day3_difference));
    
    M2region8stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))))-mean(M2region8stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))));
    M2region8stage2day3_difference_struct=cell2mat(struct2cell(M2region8stage2day3_difference));
    
    M2region8stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))))-mean(M2region8stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))));
    M2region8stage3day3_difference_struct=cell2mat(struct2cell(M2region8stage3day3_difference));
    
    M2region8stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))))-mean(M2region8stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))));
    M2region8stage4day3_difference_struct=cell2mat(struct2cell(M2region8stage4day3_difference));
end
M2region8day3=[M2region8stage1day3_difference_struct M2region8stage2day3_difference_struct M2region8stage3day3_difference_struct M2region8stage4day3_difference_struct M2_region8_day3_4stages];
for i=1:length(M2region8day3)
    
    if sum(M2region8day3(i,1:4)<0)>sum(M2region8day3(i,1:4)>0)
        M2region8day3(i,6)=-1;
    elseif sum(M2region8day3(i,1:4)<0)<sum(M2region8day3(i,1:4)>0)
        M2region8day3(i,6)=1;
    elseif sum(M2region8day3(i,1:4)<0)==sum(M2region8day3(i,1:4)>0)
        if abs(mean(M2region8day3(i,find(M2region8day3(i,1:4)<0))))>abs(mean(M2region8day3(i,find(M2region8day3(i,1:4)>0))))
            M2region8day3(i,6)=-1;
        elseif abs(mean(M2region8day3(i,find(M2region8day3(i,1:4)<0))))<abs(mean(M2region8day3(i,find(M2region8day3(i,1:4)>0))))
            M2region8day3(i,6)=1;
        end
    end
end
M2region8day3_wrong_number=sum(M2region8day3(:,6)==-1);
M2region8day3_correct_number=sum(M2region8day3(:,6)==1);




for cell_num=1:length(M2_region8_day4_4stages)
    M2region8stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))))-mean(M2region8stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))));
    M2region8stage1day4_difference_struct=cell2mat(struct2cell(M2region8stage1day4_difference));
    
    M2region8stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))))-mean(M2region8stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))));
    M2region8stage2day4_difference_struct=cell2mat(struct2cell(M2region8stage2day4_difference));
    
    M2region8stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))))-mean(M2region8stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))));
    M2region8stage3day4_difference_struct=cell2mat(struct2cell(M2region8stage3day4_difference));
    
    M2region8stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))))-mean(M2region8stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))));
    M2region8stage4day4_difference_struct=cell2mat(struct2cell(M2region8stage4day4_difference));
end
M2region8day4=[M2region8stage1day4_difference_struct M2region8stage2day4_difference_struct M2region8stage3day4_difference_struct M2region8stage4day4_difference_struct M2_region8_day4_4stages];
for i=1:length(M2region8day4)
    
    if sum(M2region8day4(i,1:4)<0)>sum(M2region8day4(i,1:4)>0)
        M2region8day4(i,6)=-1;
    elseif sum(M2region8day4(i,1:4)<0)<sum(M2region8day4(i,1:4)>0)
        M2region8day4(i,6)=1;
    elseif sum(M2region8day4(i,1:4)<0)==sum(M2region8day4(i,1:4)>0)
        if abs(mean(M2region8day4(i,find(M2region8day4(i,1:4)<0))))>abs(mean(M2region8day4(i,find(M2region8day4(i,1:4)>0))))
            M2region8day4(i,6)=-1;
        elseif abs(mean(M2region8day4(i,find(M2region8day4(i,1:4)<0))))<abs(mean(M2region8day4(i,find(M2region8day4(i,1:4)>0))))
            M2region8day4(i,6)=1;
        end
    end
end
M2region8day4_wrong_number=sum(M2region8day4(:,6)==-1);
M2region8day4_correct_number=sum(M2region8day4(:,6)==1);


for cell_num=1:length(M2_region8_day5_4stages)
    M2region8stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))))-mean(M2region8stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))));
    M2region8stage1day5_difference_struct=cell2mat(struct2cell(M2region8stage1day5_difference));
    
    M2region8stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))))-mean(M2region8stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))));
    M2region8stage2day5_difference_struct=cell2mat(struct2cell(M2region8stage2day5_difference));
    
    M2region8stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))))-mean(M2region8stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))));
    M2region8stage3day5_difference_struct=cell2mat(struct2cell(M2region8stage3day5_difference));
    
    M2region8stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))))-mean(M2region8stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))));
    M2region8stage4day5_difference_struct=cell2mat(struct2cell(M2region8stage4day5_difference));
end
M2region8day5=[M2region8stage1day5_difference_struct M2region8stage2day5_difference_struct M2region8stage3day5_difference_struct M2region8stage4day5_difference_struct M2_region8_day5_4stages];
for i=1:length(M2region8day5)
    
    if sum(M2region8day5(i,1:4)<0)>sum(M2region8day5(i,1:4)>0)
        M2region8day5(i,6)=-1;
    elseif sum(M2region8day5(i,1:4)<0)<sum(M2region8day5(i,1:4)>0)
        M2region8day5(i,6)=1;
    elseif sum(M2region8day5(i,1:4)<0)==sum(M2region8day5(i,1:4)>0)
        if abs(mean(M2region8day5(i,find(M2region8day5(i,1:4)<0))))>abs(mean(M2region8day5(i,find(M2region8day5(i,1:4)>0))))
            M2region8day5(i,6)=-1;
        elseif abs(mean(M2region8day5(i,find(M2region8day5(i,1:4)<0))))<abs(mean(M2region8day5(i,find(M2region8day5(i,1:4)>0))))
            M2region8day5(i,6)=1;
        end
    end
end
M2region8day5_wrong_number=sum(M2region8day5(:,6)==-1);
M2region8day5_correct_number=sum(M2region8day5(:,6)==1);



subregions_recordingnum=M2region1day1_recordingnum+M2region1day2_recordingnum+M2region1day3_recordingnum+M2region1day4_recordingnum+M2region1day5_recordingnum+M2region1day6_recordingnum+M2region1day7_recordingnum+M2region2day1_recordingnum+M2region2day2_recordingnum+M2region2day3_recordingnum+M2region2day4_recordingnum+M2region3day1_recordingnum+M2region3day2_recordingnum+M2region3day3_recordingnum+M2region3day4_recordingnum+M2region3day5_recordingnum+M2region3day6_recordingnum+M2region3day7_recordingnum+M2region4day1_recordingnum+M2region4day2_recordingnum+M2region4day3_recordingnum+M2region5day1_recordingnum+M2region5day2_recordingnum+M2region5day3_recordingnum+M2region5day4_recordingnum+M2region5day5_recordingnum+M2region5day6_recordingnum+M2region6day1_recordingnum+M2region6day2_recordingnum+M2region6day3_recordingnum+M2region6day4_recordingnum+M2region7day1_recordingnum+M2region7day2_recordingnum+M2region7day3_recordingnum+M2region7day4_recordingnum+M2region7day5_recordingnum+M2region7day6_recordingnum+M2region8day1_recordingnum+M2region8day2_recordingnum+M2region8day3_recordingnum+M2region8day4_recordingnum+M2region8day5_recordingnum;
m1_correct=M2region1day1_correct_number+M2region1day2_correct_number+M2region1day3_correct_number+M2region1day4_correct_number+M2region1day5_correct_number+M2region1day6_correct_number+M2region1day7_correct_number+M2region2day1_correct_number+M2region2day2_correct_number+M2region2day3_correct_number+M2region2day4_correct_number+M2region3day1_correct_number+M2region3day2_correct_number+M2region3day3_correct_number+M2region3day4_correct_number+M2region3day5_correct_number+M2region3day6_correct_number+M2region3day7_correct_number+M2region4day1_correct_number+M2region4day2_correct_number+M2region4day3_correct_number+M2region5day1_correct_number+M2region5day2_correct_number+M2region5day3_correct_number+M2region5day4_correct_number+M2region5day5_correct_number+M2region5day6_correct_number+M2region6day1_correct_number+M2region6day2_correct_number+M2region6day3_correct_number+M2region6day4_correct_number+M2region7day1_correct_number+M2region7day2_correct_number+M2region7day3_correct_number+M2region7day4_correct_number+M2region7day5_correct_number+M2region7day6_correct_number+M2region8day1_correct_number+M2region8day2_correct_number+M2region8day3_correct_number+M2region8day4_correct_number+M2region8day5_correct_number;

m1_wrong=M2region1day1_wrong_number+M2region1day2_wrong_number+M2region1day3_wrong_number+M2region1day4_wrong_number+M2region1day5_wrong_number+M2region1day6_wrong_number+M2region1day7_wrong_number+M2region2day1_wrong_number+M2region2day2_wrong_number+M2region2day3_wrong_number+M2region2day4_wrong_number+M2region3day1_wrong_number+M2region3day2_wrong_number+M2region3day3_wrong_number+M2region3day4_wrong_number+M2region3day5_wrong_number+M2region3day6_wrong_number+M2region3day7_wrong_number+M2region4day1_wrong_number+M2region4day2_wrong_number+M2region4day3_wrong_number+M2region5day1_wrong_number+M2region5day2_wrong_number+M2region5day3_wrong_number+M2region5day4_wrong_number+M2region5day5_wrong_number+M2region5day6_wrong_number+M2region6day1_wrong_number+M2region6day2_wrong_number+M2region6day3_wrong_number+M2region6day4_wrong_number+M2region7day1_wrong_number+M2region7day2_wrong_number+M2region7day3_wrong_number+M2region7day4_wrong_number+M2region7day5_wrong_number+M2region7day6_wrong_number+M2region8day1_wrong_number+M2region8day2_wrong_number+M2region8day3_wrong_number+M2region8day4_wrong_number+M2region8day5_wrong_number;



p_m1_correct=m1_correct/subregions_recordingnum;
p_m1_wrong=m1_wrong/subregions_recordingnum;

pie([p_m1_correct,p_m1_wrong]);
cm=[0.6 0.8 0.7;0.9 0.5 0.4];
colormap(cm);






