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
%day1
for i=1:length(M1region1stage1day1index)
    M1region1stage1day1index_added{i}=['a',num2str(M1region1stage1day1index(i))];
end
for i=1:length(M1region1stage1day1diff_ratio_deltaF)
    M1region1day1_raw_index{i}=['a',num2str(M1region1stage1day1diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day1index)
    M1region1stage2day1index_added{i}=['a',num2str(M1region1stage2day1index(i))];
end
for i=1:length(M1region1stage3day1index)
    M1region1stage3day1index_added{i}=['a',num2str(M1region1stage3day1index(i))];
end
for i=1:length(M1region1stage4day1index)
    M1region1stage4day1index_added{i}=['a',num2str(M1region1stage4day1index(i))];
end
% for i=1:length(M1region1stage5day1index)
%     M1region1stage5day1index_added{i}=['a',num2str(M1region1stage5day1index(i))];
% end

%day2
for i=1:length(M1region1stage1day2index)
    M1region1stage1day2index_added{i}=['b',num2str(M1region1stage1day2index(i))];
end
for i=1:length(M1region1stage1day2diff_ratio_deltaF)
    M1region1day2_raw_index{i}=['b',num2str(M1region1stage1day2diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day2index)
    M1region1stage2day2index_added{i}=['b',num2str(M1region1stage2day2index(i))];
end
for i=1:length(M1region1stage3day2index)
    M1region1stage3day2index_added{i}=['b',num2str(M1region1stage3day2index(i))];
end
for i=1:length(M1region1stage4day2index)
    M1region1stage4day2index_added{i}=['b',num2str(M1region1stage4day2index(i))];
end
% for i=1:length(M1region1stage5day2index)
%     M1region1stage5day2index_added{i}=['b',num2str(M1region1stage5day2index(i))];
% end
%day3
for i=1:length(M1region1stage1day3index)
    M1region1stage1day3index_added{i}=['c',num2str(M1region1stage1day3index(i))];
end
for i=1:length(M1region1stage1day3diff_ratio_deltaF)
    M1region1day3_raw_index{i}=['c',num2str(M1region1stage1day3diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day3index)
    M1region1stage2day3index_added{i}=['c',num2str(M1region1stage2day3index(i))];
end
for i=1:length(M1region1stage3day3index)
    M1region1stage3day3index_added{i}=['c',num2str(M1region1stage3day3index(i))];
end
for i=1:length(M1region1stage4day3index)
    M1region1stage4day3index_added{i}=['c',num2str(M1region1stage4day3index(i))];
end
% for i=1:length(M1region1stage5day3index)
%     M1region1stage5day3index_added{i}=['c',num2str(M1region1stage5day3index(i))];
% end
%day4
for i=1:length(M1region1stage1day4index)
       M1region1stage1day4index_added{i}=['d',num2str(M1region1stage1day4index(i))];
end 
for i=1:length(M1region1stage1day4diff_ratio_deltaF)
    M1region1day4_raw_index{i}=['d',num2str(M1region1stage1day4diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day4index)
       M1region1stage2day4index_added{i}=['d',num2str(M1region1stage2day4index(i))];
end 
for i=1:length(M1region1stage3day4index)
       M1region1stage3day4index_added{i}=['d',num2str(M1region1stage3day4index(i))];
end
for i=1:length(M1region1stage4day4index)
       M1region1stage4day4index_added{i}=['d',num2str(M1region1stage4day4index(i))];
end
% for i=1:length(M1region1stage5day4index)
%        M1region1stage5day4index_added{i}=['d',num2str(M1region1stage5day4index(i))];
% end
%day5
for i=1:length(M1region1stage1day5index)
       M1region1stage1day5index_added{i}=['e',num2str(M1region1stage1day5index(i))];
end 
for i=1:length(M1region1stage1day5diff_ratio_deltaF)
    M1region1day5_raw_index{i}=['e',num2str(M1region1stage1day5diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day5index)
       M1region1stage2day5index_added{i}=['e',num2str(M1region1stage2day5index(i))];
end 
for i=1:length(M1region1stage3day5index)
       M1region1stage3day5index_added{i}=['e',num2str(M1region1stage3day5index(i))];
end 
for i=1:length(M1region1stage4day5index)
       M1region1stage4day5index_added{i}=['e',num2str(M1region1stage4day5index(i))];
end 
% for i=1:length(M1region1stage5day5index)
%        M1region1stage5day5index_added{i}=['e',num2str(M1region1stage5day5index(i))];
% end 
%day6
for i=1:length(M1region1stage1day6index)
      M1region1stage1day6index_added{i}=['f',num2str(M1region1stage1day6index(i))];
end  
for i=1:length(M1region1stage1day6diff_ratio_deltaF)
    M1region1day6_raw_index{i}=['f',num2str(M1region1stage1day6diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day6index)
      M1region1stage2day6index_added{i}=['f',num2str(M1region1stage2day6index(i))];
end
for i=1:length(M1region1stage3day6index)
      M1region1stage3day6index_added{i}=['f',num2str(M1region1stage3day6index(i))];
end
for i=1:length(M1region1stage4day6index)
      M1region1stage4day6index_added{i}=['f',num2str(M1region1stage4day6index(i))];
end
% for i=1:length(M1region1stage5day6index)
%       M1region1stage5day6index_added{i}=['f',num2str(M1region1stage5day6index(i))];
% end
%day7
for i=1:length(M1region1stage1day7index)
      M1region1stage1day7index_added{i}=['g',num2str(M1region1stage1day7index(i))];
end  
for i=1:length(M1region1stage1day7diff_ratio_deltaF)
    M1region1day7_raw_index{i}=['g',num2str(M1region1stage1day7diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day7index)
      M1region1stage2day7index_added{i}=['g',num2str(M1region1stage2day7index(i))];
end  
for i=1:length(M1region1stage3day7index)
      M1region1stage3day7index_added{i}=['g',num2str(M1region1stage3day7index(i))];
end  
for i=1:length(M1region1stage4day7index)
      M1region1stage4day7index_added{i}=['g',num2str(M1region1stage4day7index(i))];
end  
% for i=1:length(M1region1stage5day7index)
%       M1region1stage5day7index_added{i}=['g',num2str(M1region1stage5day7index(i))];
% end  
%day8
for i=1:length(M1region1stage1day8index)
      M1region1stage1day8index_added{i}=['h',num2str(M1region1stage1day8index(i))];
end  
for i=1:length(M1region1stage1day8diff_ratio_deltaF)
    M1region1day8_raw_index{i}=['h',num2str(M1region1stage1day8diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day8index)
      M1region1stage2day8index_added{i}=['h',num2str(M1region1stage2day8index(i))];
end  
for i=1:length(M1region1stage3day8index)
      M1region1stage3day8index_added{i}=['h',num2str(M1region1stage3day8index(i))];
end  
for i=1:length(M1region1stage4day8index)
      M1region1stage4day8index_added{i}=['h',num2str(M1region1stage4day8index(i))];
end  
% for i=1:length(M1region1stage5day8index)
%       M1region1stage5day8index_added{i}=['h',num2str(M1region1stage5day8index(i))];
% end  
%day9
for i=1:length(M1region1stage1day9index)
      M1region1stage1day9index_added{i}=['i',num2str(M1region1stage1day9index(i))];
end 
for i=1:length(M1region1stage1day9diff_ratio_deltaF)
    M1region1day9_raw_index{i}=['i',num2str(M1region1stage1day9diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day9index)
      M1region1stage2day9index_added{i}=['i',num2str(M1region1stage2day9index(i))];
end 
for i=1:length(M1region1stage3day9index)
      M1region1stage3day9index_added{i}=['i',num2str(M1region1stage3day9index(i))];
end 
for i=1:length(M1region1stage4day9index)
      M1region1stage4day9index_added{i}=['i',num2str(M1region1stage4day9index(i))];
end 
% for i=1:length(M1region1stage5day9index)
%       M1region1stage5day9index_added{i}=['i',num2str(M1region1stage5day9index(i))];
% end 

%day10
for i=1:length(M1region1stage1day10index)
      M1region1stage1day10index_added{i}=['j',num2str(M1region1stage1day10index(i))];
end
for i=1:length(M1region1stage1day10diff_ratio_deltaF)
    M1region1day10_raw_index{i}=['j',num2str(M1region1stage1day10diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day10index)
      M1region1stage2day10index_added{i}=['j',num2str(M1region1stage2day10index(i))];
end
for i=1:length(M1region1stage3day10index)
      M1region1stage3day10index_added{i}=['j',num2str(M1region1stage3day10index(i))];
end
for i=1:length(M1region1stage4day10index)
      M1region1stage4day10index_added{i}=['j',num2str(M1region1stage4day10index(i))];
end
% for i=1:length(M1region1stage5day10index)
%       M1region1stage5day10index_added{i}=['j',num2str(M1region1stage5day10index(i))];
% % end
%day11
for i=1:length(M1region1stage1day11index)
      M1region1stage1day11index_added{i}=['k',num2str(M1region1stage1day11index(i))];
end 
for i=1:length(M1region1stage1day11diff_ratio_deltaF)
    M1region1day11_raw_index{i}=['k',num2str(M1region1stage1day11diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day11index)
      M1region1stage2day11index_added{i}=['k',num2str(M1region1stage2day11index(i))];
end 
for i=1:length(M1region1stage3day11index)
      M1region1stage3day11index_added{i}=['k',num2str(M1region1stage3day11index(i))];
end 
for i=1:length(M1region1stage4day11index)
      M1region1stage4day11index_added{i}=['k',num2str(M1region1stage4day11index(i))];
end 
% for i=1:length(M1region1stage5day11index)
%       M1region1stage5day11index_added{i}=['k',num2str(M1region1stage5day11index(i))];
% end 
%day12
for i=1:length(M1region1stage1day12index)
      M1region1stage1day12index_added{i}=['l',num2str(M1region1stage1day12index(i))];
end 
for i=1:length(M1region1stage1day12diff_ratio_deltaF)
    M1region1day12_raw_index{i}=['l',num2str(M1region1stage1day12diff_ratio_deltaF(i))];
end
for i=1:length(M1region1stage2day12index)
      M1region1stage2day12index_added{i}=['l',num2str(M1region1stage2day12index(i))];
end 
for i=1:length(M1region1stage3day12index)
      M1region1stage3day12index_added{i}=['l',num2str(M1region1stage3day12index(i))];
end
for i=1:length(M1region1stage4day12index)
      M1region1stage4day12index_added{i}=['l',num2str(M1region1stage4day12index(i))];
end
% for i=1:length(M1region1stage5day12index)
%       M1region1stage5day12index_added{i}=['l',num2str(M1region1stage5day12index(i))];
% end
M1_region1_stage1_index_added=[M1region1stage1day1index_added M1region1stage1day2index_added M1region1stage1day3index_added M1region1stage1day4index_added M1region1stage1day5index_added M1region1stage1day6index_added M1region1stage1day7index_added M1region1stage1day8index_added M1region1stage1day9index_added M1region1stage1day10index_added  M1region1stage1day11index_added M1region1stage1day12index_added];
M1_region1_stage2_index_added=[M1region1stage2day1index_added M1region1stage2day2index_added M1region1stage2day3index_added M1region1stage2day4index_added M1region1stage2day5index_added M1region1stage2day6index_added M1region1stage2day7index_added M1region1stage2day8index_added M1region1stage2day9index_added M1region1stage2day10index_added  M1region1stage2day11index_added M1region1stage2day12index_added];
M1_region1_stage3_index_added=[M1region1stage3day1index_added M1region1stage3day2index_added M1region1stage3day3index_added M1region1stage3day4index_added M1region1stage3day5index_added M1region1stage3day6index_added M1region1stage3day7index_added M1region1stage3day8index_added M1region1stage3day9index_added M1region1stage3day10index_added  M1region1stage3day11index_added M1region1stage3day12index_added];
M1_region1_stage4_index_added=[M1region1stage4day1index_added M1region1stage4day2index_added M1region1stage4day3index_added M1region1stage4day4index_added M1region1stage4day5index_added M1region1stage4day6index_added M1region1stage4day7index_added M1region1stage4day8index_added M1region1stage4day9index_added M1region1stage4day10index_added  M1region1stage4day11index_added M1region1stage4day12index_added];
% M1_region1_stage5_index_added=[M1region1stage5day1index_added M1region1stage5day2index_added M1region1stage5day3index_added M1region1stage5day4index_added M1region1stage5day5index_added M1region1stage5day6index_added M1region1stage5day7index_added M1region1stage5day8index_added M1region1stage5day9index_added M1region1stage5day10index_added  M1region1stage5day11index_added M1region1stage5day12index_added];
%day1_neurons
whether_or_not_across_4_stages_m1region1day1=zeros(length(M1region1day1_raw_index),5);
for i=1:length(M1region1day1_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day1_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day1(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day1_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day1_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day1(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day1_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day1_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day1(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day1_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day1_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day1(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day1_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day1_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day1(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day1_raw_index)
    whether_or_not_across_4_stages_m1region1day1(i,5)=sum(whether_or_not_across_4_stages_m1region1day1(i,1:4));
end
percentage_stage0_m1region1day1=sum(whether_or_not_across_4_stages_m1region1day1(:,5)==0)/length(M1region1day1_raw_index);
percentage_stage1_m1region1day1=sum(whether_or_not_across_4_stages_m1region1day1(:,5)==1)/length(M1region1day1_raw_index);
percentage_stage2_m1region1day1=sum(whether_or_not_across_4_stages_m1region1day1(:,5)==2)/length(M1region1day1_raw_index);
percentage_stage3_m1region1day1=sum(whether_or_not_across_4_stages_m1region1day1(:,5)==3)/length(M1region1day1_raw_index);
percentage_stage4_m1region1day1=sum(whether_or_not_across_4_stages_m1region1day1(:,5)==4)/length(M1region1day1_raw_index);
% percentage_stage5_day1=sum(whether_or_not_across_4_stages_day1(:,6)==5)/length(M1region1day1_raw_index);
%day2
whether_or_not_across_4_stages_m1region1day2=zeros(length(M1region1day2_raw_index),5);
for i=1:length(M1region1day2_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day2_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day2(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day2_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day2_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day2(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day2_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day2_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day2(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day2_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day2_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day2(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day2_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day2_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day2(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day2_raw_index)
    whether_or_not_across_4_stages_m1region1day2(i,5)=sum(whether_or_not_across_4_stages_m1region1day2(i,1:4));
end
percentage_stage0_m1region1day2=sum(whether_or_not_across_4_stages_m1region1day2(:,5)==0)/length(M1region1day2_raw_index);
percentage_stage1_m1region1day2=sum(whether_or_not_across_4_stages_m1region1day2(:,5)==1)/length(M1region1day2_raw_index);
percentage_stage2_m1region1day2=sum(whether_or_not_across_4_stages_m1region1day2(:,5)==2)/length(M1region1day2_raw_index);
percentage_stage3_m1region1day2=sum(whether_or_not_across_4_stages_m1region1day2(:,5)==3)/length(M1region1day2_raw_index);
percentage_stage4_m1region1day2=sum(whether_or_not_across_4_stages_m1region1day2(:,5)==4)/length(M1region1day2_raw_index);
% percentage_stage5_day2=sum(whether_or_not_across_4_stages_day2(:,6)==5)/length(M1region1day2_raw_index);
%day3
whether_or_not_across_4_stages_m1region1day3=zeros(length(M1region1day3_raw_index),5);
for i=1:length(M1region1day3_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day3_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day3(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day3_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day3_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day3(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day3_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day3_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day3(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day3_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day3_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day3(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day3_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day3_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day3(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day3_raw_index)
    whether_or_not_across_4_stages_m1region1day3(i,5)=sum(whether_or_not_across_4_stages_m1region1day3(i,1:4));
end
percentage_stage0_m1region1day3=sum(whether_or_not_across_4_stages_m1region1day3(:,5)==0)/length(M1region1day3_raw_index);
percentage_stage1_m1region1day3=sum(whether_or_not_across_4_stages_m1region1day3(:,5)==1)/length(M1region1day3_raw_index);
percentage_stage2_m1region1day3=sum(whether_or_not_across_4_stages_m1region1day3(:,5)==2)/length(M1region1day3_raw_index);
percentage_stage3_m1region1day3=sum(whether_or_not_across_4_stages_m1region1day3(:,5)==3)/length(M1region1day3_raw_index);
percentage_stage4_m1region1day3=sum(whether_or_not_across_4_stages_m1region1day3(:,5)==4)/length(M1region1day3_raw_index);
% percentage_stage5_day3=sum(whether_or_not_across_4_stages_day3(:,6)==5)/length(M1region1day3_raw_index);
%day4
whether_or_not_across_4_stages_m1region1day4=zeros(length(M1region1day4_raw_index),5);
for i=1:length(M1region1day4_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day4_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day4(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day4_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day4_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day4(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day4_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day4_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day4(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day4_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day4_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day4(i,4)=1;
            
        end
    end
end
% 
% for i=1:length(M1region1day4_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day4_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day4(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day4_raw_index)
    whether_or_not_across_4_stages_m1region1day4(i,5)=sum(whether_or_not_across_4_stages_m1region1day4(i,1:4));
end
percentage_stage0_m1region1day4=sum(whether_or_not_across_4_stages_m1region1day4(:,5)==0)/length(M1region1day4_raw_index);
percentage_stage1_m1region1day4=sum(whether_or_not_across_4_stages_m1region1day4(:,5)==1)/length(M1region1day4_raw_index);
percentage_stage2_m1region1day4=sum(whether_or_not_across_4_stages_m1region1day4(:,5)==2)/length(M1region1day4_raw_index);
percentage_stage3_m1region1day4=sum(whether_or_not_across_4_stages_m1region1day4(:,5)==3)/length(M1region1day4_raw_index);
percentage_stage4_m1region1day4=sum(whether_or_not_across_4_stages_m1region1day4(:,5)==4)/length(M1region1day4_raw_index);
% percentage_stage5_day4=sum(whether_or_not_across_4_stages_day4(:,6)==5)/length(M1region1day4_raw_index);

%day5

whether_or_not_across_4_stages_m1region1day5=zeros(length(M1region1day5_raw_index),5);
for i=1:length(M1region1day5_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day5_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day5(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day5_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day5_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day5(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day5_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day5_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day5(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day5_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day5_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day5(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day5_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day5_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day5(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day5_raw_index)
    whether_or_not_across_4_stages_m1region1day5(i,5)=sum(whether_or_not_across_4_stages_m1region1day5(i,1:4));
end
percentage_stage0_m1region1day5=sum(whether_or_not_across_4_stages_m1region1day5(:,5)==0)/length(M1region1day5_raw_index);
percentage_stage1_m1region1day5=sum(whether_or_not_across_4_stages_m1region1day5(:,5)==1)/length(M1region1day5_raw_index);
percentage_stage2_m1region1day5=sum(whether_or_not_across_4_stages_m1region1day5(:,5)==2)/length(M1region1day5_raw_index);
percentage_stage3_m1region1day5=sum(whether_or_not_across_4_stages_m1region1day5(:,5)==3)/length(M1region1day5_raw_index);
percentage_stage4_m1region1day5=sum(whether_or_not_across_4_stages_m1region1day5(:,5)==4)/length(M1region1day5_raw_index);
% percentage_stage5_day5=sum(whether_or_not_across_4_stages_day5(:,6)==5)/length(M1region1day5_raw_index);

%day6
whether_or_not_across_4_stages_m1region1day6=zeros(length(M1region1day6_raw_index),5);
for i=1:length(M1region1day6_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day6_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day6(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day6_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day6_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day6(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day6_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day6_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day6(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day6_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day6_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day6(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day6_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day6_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day6(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day6_raw_index)
    whether_or_not_across_4_stages_m1region1day6(i,5)=sum(whether_or_not_across_4_stages_m1region1day6(i,1:4));
end
percentage_stage0_m1region1day6=sum(whether_or_not_across_4_stages_m1region1day6(:,5)==0)/length(M1region1day6_raw_index);
percentage_stage1_m1region1day6=sum(whether_or_not_across_4_stages_m1region1day6(:,5)==1)/length(M1region1day6_raw_index);
percentage_stage2_m1region1day6=sum(whether_or_not_across_4_stages_m1region1day6(:,5)==2)/length(M1region1day6_raw_index);
percentage_stage3_m1region1day6=sum(whether_or_not_across_4_stages_m1region1day6(:,5)==3)/length(M1region1day6_raw_index);
percentage_stage4_m1region1day6=sum(whether_or_not_across_4_stages_m1region1day6(:,5)==4)/length(M1region1day6_raw_index);
% percentage_stage5_day6=sum(whether_or_not_across_4_stages_day6(:,6)==5)/length(M1region1day6_raw_index);

%day7

whether_or_not_across_4_stages_m1region1day7=zeros(length(M1region1day7_raw_index),5);
for i=1:length(M1region1day7_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day7_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day7(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day7_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day7_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day7(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day7_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day7_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day7(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day7_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day7_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day7(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day7_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day7_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day7(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day7_raw_index)
    whether_or_not_across_4_stages_m1region1day7(i,5)=sum(whether_or_not_across_4_stages_m1region1day7(i,1:4));
end
percentage_stage0_m1region1day7=sum(whether_or_not_across_4_stages_m1region1day7(:,5)==0)/length(M1region1day7_raw_index);
percentage_stage1_m1region1day7=sum(whether_or_not_across_4_stages_m1region1day7(:,5)==1)/length(M1region1day7_raw_index);
percentage_stage2_m1region1day7=sum(whether_or_not_across_4_stages_m1region1day7(:,5)==2)/length(M1region1day7_raw_index);
percentage_stage3_m1region1day7=sum(whether_or_not_across_4_stages_m1region1day7(:,5)==3)/length(M1region1day7_raw_index);
percentage_stage4_m1region1day7=sum(whether_or_not_across_4_stages_m1region1day7(:,5)==4)/length(M1region1day7_raw_index);
% percentage_stage5_day7=sum(whether_or_not_across_4_stages_day7(:,6)==5)/length(M1region1day7_raw_index);


%day8

whether_or_not_across_4_stages_m1region1day8=zeros(length(M1region1day8_raw_index),5);
for i=1:length(M1region1day8_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day8_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day8(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day8_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day8_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day8(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day8_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day8_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day8(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day8_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day8_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day8(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day8_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day8_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day8(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day8_raw_index)
    whether_or_not_across_4_stages_m1region1day8(i,5)=sum(whether_or_not_across_4_stages_m1region1day8(i,1:4));
end
percentage_stage0_m1region1day8=sum(whether_or_not_across_4_stages_m1region1day8(:,5)==0)/length(M1region1day8_raw_index);
percentage_stage1_m1region1day8=sum(whether_or_not_across_4_stages_m1region1day8(:,5)==1)/length(M1region1day8_raw_index);
percentage_stage2_m1region1day8=sum(whether_or_not_across_4_stages_m1region1day8(:,5)==2)/length(M1region1day8_raw_index);
percentage_stage3_m1region1day8=sum(whether_or_not_across_4_stages_m1region1day8(:,5)==3)/length(M1region1day8_raw_index);
percentage_stage4_m1region1day8=sum(whether_or_not_across_4_stages_m1region1day8(:,5)==4)/length(M1region1day8_raw_index);
% percentage_stage5_day8=sum(whether_or_not_across_4_stages_day8(:,6)==5)/length(M1region1day8_raw_index);

%day9
whether_or_not_across_4_stages_m1region1day9=zeros(length(M1region1day9_raw_index),5);
for i=1:length(M1region1day9_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day9_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day9(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day9_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day9_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day9(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day9_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day9_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day9(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day9_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day9_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day9(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day9_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day9_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day9(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day9_raw_index)
    whether_or_not_across_4_stages_m1region1day9(i,5)=sum(whether_or_not_across_4_stages_m1region1day9(i,1:4));
end
percentage_stage0_m1region1day9=sum(whether_or_not_across_4_stages_m1region1day9(:,5)==0)/length(M1region1day9_raw_index);
percentage_stage1_m1region1day9=sum(whether_or_not_across_4_stages_m1region1day9(:,5)==1)/length(M1region1day9_raw_index);
percentage_stage2_m1region1day9=sum(whether_or_not_across_4_stages_m1region1day9(:,5)==2)/length(M1region1day9_raw_index);
percentage_stage3_m1region1day9=sum(whether_or_not_across_4_stages_m1region1day9(:,5)==3)/length(M1region1day9_raw_index);
percentage_stage4_m1region1day9=sum(whether_or_not_across_4_stages_m1region1day9(:,5)==4)/length(M1region1day9_raw_index);
% percentage_stage5_day9=sum(whether_or_not_across_4_stages_day9(:,6)==5)/length(M1region1day9_raw_index);

%day10
whether_or_not_across_4_stages_m1region1day10=zeros(length(M1region1day10_raw_index),5);
for i=1:length(M1region1day10_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day10_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day10(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day10_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day10_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day10(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day10_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day10_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day10(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day10_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day10_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day10(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day10_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day10_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day10(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day10_raw_index)
    whether_or_not_across_4_stages_m1region1day10(i,5)=sum(whether_or_not_across_4_stages_m1region1day10(i,1:4));
end
percentage_stage0_m1region1day10=sum(whether_or_not_across_4_stages_m1region1day10(:,5)==0)/length(M1region1day10_raw_index);
percentage_stage1_m1region1day10=sum(whether_or_not_across_4_stages_m1region1day10(:,5)==1)/length(M1region1day10_raw_index);
percentage_stage2_m1region1day10=sum(whether_or_not_across_4_stages_m1region1day10(:,5)==2)/length(M1region1day10_raw_index);
percentage_stage3_m1region1day10=sum(whether_or_not_across_4_stages_m1region1day10(:,5)==3)/length(M1region1day10_raw_index);
percentage_stage4_m1region1day10=sum(whether_or_not_across_4_stages_m1region1day10(:,5)==4)/length(M1region1day10_raw_index);
% percentage_stage5_day10=sum(whether_or_not_across_4_stages_day10(:,6)==5)/length(M1region1day10_raw_index);


%day11
whether_or_not_across_4_stages_m1region1day11=zeros(length(M1region1day11_raw_index),5);
for i=1:length(M1region1day11_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day11_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day11(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day11_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day11_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day11(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day11_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day11_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day11(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day11_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day11_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day11(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day11_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day11_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day11(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day11_raw_index)
    whether_or_not_across_4_stages_m1region1day11(i,5)=sum(whether_or_not_across_4_stages_m1region1day11(i,1:4));
end
percentage_stage0_m1region1day11=sum(whether_or_not_across_4_stages_m1region1day11(:,5)==0)/length(M1region1day11_raw_index);
percentage_stage1_m1region1day11=sum(whether_or_not_across_4_stages_m1region1day11(:,5)==1)/length(M1region1day11_raw_index);
percentage_stage2_m1region1day11=sum(whether_or_not_across_4_stages_m1region1day11(:,5)==2)/length(M1region1day11_raw_index);
percentage_stage3_m1region1day11=sum(whether_or_not_across_4_stages_m1region1day11(:,5)==3)/length(M1region1day11_raw_index);
percentage_stage4_m1region1day11=sum(whether_or_not_across_4_stages_m1region1day11(:,5)==4)/length(M1region1day11_raw_index);
% percentage_stage5_day11=sum(whether_or_not_across_4_stages_day11(:,6)==5)/length(M1region1day11_raw_index);
%day12
whether_or_not_across_4_stages_m1region1day12=zeros(length(M1region1day12_raw_index),5);
for i=1:length(M1region1day12_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day12_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day12(i,1)=1;
            
        end
    end
end
for i=1:length(M1region1day12_raw_index)
    for j=1:length(M1_region1_stage2_index_added)
        tf = strcmp(M1region1day12_raw_index{1,i},M1_region1_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day12(i,2)=1;
            
        end
    end
end

for i=1:length(M1region1day12_raw_index)
    for j=1:length(M1_region1_stage3_index_added)
        tf = strcmp(M1region1day12_raw_index{1,i},M1_region1_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day12(i,3)=1;
            
        end
    end
end
for i=1:length(M1region1day12_raw_index)
    for j=1:length(M1_region1_stage4_index_added)
        tf = strcmp(M1region1day12_raw_index{1,i},M1_region1_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day12(i,4)=1;
            
        end
    end
end

% for i=1:length(M1region1day12_raw_index)
%     for j=1:length(M1_region1_stage5_index_added)
%         tf = strcmp(M1region1day12_raw_index{1,i},M1_region1_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day12(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M1region1day12_raw_index)
    whether_or_not_across_4_stages_m1region1day12(i,5)=sum(whether_or_not_across_4_stages_m1region1day12(i,1:4));
end
percentage_stage0_m1region1day12=sum(whether_or_not_across_4_stages_m1region1day12(:,5)==0)/length(M1region1day12_raw_index);
percentage_stage1_m1region1day12=sum(whether_or_not_across_4_stages_m1region1day12(:,5)==1)/length(M1region1day12_raw_index);
percentage_stage2_m1region1day12=sum(whether_or_not_across_4_stages_m1region1day12(:,5)==2)/length(M1region1day12_raw_index);
percentage_stage3_m1region1day12=sum(whether_or_not_across_4_stages_m1region1day12(:,5)==3)/length(M1region1day12_raw_index);
percentage_stage4_m1region1day12=sum(whether_or_not_across_4_stages_m1region1day12(:,5)==4)/length(M1region1day12_raw_index);
% percentage_stage5_day12=sum(whether_or_not_across_4_stages_day12(:,6)==5)/length(M1region1day12_raw_index);

markers = 'L:\Monkey1\region1\percentage_on_each_stage_on_each_daym1region1.mat';

save(markers, 'percentage_stage0_m1region1day1');
save(markers,'percentage_stage0_m1region1day2','-append');
save(markers,'percentage_stage0_m1region1day3','-append');
save(markers,'percentage_stage0_m1region1day4','-append');
save(markers,'percentage_stage0_m1region1day5','-append');
save(markers,'percentage_stage0_m1region1day6','-append');
save(markers,'percentage_stage0_m1region1day7','-append');
save(markers,'percentage_stage0_m1region1day8','-append');
save(markers,'percentage_stage0_m1region1day9','-append');
save(markers,'percentage_stage0_m1region1day10','-append');
save(markers,'percentage_stage0_m1region1day11','-append');
save(markers,'percentage_stage0_m1region1day12','-append');

save(markers, 'percentage_stage1_m1region1day1','-append');
save(markers,'percentage_stage1_m1region1day2','-append');
save(markers,'percentage_stage1_m1region1day3','-append');
save(markers,'percentage_stage1_m1region1day4','-append');
save(markers,'percentage_stage1_m1region1day5','-append');
save(markers,'percentage_stage1_m1region1day6','-append');
save(markers,'percentage_stage1_m1region1day7','-append');
save(markers,'percentage_stage1_m1region1day8','-append');
save(markers,'percentage_stage1_m1region1day9','-append');
save(markers,'percentage_stage1_m1region1day10','-append');
save(markers,'percentage_stage1_m1region1day11','-append');
save(markers,'percentage_stage1_m1region1day12','-append');

save(markers, 'percentage_stage2_m1region1day1','-append');
save(markers,'percentage_stage2_m1region1day2','-append');
save(markers,'percentage_stage2_m1region1day3','-append');
save(markers,'percentage_stage2_m1region1day4','-append');
save(markers,'percentage_stage2_m1region1day5','-append');
save(markers,'percentage_stage2_m1region1day6','-append');
save(markers,'percentage_stage2_m1region1day7','-append');
save(markers,'percentage_stage2_m1region1day8','-append');
save(markers,'percentage_stage2_m1region1day9','-append');
save(markers,'percentage_stage2_m1region1day10','-append');
save(markers,'percentage_stage2_m1region1day11','-append');
save(markers,'percentage_stage2_m1region1day12','-append');

save(markers, 'percentage_stage3_m1region1day1','-append');
save(markers,'percentage_stage3_m1region1day2','-append');
save(markers,'percentage_stage3_m1region1day3','-append');
save(markers,'percentage_stage3_m1region1day4','-append');
save(markers,'percentage_stage3_m1region1day5','-append');
save(markers,'percentage_stage3_m1region1day6','-append');
save(markers,'percentage_stage3_m1region1day7','-append');
save(markers,'percentage_stage3_m1region1day8','-append');
save(markers,'percentage_stage3_m1region1day9','-append');
save(markers,'percentage_stage3_m1region1day10','-append');
save(markers,'percentage_stage3_m1region1day11','-append');
save(markers,'percentage_stage3_m1region1day12','-append');


save(markers, 'percentage_stage4_m1region1day1','-append');
save(markers,'percentage_stage4_m1region1day2','-append');
save(markers,'percentage_stage4_m1region1day3','-append');
save(markers,'percentage_stage4_m1region1day4','-append');
save(markers,'percentage_stage4_m1region1day5','-append');
save(markers,'percentage_stage4_m1region1day6','-append');
save(markers,'percentage_stage4_m1region1day7','-append');
save(markers,'percentage_stage4_m1region1day8','-append');
save(markers,'percentage_stage4_m1region1day9','-append');
save(markers,'percentage_stage4_m1region1day10','-append');
save(markers,'percentage_stage4_m1region1day11','-append');
save(markers,'percentage_stage4_m1region1day12','-append');


save(markers,'whether_or_not_across_4_stages_m1region1day12','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day11','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day10','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day9','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day8','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day7','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day6','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day5','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day4','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day3','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day2','-append');
save(markers,'whether_or_not_across_4_stages_m1region1day1','-append');



mean_percentage_stage0=mean([percentage_stage0_m1region1day1 percentage_stage0_m1region1day2 percentage_stage0_m1region1day3 percentage_stage0_m1region1day4 percentage_stage0_m1region1day5 percentage_stage0_m1region1day6 percentage_stage0_m1region1day7 percentage_stage0_m1region1day8 percentage_stage0_m1region1day9 percentage_stage0_m1region1day10 percentage_stage0_m1region1day11 percentage_stage0_m1region1day12]);
std_percentage_stage0=std([percentage_stage0_m1region1day1 percentage_stage0_m1region1day2 percentage_stage0_m1region1day3 percentage_stage0_m1region1day4 percentage_stage0_m1region1day5 percentage_stage0_m1region1day6 percentage_stage0_m1region1day7 percentage_stage0_m1region1day8 percentage_stage0_m1region1day9 percentage_stage0_m1region1day10 percentage_stage0_m1region1day11 percentage_stage0_m1region1day12]);

mean_percentage_stage1=mean([percentage_stage1_m1region1day1 percentage_stage1_m1region1day2 percentage_stage1_m1region1day3 percentage_stage1_m1region1day4 percentage_stage1_m1region1day5 percentage_stage1_m1region1day6 percentage_stage1_m1region1day7 percentage_stage1_m1region1day8 percentage_stage1_m1region1day9 percentage_stage1_m1region1day10 percentage_stage1_m1region1day11 percentage_stage1_m1region1day12]);
std_percentage_stage1=std([percentage_stage1_m1region1day1 percentage_stage1_m1region1day2 percentage_stage1_m1region1day3 percentage_stage1_m1region1day4 percentage_stage1_m1region1day5 percentage_stage1_m1region1day6 percentage_stage1_m1region1day7 percentage_stage1_m1region1day8 percentage_stage1_m1region1day9 percentage_stage1_m1region1day10 percentage_stage1_m1region1day11 percentage_stage1_m1region1day12]);

mean_percentage_stage2=mean([percentage_stage2_m1region1day1 percentage_stage2_m1region1day2 percentage_stage2_m1region1day3 percentage_stage2_m1region1day4 percentage_stage2_m1region1day5 percentage_stage2_m1region1day6 percentage_stage2_m1region1day7 percentage_stage2_m1region1day8 percentage_stage2_m1region1day9 percentage_stage2_m1region1day10 percentage_stage2_m1region1day11 percentage_stage2_m1region1day12]);
std_percentage_stage2=std([percentage_stage2_m1region1day1 percentage_stage2_m1region1day2 percentage_stage2_m1region1day3 percentage_stage2_m1region1day4 percentage_stage2_m1region1day5 percentage_stage2_m1region1day6 percentage_stage2_m1region1day7 percentage_stage2_m1region1day8 percentage_stage2_m1region1day9 percentage_stage2_m1region1day10 percentage_stage2_m1region1day11 percentage_stage2_m1region1day12]);

mean_percentage_stage3=mean([percentage_stage3_m1region1day1 percentage_stage3_m1region1day2 percentage_stage3_m1region1day3 percentage_stage3_m1region1day4 percentage_stage3_m1region1day5 percentage_stage3_m1region1day6 percentage_stage3_m1region1day7 percentage_stage3_m1region1day8 percentage_stage3_m1region1day9 percentage_stage3_m1region1day10 percentage_stage3_m1region1day11 percentage_stage3_m1region1day12]);
std_percentage_stage3=std([percentage_stage3_m1region1day1 percentage_stage3_m1region1day2 percentage_stage3_m1region1day3 percentage_stage3_m1region1day4 percentage_stage3_m1region1day5 percentage_stage3_m1region1day6 percentage_stage3_m1region1day7 percentage_stage3_m1region1day8 percentage_stage3_m1region1day9 percentage_stage3_m1region1day10 percentage_stage3_m1region1day11 percentage_stage3_m1region1day12]);

mean_percentage_stage4=mean([percentage_stage4_m1region1day1 percentage_stage4_m1region1day2 percentage_stage4_m1region1day3 percentage_stage4_m1region1day4 percentage_stage4_m1region1day5 percentage_stage4_m1region1day6 percentage_stage4_m1region1day7 percentage_stage4_m1region1day8 percentage_stage4_m1region1day9 percentage_stage4_m1region1day10 percentage_stage4_m1region1day11 percentage_stage4_m1region1day12]);
std_percentage_stage4=std([percentage_stage4_m1region1day1 percentage_stage4_m1region1day2 percentage_stage4_m1region1day3 percentage_stage4_m1region1day4 percentage_stage4_m1region1day5 percentage_stage4_m1region1day6 percentage_stage4_m1region1day7 percentage_stage4_m1region1day8 percentage_stage4_m1region1day9 percentage_stage4_m1region1day10 percentage_stage4_m1region1day11 percentage_stage4_m1region1day12]);

% mean_percentage_stage5=mean([percentage_stage5_day1 percentage_stage5_day2 percentage_stage5_day3 percentage_stage5_day4 percentage_stage5_day5 percentage_stage5_day6 percentage_stage5_day7 percentage_stage5_day8 percentage_stage5_day9 percentage_stage5_day10 percentage_stage5_day11 percentage_stage5_day12]);
% std_percentage_stage5=std([percentage_stage5_day1 percentage_stage5_day2 percentage_stage5_day3 percentage_stage5_day4 percentage_stage5_day5 percentage_stage5_day6 percentage_stage5_day7 percentage_stage5_day8 percentage_stage5_day9 percentage_stage5_day10 percentage_stage5_day11 percentage_stage5_day12]);



mean_sum_stage4=mean([sum(whether_or_not_across_4_stages_m1region1day12(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day11(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day10(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day9(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day8(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day7(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day6(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day5(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day4(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day3(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day2(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day1(:,5)==4)]);
std_sum_stage4=std([sum(whether_or_not_across_4_stages_m1region1day12(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day11(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day10(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day9(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day8(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day7(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day6(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day5(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day4(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day3(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day2(:,5)==4) sum(whether_or_not_across_4_stages_m1region1day1(:,5)==4)]);

color_bar=bar(1,mean_percentage_stage0);
set(color_bar,'FaceColor',[0.6 0.2 0.3]);
hold on
color_bar=bar(2,mean_percentage_stage1);
set(color_bar,'FaceColor',[1 0.8 0.3]);
hold on
color_bar=bar(3,mean_percentage_stage2);
set(color_bar,'FaceColor',[1 0.8 0.3]);
hold on
color_bar=bar(4,mean_percentage_stage3);
set(color_bar,'FaceColor',[1 0.8 0.3]);
hold on
color_bar=bar(5,mean_percentage_stage4);
set(color_bar,'FaceColor',[1 0.8 0.3]);
% hold on
% color_bar=bar(6,mean_percentage_stage5);
% set(color_bar,'FaceColor',[1 0.8 0.3]);


hold on
errorbar(1,mean_percentage_stage0,std_percentage_stage0,'k');
hold on
errorbar(2,mean_percentage_stage1,std_percentage_stage1,'k');
hold on
errorbar(3,mean_percentage_stage2,std_percentage_stage2,'k');
hold on
errorbar(4,mean_percentage_stage3,std_percentage_stage3,'k');
hold on
errorbar(5,mean_percentage_stage4,std_percentage_stage4,'k');
% hold on
% errorbar(6,mean_percentage_stage5,std_percentage_stage5,'k');
ylim([0 0.8]);


sum([mean_percentage_stage0,mean_percentage_stage1,mean_percentage_stage2,mean_percentage_stage3,mean_percentage_stage4]);