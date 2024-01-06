load('L:\Monkey1\region1\20211108\z_linear_regression_20211108.mat');
load('L:\Monkey1\region1\20211109\z_linear_regression_20211109.mat');
load('L:\Monkey1\region1\20211110\z_linear_regression_20211110.mat');
load('L:\Monkey1\region1\20211111\z_linear_regression_20211111.mat');
load('L:\Monkey1\region1\20211112\z_linear_regression_20211112.mat');
load('L:\Monkey1\region1\20211113\z_linear_regression_20211113.mat');
load('L:\Monkey1\region1\20211115\z_linear_regression_20211115.mat');
load('L:\Monkey1\region1\20211116\z_linear_regression_20211116.mat');
load('L:\Monkey1\region1\20211117\z_linear_regression_20211117.mat');
load('L:\Monkey1\region1\20211118\z_linear_regression_20211118.mat');
load('L:\Monkey1\region1\20211119\z_linear_regression_20211119.mat');
load('L:\Monkey1\region1\20211122\z_linear_regression_20211122.mat');

load('L:\Monkey1\region2\20211120\z_linear_regression_20211120.mat');
load('L:\Monkey1\region2\20211121\z_linear_regression_20211121.mat');
load('L:\Monkey1\region2\20211123\z_linear_regression_20211123.mat');
load('L:\Monkey1\region2\20211124\z_linear_regression_20211124.mat');

load('L:\Monkey1\region3\20211125\z_linear_regression_20211125.mat');
load('L:\Monkey1\region3\20211126\z_linear_regression_20211126.mat');
load('L:\Monkey1\region3\20211127\z_linear_regression_20211127.mat');

load('L:\Monkey1\region4\20211129\z_linear_regression_20211129.mat');
load('L:\Monkey1\region4\20211201\z_linear_regression_20211201.mat');
load('L:\Monkey1\region4\20211202\z_linear_regression_20211202.mat');

load('L:\Monkey1\region5\20211203\z_linear_regression_20211203.mat');
load('L:\Monkey1\region5\20211204\z_linear_regression_20211204.mat');

load('L:\Monkey1\region6\20211217\z_linear_regression_20211217.mat');
load('L:\Monkey1\region6\20211218\z_linear_regression_20211218.mat');
load('L:\Monkey1\region6\20211219\z_linear_regression_20211219.mat');
load('L:\Monkey1\region6\20211220\z_linear_regression_20211220.mat');
load('L:\Monkey1\region6\20211221\z_linear_regression_20211221.mat');
load('L:\Monkey1\region6\20211222\z_linear_regression_20211222.mat');
load('L:\Monkey1\region6\20211223\z_linear_regression_20211223.mat');
load('L:\Monkey1\region6\20211224\z_linear_regression_20211224.mat');
load('L:\Monkey1\region6\20211225\z_linear_regression_20211225.mat');
load('L:\Monkey1\region6\20211226\z_linear_regression_20211226.mat');

load('L:\Monkey1\region7\20220115\z_linear_regression_20220115.mat');
load('L:\Monkey1\region7\20220116\z_linear_regression_20220116.mat');
load('L:\Monkey1\region7\20220117\z_linear_regression_20220117.mat');

