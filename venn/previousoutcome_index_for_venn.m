load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_previous_trials_outcome_20211108_newmethod.mat');
load('L:\Monkey1\region1\20211109\proportions_of_cells_encoding_previous_trials_outcome_20211109_newmethod.mat');
load('L:\Monkey1\region1\20211110\proportions_of_cells_encoding_previous_trials_outcome_20211110_newmethod.mat');
load('L:\Monkey1\region1\20211111\proportions_of_cells_encoding_previous_trials_outcome_20211111_newmethod.mat');
load('L:\Monkey1\region1\20211112\proportions_of_cells_encoding_previous_trials_outcome_20211112_newmethod.mat');
load('L:\Monkey1\region1\20211113\proportions_of_cells_encoding_previous_trials_outcome_20211113_newmethod.mat');
load('L:\Monkey1\region1\20211115\proportions_of_cells_encoding_previous_trials_outcome_20211115_newmethod.mat');
load('L:\Monkey1\region1\20211116\proportions_of_cells_encoding_previous_trials_outcome_20211116_newmethod.mat');
load('L:\Monkey1\region1\20211117\proportions_of_cells_encoding_previous_trials_outcome_20211117_newmethod.mat');
load('L:\Monkey1\region1\20211118\proportions_of_cells_encoding_previous_trials_outcome_20211118_newmethod.mat');
load('L:\Monkey1\region1\20211119\proportions_of_cells_encoding_previous_trials_outcome_20211119_newmethod.mat');
load('L:\Monkey1\region1\20211122\proportions_of_cells_encoding_previous_trials_outcome_20211122_newmethod.mat');

for i=1:length(M1region1day1)
    M1region1day1index{i}=['1101',num2str(M1region1day1(i,7))];
end


for i=1:length(M1region1day2)
    M1region1day2index{i}=['1102',num2str(M1region1day2(i,7))];
end

for i=1:length(M1region1day3)
    M1region1day3index{i}=['1103',num2str(M1region1day3(i,7))];
end

for i=1:length(M1region1day4)
    M1region1day4index{i}=['1104',num2str(M1region1day4(i,7))];
end

for i=1:length(M1region1day5)
    M1region1day5index{i}=['1105',num2str(M1region1day5(i,7))];
end

for i=1:length(M1region1day6)
    M1region1day6index{i}=['1106',num2str(M1region1day6(i,7))];
end

for i=1:length(M1region1day7)
    M1region1day7index{i}=['1107',num2str(M1region1day7(i,7))];
end

M1_region1_day8_6stages=union(union(union(union(union(M1region1stage1day8index,M1region1stage2day8index),M1region1stage3day8index),M1region1stage4day8index),M1region1stage5day8index),M1region1stage6day8index);
M1_region1_day8_0stage=setdiff(M1region1stage1day8diff_ratio_deltaF(:,1),M1_region1_day8_6stages);

for cell_num=1:length(M1_region1_day8_6stages)
    M1region1stage1day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))))-mean(M1region1stage1day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))));
    M1region1stage1day8_difference_struct=cell2mat(struct2cell(M1region1stage1day8_difference));
    
    M1region1stage2day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))))-mean(M1region1stage2day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))));
    M1region1stage2day8_difference_struct=cell2mat(struct2cell(M1region1stage2day8_difference));
    
    M1region1stage3day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))))-mean(M1region1stage3day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))));
    M1region1stage3day8_difference_struct=cell2mat(struct2cell(M1region1stage3day8_difference));
    
    M1region1stage4day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))))-mean(M1region1stage4day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))));
    M1region1stage4day8_difference_struct=cell2mat(struct2cell(M1region1stage4day8_difference));
    
     M1region1stage5day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage5day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))))-mean(M1region1stage5day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))));
    M1region1stage5day8_difference_struct=cell2mat(struct2cell(M1region1stage5day8_difference));
    
    
     M1region1stage6day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage5day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))))-mean(M1region1stage6day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_6stages(cell_num))));
    M1region1stage6day8_difference_struct=cell2mat(struct2cell(M1region1stage5day8_difference));
    
    
