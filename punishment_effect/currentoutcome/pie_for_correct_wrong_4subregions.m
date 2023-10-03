
%0s
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211119\proportions_of_cells_encoding_current_trials_outcome_20211119.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\proportions_of_cells_encoding_current_trials_outcome_20211121.mat');

load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\proportions_of_cells_encoding_current_trials_outcome_20211127.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\proportions_of_cells_encoding_current_trials_outcome_20211201.mat');

subregion4_recordingnum=M1region1day2_recordingnum+M1region2day2_recordingnum+M1region3day3_recordingnum+M1region4day2_recordingnum;
%region1
% m1region1_correct=M1region1day2_correct_number/M1region1day2_recordingnum;
% m1region1_wrong=M1region1day2_wrong_number/M1region1day2_recordingnum;
% 
% %region2
% m1region2_correct=M1region2day2_correct_number/M1region2day2_recordingnum;
% m1region2_wrong=M1region2day2_wrong_number/M1region2day2_recordingnum;
% 
% %region3
% m1region3_correct=M1region3day3_correct_number/M1region3day3_recordingnum;
% m1region3_wrong=M1region3day3_wrong_number/M1region3day3_recordingnum;
% %region4
% m1region4_correct=M1region4day2_correct_number/M1region4day2_recordingnum;
% m1region4_wrong=M1region4day2_wrong_number/M1region4day2_recordingnum;
% 
% mean_correct=mean([m1region1_correct,m1region2_correct,m1region3_correct,m1region4_correct]);
% std_correct=std([m1region1_correct,m1region2_correct,m1region3_correct,m1region4_correct]);
% mean_wrong=mean([m1region1_wrong,m1region2_wrong,m1region3_wrong,m1region4_wrong]);
% std_wrong=std([m1region1_wrong,m1region2_wrong,m1region3_wrong,m1region4_wrong]);
% 
% % std_m1_region1=std([M1region1day3_correct_number/(M1region1day3_wrong_number+M1region1day3_correct_number),M1region1day3_correct_number/(M1region1day3_correct_number+M1region1day3_wrong_number),M1region1day3_correct_number/(M1region1day3_wrong_number+M1region1day3_correct_number),M1region1day4_correct_number/(M1region1day4_wrong_number+M1region1day4_correct_number)]);
% pie([mean_correct,mean_wrong]);
% cm=[0.6 0.8 0.7;0.9 0.5 0.4];
% colormap(cm);

subregion4_recordingnum=M1region1day2_recordingnum+M1region2day2_recordingnum+M1region3day3_recordingnum+M1region4day2_recordingnum;
m1_correct=M1region1day2_correct_number+M1region2day2_correct_number+M1region3day3_correct_number+M1region4day2_correct_number;
m1_wrong=M1region1day2_wrong_number+M1region2day2_wrong_number+M1region3day3_wrong_number+M1region4day2_wrong_number;
p_m1_correct=m1_correct/subregion4_recordingnum;
p_m1_wrong=m1_wrong/subregion4_recordingnum;

pie([p_m1_correct,p_m1_wrong]);
cm=[0.6 0.8 0.7;0.9 0.5 0.4];
colormap(cm);
%5s
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211122\proportions_of_cells_encoding_current_trials_outcome_20211122.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\proportions_of_cells_encoding_current_trials_outcome_20211124.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\proportions_of_cells_encoding_current_trials_outcome_20211126.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\proportions_of_cells_encoding_current_trials_outcome_20211202.mat');
% %region1
% m1region1_correct=M1region1day3_correct_number/M1region1day3_recordingnum;
% m1region1_wrong=M1region1day3_wrong_number/M1region1day3_recordingnum;
% 
% %region2
% m1region2_correct=M1region2day4_correct_number/M1region2day4_recordingnum;
% m1region2_wrong=M1region2day4_wrong_number/M1region2day4_recordingnum;
% 
% %region3
% m1region3_correct=M1region3day2_correct_number/M1region3day2_recordingnum;
% m1region3_wrong=M1region3day2_wrong_number/M1region3day2_recordingnum;
% %region4
% m1region4_correct=M1region4day3_correct_number/M1region4day3_recordingnum;
% m1region4_wrong=M1region4day3_wrong_number/M1region4day3_recordingnum;
% 
% mean_correct=mean([m1region1_correct,m1region2_correct,m1region3_correct,m1region4_correct]);
% std_correct=std([m1region1_correct,m1region2_correct,m1region3_correct,m1region4_correct]);
% mean_wrong=mean([m1region1_wrong,m1region2_wrong,m1region3_wrong,m1region4_wrong]);
% std_wrong=std([m1region1_wrong,m1region2_wrong,m1region3_wrong,m1region4_wrong]);
% % std_m1_region1=std([M1region1day3_correct_number/(M1region1day3_wrong_number+M1region1day3_correct_number),M1region1day3_correct_number/(M1region1day3_correct_number+M1region1day3_wrong_number),M1region1day3_correct_number/(M1region1day3_wrong_number+M1region1day3_correct_number),M1region1day4_correct_number/(M1region1day4_wrong_number+M1region1day4_correct_number)]);
% pie([mean_correct,mean_wrong]);
% cm=[0.6 0.8 0.7;0.9 0.5 0.4];
% colormap(cm);

%
subregion4_recordingnum=M1region1day3_recordingnum+M1region2day4_recordingnum+M1region3day2_recordingnum+M1region4day3_recordingnum;
m1_correct=M1region1day3_correct_number+M1region2day4_correct_number+M1region3day2_correct_number+M1region4day3_correct_number;
m1_wrong=M1region1day3_wrong_number+M1region2day4_wrong_number+M1region3day2_wrong_number+M1region4day3_wrong_number;
p_m1_correct=m1_correct/subregion4_recordingnum;
p_m1_wrong=m1_wrong/subregion4_recordingnum;

pie([p_m1_correct,p_m1_wrong]);
cm=[0.6 0.8 0.7;0.9 0.5 0.4];
colormap(cm);
