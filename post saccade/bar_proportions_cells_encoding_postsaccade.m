load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_postsaccade_20211108.mat');
load('L:\Monkey1\region1\20211109\proportions_of_cells_encoding_postsaccade_20211109.mat');
load('L:\Monkey1\region1\20211110\proportions_of_cells_encoding_postsaccade_20211110.mat');
load('L:\Monkey1\region1\20211111\proportions_of_cells_encoding_postsaccade_20211111.mat');
load('L:\Monkey1\region1\20211112\proportions_of_cells_encoding_postsaccade_20211112.mat');
load('L:\Monkey1\region1\20211113\proportions_of_cells_encoding_postsaccade_20211113.mat');
load('L:\Monkey1\region1\20211115\proportions_of_cells_encoding_postsaccade_20211115.mat');
load('L:\Monkey1\region1\20211116\proportions_of_cells_encoding_postsaccade_20211116.mat');
load('L:\Monkey1\region1\20211117\proportions_of_cells_encoding_postsaccade_20211117.mat');
load('L:\Monkey1\region1\20211118\proportions_of_cells_encoding_postsaccade_20211118.mat');
load('L:\Monkey1\region1\20211119\proportions_of_cells_encoding_postsaccade_20211119.mat');
load('L:\Monkey1\region1\20211122\proportions_of_cells_encoding_postsaccade_20211122.mat');
%day1
for i=1:length(M1region1stage1day1index)
    M1region1stage1day1index_added{i}=['a',num2str(M1region1stage1day1index(i))];
end
for i=1:length(M1region1stage1day1diff_ratio_deltaF)
    M1region1day1_raw_index{i}=['a',num2str(M1region1stage1day1diff_ratio_deltaF(i))];
end

%day2
for i=1:length(M1region1stage1day2index)
    M1region1stage1day2index_added{i}=['b',num2str(M1region1stage1day2index(i))];
end
for i=1:length(M1region1stage1day2diff_ratio_deltaF)
    M1region1day2_raw_index{i}=['b',num2str(M1region1stage1day2diff_ratio_deltaF(i))];
end

%day3
for i=1:length(M1region1stage1day3index)
    M1region1stage1day3index_added{i}=['c',num2str(M1region1stage1day3index(i))];
end
for i=1:length(M1region1stage1day3diff_ratio_deltaF)
    M1region1day3_raw_index{i}=['c',num2str(M1region1stage1day3diff_ratio_deltaF(i))];
end

%day4
for i=1:length(M1region1stage1day4index)
       M1region1stage1day4index_added{i}=['d',num2str(M1region1stage1day4index(i))];
end 
for i=1:length(M1region1stage1day4diff_ratio_deltaF)
    M1region1day4_raw_index{i}=['d',num2str(M1region1stage1day4diff_ratio_deltaF(i))];
end

%day5
for i=1:length(M1region1stage1day5index)
       M1region1stage1day5index_added{i}=['e',num2str(M1region1stage1day5index(i))];
end 
for i=1:length(M1region1stage1day5diff_ratio_deltaF)
    M1region1day5_raw_index{i}=['e',num2str(M1region1stage1day5diff_ratio_deltaF(i))];
end

%day6
for i=1:length(M1region1stage1day6index)
      M1region1stage1day6index_added{i}=['f',num2str(M1region1stage1day6index(i))];
end  
for i=1:length(M1region1stage1day6diff_ratio_deltaF)
    M1region1day6_raw_index{i}=['f',num2str(M1region1stage1day6diff_ratio_deltaF(i))];
end

%day7
for i=1:length(M1region1stage1day7index)
      M1region1stage1day7index_added{i}=['g',num2str(M1region1stage1day7index(i))];
end  
for i=1:length(M1region1stage1day7diff_ratio_deltaF)
    M1region1day7_raw_index{i}=['g',num2str(M1region1stage1day7diff_ratio_deltaF(i))];
end

%day8
for i=1:length(M1region1stage1day8index)
      M1region1stage1day8index_added{i}=['h',num2str(M1region1stage1day8index(i))];
end  
for i=1:length(M1region1stage1day8diff_ratio_deltaF)
    M1region1day8_raw_index{i}=['h',num2str(M1region1stage1day8diff_ratio_deltaF(i))];
end
 
%day9
for i=1:length(M1region1stage1day9index)
      M1region1stage1day9index_added{i}=['i',num2str(M1region1stage1day9index(i))];
end 
for i=1:length(M1region1stage1day9diff_ratio_deltaF)
    M1region1day9_raw_index{i}=['i',num2str(M1region1stage1day9diff_ratio_deltaF(i))];