end
M1region1day8=[M1region1stage1day8_difference_struct M1region1stage2day8_difference_struct M1region1stage3day8_difference_struct M1region1stage4day8_difference_struct M1region1stage5day8_difference_struct M1region1stage6day8_difference_struct M1_region1_day8_6stages];

for i=1:length(M1region1day8)
    M1region1day8index{i}=['1108',num2str(M1region1day8(i,7))];
end

for i=1:length(M1region1day9)
    M1region1day9index{i}=['1109',num2str(M1region1day9(i,7))];
end
for i=1:length(M1region1day10)
    M1region1day10index{i}=['1110',num2str(M1region1day10(i,7))];
end
for i=1:length(M1region1day11)
    M1region1day11index{i}=['1111',num2str(M1region1day11(i,7))];
end
for i=1:length(M1region1day12)
    M1region1day12index{i}=['1112',num2str(M1region1day12(i,7))];
end





load('L:\Monkey1\region2\20211120\proportions_of_cells_encoding_previous_trials_outcome_20211120_newmethod.mat');
load('L:\Monkey1\region2\20211121\proportions_of_cells_encoding_previous_trials_outcome_20211121_newmethod.mat');
load('L:\Monkey1\region2\20211123\proportions_of_cells_encoding_previous_trials_outcome_20211123_newmethod.mat');
load('L:\Monkey1\region2\20211124\proportions_of_cells_encoding_previous_trials_outcome_20211124_newmethod.mat');


for i=1:length(M1region2day1)
    M1region2day1index{i}=['1201',num2str(M1region2day1(i,7))];
end

for i=1:length(M1region2day2)
    M1region2day2index{i}=['1202',num2str(M1region2day2(i,7))];
end

for i=1:length(M1region2day3)
    M1region2day3index{i}=['1203',num2str(M1region2day3(i,7))];
end

for i=1:length(M1region2day4)
    M1region2day4index{i}=['1204',num2str(M1region2day4(i,7))];
end




load('L:\Monkey1\region3\20211125\proportions_of_cells_encoding_previous_trials_outcome_20211125_newmethod.mat');
load('L:\Monkey1\region3\20211126\proportions_of_cells_encoding_previous_trials_outcome_20211126_newmethod.mat');
load('L:\Monkey1\region3\20211127\proportions_of_cells_encoding_previous_trials_outcome_20211127_newmethod.mat');

load('L:\Monkey1\region4\20211129\proportions_of_cells_encoding_previous_trials_outcome_20211129_newmethod.mat');
load('L:\Monkey1\region4\20211201\proportions_of_cells_encoding_previous_trials_outcome_20211201_newmethod.mat');
load('L:\Monkey1\region4\20211202\proportions_of_cells_encoding_previous_trials_outcome_20211202_newmethod.mat');


for i=1:length(M1region3day1)
    M1region3day1index{i}=['1301',num2str(M1region3day1(i,7))];
end

for i=1:length(M1region3day2)
    M1region3day2index{i}=['1302',num2str(M1region3day2(i,7))];
end

for i=1:length(M1region3day3)
    M1region3day3index{i}=['1303',num2str(M1region3day3(i,7))];
end




for i=1:length(M1region4day1)
    M1region4day1index{i}=['1401',num2str(M1region4day1(i,7))];
end

for i=1:length(M1region4day2)
    M1region4day2index{i}=['1402',num2str(M1region4day2(i,7))];
end

for i=1:length(M1region4day3)
    M1region4day3index{i}=['1403',num2str(M1region4day3(i,7))];
end


load('L:\Monkey1\region5\20211203\proportions_of_cells_encoding_previous_trials_outcome_20211203_newmethod.mat');
load('L:\Monkey1\region5\20211204\proportions_of_cells_encoding_previous_trials_outcome_20211204_newmethod.mat');

for i=1:length(M1region5day1)
    M1region5day1index{i}=['1501',num2str(M1region5day1(i,7))];
end

for i=1:length(M1region5day2)
    M1region5day2index{i}=['1502',num2str(M1region5day2(i,7))];
end