previous=[previous_matrix1108;previous_matrix1109;previous_matrix1110;previous_matrix1111;previous_matrix1112;previous_matrix1113;previous_matrix1115;previous_matrix1116;previous_matrix1117;previous_matrix1118;previous_matrix1119;previous_matrix1122;previous_matrix1120;previous_matrix1121;previous_matrix1123;previous_matrix1124;previous_matrix1125;previous_matrix1126;previous_matrix1127;previous_matrix1129;previous_matrix1201;previous_matrix1202;previous_matrix1203;previous_matrix1204;previous_matrix1217;previous_matrix1218;previous_matrix1219;previous_matrix1220;previous_matrix1221;previous_matrix1222;previous_matrix1223;previous_matrix1224;previous_matrix1225;previous_matrix1226;previous_matrix0115;previous_matrix0116;previous_matrix0117]
current_reward=[current_reward_matrix1108;current_reward_matrix1109;current_reward_matrix1110;current_reward_matrix1111;current_reward_matrix1112;current_reward_matrix1113;current_reward_matrix1115;current_reward_matrix1116;current_reward_matrix1117;current_reward_matrix1118;current_reward_matrix1119;current_reward_matrix1122;current_reward_matrix1120;current_reward_matrix1121;current_reward_matrix1123;current_reward_matrix1124;current_reward_matrix1125;current_reward_matrix1126;current_reward_matrix1127;current_reward_matrix1129;current_reward_matrix1201;current_reward_matrix1202;current_reward_matrix1203;current_reward_matrix1204;current_reward_matrix1217;current_reward_matrix1218;current_reward_matrix1219;current_reward_matrix1220;current_reward_matrix1221;current_reward_matrix1222;current_reward_matrix1223;current_reward_matrix1224;current_reward_matrix1225;current_reward_matrix1226;current_reward_matrix0115;current_reward_matrix0116;current_reward_matrix0117;]
saccade=[saccade_matrix1108;saccade_matrix1109;saccade_matrix1110;saccade_matrix1111;saccade_matrix1112;saccade_matrix1113;saccade_matrix1115;saccade_matrix1116;saccade_matrix1117;saccade_matrix1118;saccade_matrix1119;saccade_matrix1122;saccade_matrix1120;saccade_matrix1121;saccade_matrix1123;saccade_matrix1124;saccade_matrix1125;saccade_matrix1126;saccade_matrix1127;saccade_matrix1129;saccade_matrix1201;saccade_matrix1202;saccade_matrix1203;saccade_matrix1204;saccade_matrix1217;saccade_matrix1218;saccade_matrix1219;saccade_matrix1220;saccade_matrix1221;saccade_matrix1222;saccade_matrix1223;saccade_matrix1224;saccade_matrix1225;saccade_matrix1226;saccade_matrix0115;saccade_matrix0116;saccade_matrix0117;]
intercept=[intercept_matrix1108;intercept_matrix1109;intercept_matrix1110;intercept_matrix1111;intercept_matrix1112;intercept_matrix1113;intercept_matrix1115;intercept_matrix1116;intercept_matrix1117;intercept_matrix1118;intercept_matrix1119;intercept_matrix1122;intercept_matrix1120;intercept_matrix1121;intercept_matrix1123;intercept_matrix1124;intercept_matrix1125;intercept_matrix1126;intercept_matrix1127;intercept_matrix1129;intercept_matrix1201;intercept_matrix1202;intercept_matrix1203;intercept_matrix1204;intercept_matrix1217;intercept_matrix1218;intercept_matrix1219;intercept_matrix1220;intercept_matrix1221;intercept_matrix1222;intercept_matrix1223;intercept_matrix1224;intercept_matrix1225;intercept_matrix1226;intercept_matrix0115;intercept_matrix0116;intercept_matrix0117;]
trial_num=[trial_num_matrix1108;trial_num_matrix1109;trial_num_matrix1110;trial_num_matrix1111;trial_num_matrix1112;trial_num_matrix1113;trial_num_matrix1115;trial_num_matrix1116;trial_num_matrix1117;trial_num_matrix1118;trial_num_matrix1119;trial_num_matrix1122;trial_num_matrix1120;trial_num_matrix1121;trial_num_matrix1123;trial_num_matrix1124;trial_num_matrix1125;trial_num_matrix1126;trial_num_matrix1127;trial_num_matrix1129;trial_num_matrix1201;trial_num_matrix1202;trial_num_matrix1203;trial_num_matrix1204;trial_num_matrix1217;trial_num_matrix1218;trial_num_matrix1219;trial_num_matrix1220;trial_num_matrix1221;trial_num_matrix1222;trial_num_matrix1223;trial_num_matrix1224;trial_num_matrix1225;trial_num_matrix1226;trial_num_matrix0115;trial_num_matrix0116;trial_num_matrix0117;]

figure
errorbar([([1:51]-35)/7.4],mean(previous(:,11:61),1),std(previous(:,11:61))/sqrt(length(previous(:,11:61))));
hold on;
errorbar([([1:51]-35)/7.4],mean(current_reward(:,11:61),1),std(current_reward(:,11:61))/sqrt(length(current_reward(:,11:61))));
hold on;
errorbar([([1:51]-35)/7.4],mean(saccade(:,11:61),1),std(saccade(:,11:61))/sqrt(length(saccade(:,11:61))));

% hold on;
% errorbar([1:size(previous,2)],mean(intercept,1),std(intercept)/sqrt(length(intercept)));
% hold on;
% errorbar([1:size(previous,2)],mean(trial_num,1),std(trial_num)/sqrt(length(trial_num)));

xline(-3.91);
xline(0);
xline(-1);
legend('previous','cr','sd');
ylim([0 0.1])