end


%day10
for i=1:length(M1region1stage1day10index)
      M1region1stage1day10index_added{i}=['j',num2str(M1region1stage1day10index(i))];
end
for i=1:length(M1region1stage1day10diff_ratio_deltaF)
    M1region1day10_raw_index{i}=['j',num2str(M1region1stage1day10diff_ratio_deltaF(i))];
end

%day11
for i=1:length(M1region1stage1day11index)
      M1region1stage1day11index_added{i}=['k',num2str(M1region1stage1day11index(i))];
end 
for i=1:length(M1region1stage1day11diff_ratio_deltaF)
    M1region1day11_raw_index{i}=['k',num2str(M1region1stage1day11diff_ratio_deltaF(i))];
end

%day12
for i=1:length(M1region1stage1day12index)
      M1region1stage1day12index_added{i}=['l',num2str(M1region1stage1day12index(i))];
end 
for i=1:length(M1region1stage1day12diff_ratio_deltaF)
    M1region1day12_raw_index{i}=['l',num2str(M1region1stage1day12diff_ratio_deltaF(i))];
end


M1_region1_stage1_index_added=[M1region1stage1day1index_added M1region1stage1day2index_added M1region1stage1day3index_added M1region1stage1day4index_added M1region1stage1day5index_added M1region1stage1day6index_added M1region1stage1day7index_added M1region1stage1day8index_added M1region1stage1day9index_added M1region1stage1day10index_added  M1region1stage1day11index_added M1region1stage1day12index_added];