load('L:\Monkey1\region6\20211217\proportions_of_cells_encoding_previous_trials_outcome_20211217_newmethod.mat');
load('L:\Monkey1\region6\20211218\proportions_of_cells_encoding_previous_trials_outcome_20211218_newmethod.mat');
load('L:\Monkey1\region6\20211219\proportions_of_cells_encoding_previous_trials_outcome_20211219_newmethod.mat');
load('L:\Monkey1\region6\20211220\proportions_of_cells_encoding_previous_trials_outcome_20211220_newmethod.mat');
load('L:\Monkey1\region6\20211221\proportions_of_cells_encoding_previous_trials_outcome_20211221_newmethod.mat');
load('L:\Monkey1\region6\20211222\proportions_of_cells_encoding_previous_trials_outcome_20211222_newmethod.mat');
load('L:\Monkey1\region6\20211223\proportions_of_cells_encoding_previous_trials_outcome_20211223_newmethod.mat');
load('L:\Monkey1\region6\20211224\proportions_of_cells_encoding_previous_trials_outcome_20211224_newmethod.mat');
load('L:\Monkey1\region6\20211225\proportions_of_cells_encoding_previous_trials_outcome_20211225_newmethod.mat');
load('L:\Monkey1\region6\20211226\proportions_of_cells_encoding_previous_trials_outcome_20211226_newmethod.mat');

for i=1:length(M1region6day1)
    M1region6day1index{i}=['1601',num2str(M1region6day1(i,7))];
end


for i=1:length(M1region6day2)
    M1region6day2index{i}=['1602',num2str(M1region6day2(i,7))];
end

for i=1:length(M1region6day3)
    M1region6day3index{i}=['1603',num2str(M1region6day3(i,7))];
end

for i=1:length(M1region6day4)
    M1region6day4index{i}=['1604',num2str(M1region6day4(i,7))];
end

for i=1:length(M1region6day5)
    M1region6day5index{i}=['1605',num2str(M1region6day5(i,7))];
end

for i=1:length(M1region6day6)
    M1region6day6index{i}=['1606',num2str(M1region6day6(i,7))];
end

for i=1:length(M1region6day7)
    M1region6day7index{i}=['1607',num2str(M1region6day7(i,7))];
end
for i=1:length(M1region6day8)
    M1region6day8index{i}=['1608',num2str(M1region6day8(i,7))];
end

for i=1:length(M1region6day9)
    M1region6day9index{i}=['1609',num2str(M1region6day9(i,7))];
end
for i=1:length(M1region6day10)
    M1region6day10index{i}=['1610',num2str(M1region6day10(i,7))];
end


load('L:\Monkey1\region7\20220115\proportions_of_cells_encoding_previous_trials_outcome_20220115_newmethod.mat');
load('L:\Monkey1\region7\20220116\proportions_of_cells_encoding_previous_trials_outcome_20220116_newmethod.mat');
load('L:\Monkey1\region7\20220117\proportions_of_cells_encoding_previous_trials_outcome_20220117_newmethod.mat');
for i=1:length(M1region7day1)
    M1region7day1index{i}=['1701',num2str(M1region7day1(i,7))];
end


for i=1:length(M1region7day2)
    M1region7day2index{i}=['1702',num2str(M1region7day2(i,7))];
end

for i=1:length(M1region7day3)
    M1region7day3index{i}=['1703',num2str(M1region7day3(i,7))];
end

previousoutcome_index=[M1region1day1index M1region1day2index M1region1day3index M1region1day4index M1region1day5index M1region1day6index M1region1day7index M1region1day8index M1region1day9index M1region1day10index M1region1day11index M1region1day12index M1region2day1index M1region2day2index M1region2day3index M1region2day4index  M1region3day1index M1region3day2index M1region3day3index M1region4day1index M1region4day2index M1region4day3index  M1region5day1index M1region5day2index M1region6day1index  M1region6day2index  M1region6day3index  M1region6day4index  M1region6day5index  M1region6day6index  M1region6day7index M1region6day8index M1region6day9index M1region6day10index M1region7day1index  M1region7day2index M1region7day3index]'
