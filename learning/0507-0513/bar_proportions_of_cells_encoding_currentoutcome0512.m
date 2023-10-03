load('G:\0507-0513\20220512\proportions_of_cells_encoding_current_trials_outcome_20220512.mat');

%day6
for i=1:length(M2region3stage1day6index)
    M2region3stage1day6index_added{i}=['a',num2str(M2region3stage1day6index(i))];
end
for i=1:length(M2region3stage1day6diff_ratio_deltaF)
    M2region3day6_raw_index{i}=['a',num2str(M2region3stage1day6diff_ratio_deltaF(i))];
end
for i=1:length(M2region3stage2day6index)
    M2region3stage2day6index_added{i}=['a',num2str(M2region3stage2day6index(i))];
end
for i=1:length(M2region3stage3day6index)
    M2region3stage3day6index_added{i}=['a',num2str(M2region3stage3day6index(i))];
end
for i=1:length(M2region3stage4day6index)
    M2region3stage4day6index_added{i}=['a',num2str(M2region3stage4day6index(i))];
end


  


M2_region3_stage1_index_added=[M2region3stage1day6index_added];
M2_region3_stage2_index_added=[M2region3stage2day6index_added];
M2_region3_stage3_index_added=[M2region3stage3day6index_added];
M2_region3_stage4_index_added=[M2region3stage4day6index_added];
% M2_region3_stage5_index_added=[M2region3stage5day6index_added M2region3stage5day6index_added M2region3stage5day6index_added M2region3stage5day6index_added M2region3stage5day6index_added M2region3stage5day6index_added M2region3stage5day7index_added M2region3stage5day8index_added M2region3stage5day9index_added M2region3stage5day60index_added  M2region3stage5day61index_added M2region3stage5day62index_added];
%day6_neurons
whether_or_not_across_4_stages_m2region3day6=zeros(length(M2region3day6_raw_index),5);
for i=1:length(M2region3day6_raw_index)
    for j=1:length(M2_region3_stage1_index_added)
        tf = strcmp(M2region3day6_raw_index{1,i},M2_region3_stage1_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m2region3day6(i,1)=1;
            
        end
    end
end
for i=1:length(M2region3day6_raw_index)
    for j=1:length(M2_region3_stage2_index_added)
        tf = strcmp(M2region3day6_raw_index{1,i},M2_region3_stage2_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m2region3day6(i,2)=1;
            
        end
    end
end

for i=1:length(M2region3day6_raw_index)
    for j=1:length(M2_region3_stage3_index_added)
        tf = strcmp(M2region3day6_raw_index{1,i},M2_region3_stage3_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m2region3day6(i,3)=1;
            
        end
    end
end
for i=1:length(M2region3day6_raw_index)
    for j=1:length(M2_region3_stage4_index_added)
        tf = strcmp(M2region3day6_raw_index{1,i},M2_region3_stage4_index_added{1,j});
        if tf
            whether_or_not_across_4_stages_m2region3day6(i,4)=1;
            
        end
    end
end

% for i=1:length(M2region3day6_raw_index)
%     for j=1:length(M2_region3_stage5_index_added)
%         tf = strcmp(M2region3day6_raw_index{1,i},M2_region3_stage5_index_added{1,j});
%         if tf
%             whether_or_not_across_4_stages_day6(i,5)=1;
%             
%         end
%     end
% end

for i=1:length(M2region3day6_raw_index)
    whether_or_not_across_4_stages_m2region3day6(i,5)=sum(whether_or_not_across_4_stages_m2region3day6(i,1:4));
end
percentage_stage0_m2region3day6=sum(whether_or_not_across_4_stages_m2region3day6(:,5)==0)/length(M2region3day6_raw_index);
percentage_stage1_m2region3day6=sum(whether_or_not_across_4_stages_m2region3day6(:,5)==1)/length(M2region3day6_raw_index);
percentage_stage2_m2region3day6=sum(whether_or_not_across_4_stages_m2region3day6(:,5)==2)/length(M2region3day6_raw_index);
percentage_stage3_m2region3day6=sum(whether_or_not_across_4_stages_m2region3day6(:,5)==3)/length(M2region3day6_raw_index);
percentage_stage4_m2region3day6=sum(whether_or_not_across_4_stages_m2region3day6(:,5)==4)/length(M2region3day6_raw_index);





markers = 'G:\0507-0513\20220512\percentage_on_each_stage_on_each_day0512.mat';

save(markers, 'percentage_stage0_m2region3day6');

save(markers, 'percentage_stage1_m2region3day6','-append');

save(markers, 'percentage_stage2_m2region3day6','-append');

save(markers, 'percentage_stage3_m2region3day6','-append');

save(markers, 'percentage_stage4_m2region3day6','-append');

save(markers,'whether_or_not_across_4_stages_m2region3day6','-append');



color_bar=bar(1,percentage_stage0_m2region3day6);
set(color_bar,'FaceColor',[0.6 0.2 0.3]);
hold on
color_bar=bar(2,percentage_stage1_m2region3day6);
set(color_bar,'FaceColor',[1 0.8 0.3]);
hold on
color_bar=bar(3,percentage_stage2_m2region3day6);
set(color_bar,'FaceColor',[1 0.8 0.3]);
hold on
color_bar=bar(4,percentage_stage3_m2region3day6);
set(color_bar,'FaceColor',[1 0.8 0.3]);
hold on
color_bar=bar(5,percentage_stage4_m2region3day6);
set(color_bar,'FaceColor',[1 0.8 0.3]);

ylim([0 1]);