%day1_neurons
whether_or_not_across_4_stages_m1region1day1=zeros(length(M1region1day1_raw_index),1);
for i=1:length(M1region1day1_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day1_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day1(i,1)=1;
            
        end
    end
end




percentage_stage0_m1region1day1=sum(whether_or_not_across_4_stages_m1region1day1(:,1)==0)/length(M1region1day1_raw_index);
percentage_stage1_m1region1day1=sum(whether_or_not_across_4_stages_m1region1day1(:,1)==1)/length(M1region1day1_raw_index);

% percentage_stage5_day1=sum(whether_or_not_across_4_stages_day1(:,6)==5)/length(M1region1day1_raw_index);
%day2
whether_or_not_across_4_stages_m1region1day2=zeros(length(M1region1day2_raw_index),1);
for i=1:length(M1region1day2_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day2_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day2(i,1)=1;
            
        end
    end
end


percentage_stage0_m1region1day2=sum(whether_or_not_across_4_stages_m1region1day2(:,1)==0)/length(M1region1day2_raw_index);
percentage_stage1_m1region1day2=sum(whether_or_not_across_4_stages_m1region1day2(:,1)==1)/length(M1region1day2_raw_index);


%day3
whether_or_not_across_4_stages_m1region1day3=zeros(length(M1region1day3_raw_index),1);
for i=1:length(M1region1day3_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day3_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day3(i,1)=1;
            
        end
    end
end

percentage_stage0_m1region1day3=sum(whether_or_not_across_4_stages_m1region1day3(:,1)==0)/length(M1region1day3_raw_index);
percentage_stage1_m1region1day3=sum(whether_or_not_across_4_stages_m1region1day3(:,1)==1)/length(M1region1day3_raw_index);

%day4
whether_or_not_across_4_stages_m1region1day4=zeros(length(M1region1day4_raw_index),1);
for i=1:length(M1region1day4_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day4_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day4(i,1)=1;
            
        end
    end
end

percentage_stage0_m1region1day4=sum(whether_or_not_across_4_stages_m1region1day4(:,1)==0)/length(M1region1day4_raw_index);
percentage_stage1_m1region1day4=sum(whether_or_not_across_4_stages_m1region1day4(:,1)==1)/length(M1region1day4_raw_index);

%day5

whether_or_not_across_4_stages_m1region1day5=zeros(length(M1region1day5_raw_index),1);
for i=1:length(M1region1day5_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day5_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day5(i,1)=1;
            
        end
    end
end

percentage_stage0_m1region1day5=sum(whether_or_not_across_4_stages_m1region1day5(:,1)==0)/length(M1region1day5_raw_index);
percentage_stage1_m1region1day5=sum(whether_or_not_across_4_stages_m1region1day5(:,1)==1)/length(M1region1day5_raw_index);

%day6
whether_or_not_across_4_stages_m1region1day6=zeros(length(M1region1day6_raw_index),1);
for i=1:length(M1region1day6_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day6_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day6(i,1)=1;
            
        end
    end
end


percentage_stage0_m1region1day6=sum(whether_or_not_across_4_stages_m1region1day6(:,1)==0)/length(M1region1day6_raw_index);
percentage_stage1_m1region1day6=sum(whether_or_not_across_4_stages_m1region1day6(:,1)==1)/length(M1region1day6_raw_index);

%day7

whether_or_not_across_4_stages_m1region1day7=zeros(length(M1region1day7_raw_index),1);
for i=1:length(M1region1day7_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day7_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day7(i,1)=1;
            
        end
    end
end

percentage_stage0_m1region1day7=sum(whether_or_not_across_4_stages_m1region1day7(:,1)==0)/length(M1region1day7_raw_index);
percentage_stage1_m1region1day7=sum(whether_or_not_across_4_stages_m1region1day7(:,1)==1)/length(M1region1day7_raw_index);


%day8

whether_or_not_across_4_stages_m1region1day8=zeros(length(M1region1day8_raw_index),1);
for i=1:length(M1region1day8_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day8_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day8(i,1)=1;
            
        end
    end
end


percentage_stage0_m1region1day8=sum(whether_or_not_across_4_stages_m1region1day8(:,1)==0)/length(M1region1day8_raw_index);
percentage_stage1_m1region1day8=sum(whether_or_not_across_4_stages_m1region1day8(:,1)==1)/length(M1region1day8_raw_index);

%day9
whether_or_not_across_4_stages_m1region1day9=zeros(length(M1region1day9_raw_index),1);
for i=1:length(M1region1day9_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day9_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day9(i,1)=1;
            
        end
    end
end




percentage_stage0_m1region1day9=sum(whether_or_not_across_4_stages_m1region1day9(:,1)==0)/length(M1region1day9_raw_index);
percentage_stage1_m1region1day9=sum(whether_or_not_across_4_stages_m1region1day9(:,1)==1)/length(M1region1day9_raw_index);

%day10
whether_or_not_across_4_stages_m1region1day10=zeros(length(M1region1day10_raw_index),1);
for i=1:length(M1region1day10_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day10_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day10(i,1)=1;
            
        end
    end
end

percentage_stage0_m1region1day10=sum(whether_or_not_across_4_stages_m1region1day10(:,1)==0)/length(M1region1day10_raw_index);
percentage_stage1_m1region1day10=sum(whether_or_not_across_4_stages_m1region1day10(:,1)==1)/length(M1region1day10_raw_index);



%day11
whether_or_not_across_4_stages_m1region1day11=zeros(length(M1region1day11_raw_index),1);
for i=1:length(M1region1day11_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day11_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day11(i,1)=1;
            
        end
    end
end


percentage_stage0_m1region1day11=sum(whether_or_not_across_4_stages_m1region1day11(:,1)==0)/length(M1region1day11_raw_index);
percentage_stage1_m1region1day11=sum(whether_or_not_across_4_stages_m1region1day11(:,1)==1)/length(M1region1day11_raw_index);
% percentage_stage5_day11=sum(whether_or_not_across_4_stages_day11(:,6)==5)/length(M1region1day11_raw_index);
%day12
whether_or_not_across_4_stages_m1region1day12=zeros(length(M1region1day12_raw_index),1);
for i=1:length(M1region1day12_raw_index)
    for j=1:length(M1_region1_stage1_index_added)
        tf = strcmp(M1region1day12_raw_index{1,i},M1_region1_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m1region1day12(i,1)=1;
            
        end
    end
end


percentage_stage0_m1region1day12=sum(whether_or_not_across_4_stages_m1region1day12(:,1)==0)/length(M1region1day12_raw_index);
percentage_stage1_m1region1day12=sum(whether_or_not_across_4_stages_m1region1day12(:,1)==1)/length(M1region1day12_raw_index);

markers = 'L:\Monkey1\region1\postsaccade_percentage_on_each_stage_on_each_daym1region1.mat';

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



color_bar=bar(1,mean_percentage_stage0);
set(color_bar,'FaceColor',[0.6 0.2 0.3]);
hold on
color_bar=bar(2,mean_percentage_stage1);
set(color_bar,'FaceColor',[1 0.8 0.3]);



hold on
errorbar(1,mean_percentage_stage0,std_percentage_stage0,'k');
hold on
errorbar(2,mean_percentage_stage1,std_percentage_stage1,'k');

ylim([0 1]);


sum([mean_percentage_stage0,mean_percentage_stage1]);