%% 两组眼位置有显著性差异的


load('L:\Monkey1\region1\20211108\unbiased_currentoutcome1108.mat');
load('L:\Monkey1\region1\20211109\unbiased_currentoutcome1109.mat');
load('L:\Monkey1\region1\20211110\unbiased_currentoutcome1110.mat');
load('L:\Monkey1\region1\20211111\unbiased_currentoutcome1111.mat');
load('L:\Monkey1\region1\20211112\unbiased_currentoutcome1112.mat');
load('L:\Monkey1\region1\20211113\unbiased_currentoutcome1113.mat');
load('L:\Monkey1\region1\20211115\unbiased_currentoutcome1115.mat');
load('L:\Monkey1\region1\20211116\unbiased_currentoutcome1116.mat');
load('L:\Monkey1\region1\20211117\unbiased_currentoutcome1117.mat');
load('L:\Monkey1\region1\20211118\unbiased_currentoutcome1118.mat');
load('L:\Monkey1\region1\20211119\unbiased_currentoutcome1119.mat');
load('L:\Monkey1\region1\20211122\unbiased_currentoutcome1122.mat');
load('L:\Monkey1\region2\20211120\unbiased_currentoutcome1120.mat');


load('L:\Monkey1\region2\20211124\unbiased_currentoutcome1124.mat');

load('L:\Monkey1\region3\20211126\unbiased_currentoutcome1126.mat');

load('L:\Monkey1\region4\20211129\unbiased_currentoutcome1129.mat');


load('L:\Monkey1\region5\20211203\unbiased_currentoutcome1203.mat');
load('L:\Monkey1\region5\20211204\unbiased_currentoutcome1204.mat');


load('L:\Monkey1\region6\20211217\unbiased_currentoutcome1217.mat');
load('L:\Monkey1\region6\20211218\unbiased_currentoutcome1218.mat');
load('L:\Monkey1\region6\20211219\unbiased_currentoutcome1219.mat');

load('L:\Monkey1\region6\20211221\unbiased_currentoutcome1221.mat');
load('L:\Monkey1\region6\20211222\unbiased_currentoutcome1222.mat');

load('L:\Monkey1\region6\20211224\unbiased_currentoutcome1224.mat');
load('L:\Monkey1\region6\20211225\unbiased_currentoutcome1225.mat');
load('L:\Monkey1\region6\20211226\unbiased_currentoutcome1226.mat');


load('L:\Monkey1\region7\20220115\unbiased_currentoutcome0115.mat');
load('L:\Monkey1\region7\20220116\unbiased_currentoutcome0116.mat');
load('L:\Monkey1\region7\20220117\unbiased_currentoutcome0117.mat');



load('L:\Monkey2\region1\20220427\unbiased_currentoutcome0427.mat');

load('L:\Monkey2\region1\20220429\unbiased_currentoutcome0429.mat');




load('L:\Monkey2\region2\20220503\unbiased_currentoutcome0503.mat');

load('L:\Monkey2\region2\20220505\unbiased_currentoutcome0505.mat');


load('L:\Monkey2\region3\20220508\unbiased_currentoutcome0508.mat');
load('L:\Monkey2\region3\20220509\unbiased_currentoutcome0509.mat');


load('L:\Monkey2\region3\20220512\unbiased_currentoutcome0512.mat');

load('L:\Monkey2\region6\20220610\unbiased_currentoutcome0610.mat');

load('L:\Monkey2\region7\20220621\unbiased_currentoutcome0621.mat');

load('L:\Monkey2\region8\20220624\unbiased_currentoutcome0624.mat');

load('L:\Monkey2\region8\20220629\unbiased_currentoutcome0629.mat');




% 
% unbiased_currentoutcome=[unbiased_currentoutcome1108;unbiased_currentoutcome1109;unbiased_currentoutcome1110;unbiased_currentoutcome1111;unbiased_currentoutcome1112;unbiased_currentoutcome1113;unbiased_currentoutcome1115;unbiased_currentoutcome1116;unbiased_currentoutcome1117;unbiased_currentoutcome1118;unbiased_currentoutcome1119;unbiased_currentoutcome1122;unbiased_currentoutcome1120;unbiased_currentoutcome1121;unbiased_currentoutcome1123;unbiased_currentoutcome1124;unbiased_currentoutcome1125;unbiased_currentoutcome1126;unbiased_currentoutcome1127;unbiased_currentoutcome1129;unbiased_currentoutcome1201;unbiased_currentoutcome1202;unbiased_currentoutcome1203;unbiased_currentoutcome1204;unbiased_currentoutcome1217;unbiased_currentoutcome1218;unbiased_currentoutcome1219;unbiased_currentoutcome1220;unbiased_currentoutcome1221;unbiased_currentoutcome1222;unbiased_currentoutcome1223;unbiased_currentoutcome1224;unbiased_currentoutcome1225;unbiased_currentoutcome1226;unbiased_currentoutcome0115;unbiased_currentoutcome0116;unbiased_currentoutcome0117;unbiased_currentoutcome0426;unbiased_currentoutcome0427;unbiased_currentoutcome0428;unbiased_currentoutcome0429;unbiased_currentoutcome0430;unbiased_currentoutcome0501;unbiased_currentoutcome0502;unbiased_currentoutcome0503;unbiased_currentoutcome0504;unbiased_currentoutcome0505;unbiased_currentoutcome0506;unbiased_currentoutcome0507;unbiased_currentoutcome0508;unbiased_currentoutcome0509;unbiased_currentoutcome0510;unbiased_currentoutcome0511;unbiased_currentoutcome0512;unbiased_currentoutcome0513;unbiased_currentoutcome0517;unbiased_currentoutcome0518;unbiased_currentoutcome0519;unbiased_currentoutcome0524;unbiased_currentoutcome0526;unbiased_currentoutcome0527;unbiased_currentoutcome0528;unbiased_currentoutcome0529;unbiased_currentoutcome0530;unbiased_currentoutcome0610;unbiased_currentoutcome0611;unbiased_currentoutcome0612;unbiased_currentoutcome0613;unbiased_currentoutcome0618;unbiased_currentoutcome0619;unbiased_currentoutcome0620;unbiased_currentoutcome0621;unbiased_currentoutcome0622;unbiased_currentoutcome0623;unbiased_currentoutcome0624;unbiased_currentoutcome0627;unbiased_currentoutcome0628;unbiased_currentoutcome0629;unbiased_currentoutcome0630];
% shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome(:,2:20),1),std(unbiased_currentoutcome(:,2:20),1)./sqrt(length(unbiased_currentoutcome(:,2:20))),'lineProps','r');
%  xline(0);
% ylim([0 0.01]);
% 
load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_current_trials_outcome_20211108.mat');
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s1108=find(iscell(:,1)==1);
for i=1:length(M1region1day1)
unbiased_currentoutcome1108_new(i,:)=unbiased_currentoutcome1108(find(s1108==M1region1day1(i,5)),:);
end

load('L:\Monkey1\region1\20211109\proportions_of_cells_encoding_current_trials_outcome_20211109.mat');
iscell=readNPY('L:\Monkey1\region1\20211109\iscell.npy');
s1109=find(iscell(:,1)==1);
for i=1:length(M1region1day2)
unbiased_currentoutcome1109_new(i,:)=unbiased_currentoutcome1109(find(s1109==M1region1day2(i,5)),:);
end

load('L:\Monkey1\region1\20211110\proportions_of_cells_encoding_current_trials_outcome_20211110.mat');
iscell=readNPY('L:\Monkey1\region1\20211110\iscell.npy');
s1110=find(iscell(:,1)==1);
for i=1:length(M1region1day3)
unbiased_currentoutcome1110_new(i,:)=unbiased_currentoutcome1110(find(s1110==M1region1day3(i,5)),:);
end

load('L:\Monkey1\region1\20211111\proportions_of_cells_encoding_current_trials_outcome_20211111.mat');
iscell=readNPY('L:\Monkey1\region1\20211111\iscell.npy');
s1111=find(iscell(:,1)==1);
for i=1:length(M1region1day4)
unbiased_currentoutcome1111_new(i,:)=unbiased_currentoutcome1111(find(s1111==M1region1day4(i,5)),:);
end
load('L:\Monkey1\region1\20211112\proportions_of_cells_encoding_current_trials_outcome_20211112.mat');
iscell=readNPY('L:\Monkey1\region1\20211112\iscell.npy');
s1112=find(iscell(:,1)==1);

for i=1:length(M1region1day5)
unbiased_currentoutcome1112_new(i,:)=unbiased_currentoutcome1112(find(s1112==M1region1day5(i,5)),:);
end
load('L:\Monkey1\region1\20211113\proportions_of_cells_encoding_current_trials_outcome_20211113.mat');
iscell=readNPY('L:\Monkey1\region1\20211113\iscell.npy');
s1113=find(iscell(:,1)==1);

for i=1:length(M1region1day6)
unbiased_currentoutcome1113_new(i,:)=unbiased_currentoutcome1113(find(s1113==M1region1day6(i,5)),:);
end


load('L:\Monkey1\region1\20211115\proportions_of_cells_encoding_current_trials_outcome_20211115.mat');
iscell=readNPY('L:\Monkey1\region1\20211115\iscell.npy');
s1115=find(iscell(:,1)==1);
for i=1:length(M1region1day7)
unbiased_currentoutcome1115_new(i,:)=unbiased_currentoutcome1115(find(s1115==M1region1day7(i,5)),:);
end

load('L:\Monkey1\region1\20211116\proportions_of_cells_encoding_current_trials_outcome_20211116.mat');
iscell=readNPY('L:\Monkey1\region1\20211116\iscell.npy');
s1116=find(iscell(:,1)==1);
for i=1:length(M1region1day8)
unbiased_currentoutcome1116_new(i,:)=unbiased_currentoutcome1116(find(s1116==M1region1day8(i,5)),:);
end


load('L:\Monkey1\region1\20211117\proportions_of_cells_encoding_current_trials_outcome_20211117.mat');
iscell=readNPY('L:\Monkey1\region1\20211117\iscell.npy');
s1117=find(iscell(:,1)==1);
for i=1:length(M1region1day9)
unbiased_currentoutcome1117_new(i,:)=unbiased_currentoutcome1117(find(s1117==M1region1day9(i,5)),:);
end

load('L:\Monkey1\region1\20211118\proportions_of_cells_encoding_current_trials_outcome_20211118.mat');
iscell=readNPY('L:\Monkey1\region1\20211118\iscell.npy');
s1118=find(iscell(:,1)==1);

for i=1:length(M1region1day10)
unbiased_currentoutcome1118_new(i,:)=unbiased_currentoutcome1118(find(s1118==M1region1day10(i,5)),:);
end


load('L:\Monkey1\region1\20211119\proportions_of_cells_encoding_current_trials_outcome_20211119.mat');
iscell=readNPY('L:\Monkey1\region1\20211119\iscell.npy');
s1119=find(iscell(:,1)==1);
for i=1:length(M1region1day11)
unbiased_currentoutcome1119_new(i,:)=unbiased_currentoutcome1119(find(s1119==M1region1day11(i,5)),:);
end

load('L:\Monkey1\region1\20211122\proportions_of_cells_encoding_current_trials_outcome_20211122.mat');
iscell=readNPY('L:\Monkey1\region1\20211122\iscell.npy');
s1122=find(iscell(:,1)==1);
for i=1:length(M1region1day12)
unbiased_currentoutcome1122_new(i,:)=unbiased_currentoutcome1122(find(s1122==M1region1day12(i,5)),:);
end

load('L:\Monkey1\region2\20211120\proportions_of_cells_encoding_current_trials_outcome_20211120.mat');
iscell=readNPY('L:\Monkey1\region2\20211120\iscell.npy');
s1120=find(iscell(:,1)==1);
for i=1:length(M1region2day1)
unbiased_currentoutcome1120_new(i,:)=unbiased_currentoutcome1122(find(s1120==M1region2day1(i,5)),:);
end


load('L:\Monkey1\region2\20211124\proportions_of_cells_encoding_current_trials_outcome_20211124.mat');
iscell=readNPY('L:\Monkey1\region2\20211124\iscell.npy');
s1124=find(iscell(:,1)==1);
for i=1:length(M1region2day4)
unbiased_currentoutcome1124_new(i,:)=unbiased_currentoutcome1124(find(s1124==M1region2day4(i,5)),:);
end

load('L:\Monkey1\region3\20211126\proportions_of_cells_encoding_current_trials_outcome_20211126.mat');
iscell=readNPY('L:\Monkey1\region3\20211126\iscell.npy');
s1126=find(iscell(:,1)==1);

for i=1:length(M1region3day2)
unbiased_currentoutcome1126_new(i,:)=unbiased_currentoutcome1126(find(s1126==M1region3day2(i,5)),:);
end


load('L:\Monkey1\region4\20211129\proportions_of_cells_encoding_current_trials_outcome_20211129.mat');
iscell=readNPY('L:\Monkey1\region4\20211129\iscell.npy');
s1129=find(iscell(:,1)==1);

for i=1:length(M1region4day1)
unbiased_currentoutcome1129_new(i,:)=unbiased_currentoutcome1129(find(s1129==M1region4day1(i,5)),:);
end






load('L:\Monkey1\region5\20211203\proportions_of_cells_encoding_current_trials_outcome_20211203.mat');
iscell=readNPY('L:\Monkey1\region5\20211203\iscell.npy');
s1203=find(iscell(:,1)==1);
for i=1:length(M1region5day1)
unbiased_currentoutcome1203_new(i,:)=unbiased_currentoutcome1203(find(s1203==M1region5day1(i,5)),:);
end
load('L:\Monkey1\region5\20211204\proportions_of_cells_encoding_current_trials_outcome_20211204.mat');
iscell=readNPY('L:\Monkey1\region5\20211204\iscell.npy');
s1204=find(iscell(:,1)==1);

for i=1:length(M1region5day2)
unbiased_currentoutcome1204_new(i,:)=unbiased_currentoutcome1204(find(s1204==M1region5day2(i,5)),:);
end


load('L:\Monkey1\region6\20211217\proportions_of_cells_encoding_current_trials_outcome_20211217.mat');
iscell=readNPY('L:\Monkey1\region6\20211217\iscell.npy');
s1217=find(iscell(:,1)==1);

for i=1:length(M1region6day1)
unbiased_currentoutcome1217_new(i,:)=unbiased_currentoutcome1217(find(s1217==M1region6day1(i,5)),:);
end

load('L:\Monkey1\region6\20211218\proportions_of_cells_encoding_current_trials_outcome_20211218.mat');
iscell=readNPY('L:\Monkey1\region6\20211218\iscell.npy');
s1218=find(iscell(:,1)==1);

for i=1:length(M1region6day2)
unbiased_currentoutcome1218_new(i,:)=unbiased_currentoutcome1218(find(s1218==M1region6day2(i,5)),:);
end
load('L:\Monkey1\region6\20211219\proportions_of_cells_encoding_current_trials_outcome_20211219.mat');
iscell=readNPY('L:\Monkey1\region6\20211219\iscell.npy');
s1219=find(iscell(:,1)==1);

for i=1:length(M1region6day3)
unbiased_currentoutcome1219_new(i,:)=unbiased_currentoutcome1219(find(s1219==M1region6day3(i,5)),:);
end


load('L:\Monkey1\region6\20211221\proportions_of_cells_encoding_current_trials_outcome_20211221.mat');
iscell=readNPY('L:\Monkey1\region6\20211221\iscell.npy');
s1221=find(iscell(:,1)==1);

for i=1:length(M1region6day5)
unbiased_currentoutcome1221_new(i,:)=unbiased_currentoutcome1221(find(s1221==M1region6day5(i,5)),:);
end

load('L:\Monkey1\region6\20211222\proportions_of_cells_encoding_current_trials_outcome_20211222.mat');
iscell=readNPY('L:\Monkey1\region6\20211222\iscell.npy');
s1222=find(iscell(:,1)==1);

for i=1:length(M1region6day6)
unbiased_currentoutcome1222_new(i,:)=unbiased_currentoutcome1222(find(s1222==M1region6day6(i,5)),:);
end


load('L:\Monkey1\region6\20211224\proportions_of_cells_encoding_current_trials_outcome_20211224.mat');
iscell=readNPY('L:\Monkey1\region6\20211224\iscell.npy');
s1224=find(iscell(:,1)==1);

for i=1:length(M1region6day8)
unbiased_currentoutcome1224_new(i,:)=unbiased_currentoutcome1224(find(s1224==M1region6day8(i,5)),:);
end
load('L:\Monkey1\region6\20211225\proportions_of_cells_encoding_current_trials_outcome_20211225.mat');
iscell=readNPY('L:\Monkey1\region6\20211225\iscell.npy');
s1225=find(iscell(:,1)==1);

for i=1:length(M1region6day9)
unbiased_currentoutcome1225_new(i,:)=unbiased_currentoutcome1225(find(s1225==M1region6day9(i,5)),:);
end
load('L:\Monkey1\region6\20211226\proportions_of_cells_encoding_current_trials_outcome_20211226.mat');
iscell=readNPY('L:\Monkey1\region6\20211226\iscell.npy');
s1226=find(iscell(:,1)==1);

for i=1:length(M1region6day10)
unbiased_currentoutcome1226_new(i,:)=unbiased_currentoutcome1226(find(s1226==M1region6day10(i,5)),:);
end

load('L:\Monkey1\region7\20220115\proportions_of_cells_encoding_current_trials_outcome_20220115.mat');
iscell=readNPY('L:\Monkey1\region7\20220115\iscell.npy');
s0115=find(iscell(:,1)==1);

for i=1:length(M1region7day1)
unbiased_currentoutcome0115_new(i,:)=unbiased_currentoutcome0115(find(s0115==M1region7day1(i,5)),:);
end
load('L:\Monkey1\region7\20220116\proportions_of_cells_encoding_current_trials_outcome_20220116.mat');
iscell=readNPY('L:\Monkey1\region7\20220116\iscell.npy');
s0116=find(iscell(:,1)==1);

for i=1:length(M1region7day2)
unbiased_currentoutcome0116_new(i,:)=unbiased_currentoutcome0116(find(s0116==M1region7day2(i,5)),:);
end
load('L:\Monkey1\region7\20220117\proportions_of_cells_encoding_current_trials_outcome_20220117.mat');
iscell=readNPY('L:\Monkey1\region7\20220117\iscell.npy');
s0117=find(iscell(:,1)==1);

for i=1:length(M1region7day3)
unbiased_currentoutcome0117_new(i,:)=unbiased_currentoutcome0117(find(s0117==M1region7day3(i,5)),:);
end


load('L:\Monkey2\region1\20220427\proportions_of_cells_encoding_current_trials_outcome_20220427.mat');
iscell=readNPY('L:\Monkey2\region1\20220427\iscell.npy');
s0427=find(iscell(:,1)==1);

for i=1:length(M2region1day2)
unbiased_currentoutcome0427_new(i,:)=unbiased_currentoutcome0427(find(s0427==M2region1day2(i,5)),:);
end



load('L:\Monkey2\region1\20220429\proportions_of_cells_encoding_current_trials_outcome_20220429.mat');
iscell=readNPY('L:\Monkey2\region1\20220429\iscell.npy');
s0429=find(iscell(:,1)==1);

for i=1:length(M2region1day4)
unbiased_currentoutcome0429_new(i,:)=unbiased_currentoutcome0429(find(s0429==M2region1day4(i,5)),:);
end



%monkey2region2
load('L:\Monkey2\region2\20220503\proportions_of_cells_encoding_current_trials_outcome_20220503.mat');
iscell=readNPY('L:\Monkey2\region2\20220503\iscell.npy');
s0503=find(iscell(:,1)==1);

for i=1:length(M2region2day1)
unbiased_currentoutcome0503_new(i,:)=unbiased_currentoutcome0503(find(s0503==M2region2day1(i,5)),:);
end


load('L:\Monkey2\region2\20220505\proportions_of_cells_encoding_current_trials_outcome_20220505.mat');
iscell=readNPY('L:\Monkey2\region2\20220505\iscell.npy');
s0505=find(iscell(:,1)==1);

for i=1:length(M2region2day3)
unbiased_currentoutcome0505_new(i,:)=unbiased_currentoutcome0505(find(s0505==M2region2day3(i,5)),:);
end




load('L:\Monkey2\region3\20220508\proportions_of_cells_encoding_current_trials_outcome_20220508.mat');
iscell=readNPY('L:\Monkey2\region3\20220508\iscell.npy');
s0508=find(iscell(:,1)==1);

for i=1:length(M2region3day2)
unbiased_currentoutcome0508_new(i,:)=unbiased_currentoutcome0508(find(s0508==M2region3day2(i,5)),:);
end
load('L:\Monkey2\region3\20220509\proportions_of_cells_encoding_current_trials_outcome_20220509.mat');
iscell=readNPY('L:\Monkey2\region3\20220509\iscell.npy');
s0509=find(iscell(:,1)==1);

for i=1:length(M2region3day3)
unbiased_currentoutcome0509_new(i,:)=unbiased_currentoutcome0509(find(s0509==M2region3day3(i,5)),:);
end




load('L:\Monkey2\region3\20220512\proportions_of_cells_encoding_current_trials_outcome_20220512.mat');
iscell=readNPY('L:\Monkey2\region3\20220512\iscell.npy');
s0512=find(iscell(:,1)==1);

for i=1:length(M2region3day6)
unbiased_currentoutcome0512_new(i,:)=unbiased_currentoutcome0512(find(s0512==M2region3day6(i,5)),:);
end












load('L:\Monkey2\region6\20220610\proportions_of_cells_encoding_current_trials_outcome_20220610.mat');
iscell=readNPY('L:\Monkey2\region6\20220610\iscell.npy');
s0610=find(iscell(:,1)==1);

for i=1:length(M2region6day1)
unbiased_currentoutcome0610_new(i,:)=unbiased_currentoutcome0610(find(s0610==M2region6day1(i,5)),:);
end







load('L:\Monkey2\region7\20220621\proportions_of_cells_encoding_current_trials_outcome_20220621.mat');
iscell=readNPY('L:\Monkey2\region7\20220621\iscell.npy');
s0621=find(iscell(:,1)==1);

for i=1:length(M2region7day4)
unbiased_currentoutcome0621_new(i,:)=unbiased_currentoutcome0621(find(s0621==M2region7day4(i,5)),:);
end



load('L:\Monkey2\region8\20220624\proportions_of_cells_encoding_current_trials_outcome_20220624.mat');
iscell=readNPY('L:\Monkey2\region8\20220624\iscell.npy');
s0624=find(iscell(:,1)==1);

for i=1:length(M2region8day1)
unbiased_currentoutcome0624_new(i,:)=unbiased_currentoutcome0624(find(s0624==M2region8day1(i,5)),:);
end



load('L:\Monkey2\region8\20220629\proportions_of_cells_encoding_current_trials_outcome_20220629.mat');
iscell=readNPY('L:\Monkey2\region8\20220629\iscell.npy');
s0629=find(iscell(:,1)==1);

for i=1:length(M2region8day4)
unbiased_currentoutcome0629_new(i,:)=unbiased_currentoutcome0629(find(s0629==M2region8day4(i,5)),:);
end

unbiased_currentoutcome_sig=[unbiased_currentoutcome1108_new;unbiased_currentoutcome1109_new;unbiased_currentoutcome1110_new;unbiased_currentoutcome1111_new;unbiased_currentoutcome1112_new;unbiased_currentoutcome1113_new;unbiased_currentoutcome1115_new;unbiased_currentoutcome1116_new;
    unbiased_currentoutcome1117_new;unbiased_currentoutcome1118_new;unbiased_currentoutcome1119_new;unbiased_currentoutcome1122_new;unbiased_currentoutcome1120_new;unbiased_currentoutcome1124_new;unbiased_currentoutcome1126_new;
    unbiased_currentoutcome1129_new;unbiased_currentoutcome1203_new;unbiased_currentoutcome1204_new;unbiased_currentoutcome1217_new;unbiased_currentoutcome1218_new;unbiased_currentoutcome1219_new;unbiased_currentoutcome1221_new;
    unbiased_currentoutcome1222_new;unbiased_currentoutcome1224_new;unbiased_currentoutcome1225_new;unbiased_currentoutcome1226_new;unbiased_currentoutcome0115_new;unbiased_currentoutcome0116_new;unbiased_currentoutcome0117_new;
    unbiased_currentoutcome0427_new;unbiased_currentoutcome0429_new;unbiased_currentoutcome0503_new;unbiased_currentoutcome0505_new;unbiased_currentoutcome0508_new;unbiased_currentoutcome0509_new;unbiased_currentoutcome0512_new;
    unbiased_currentoutcome0610_new;unbiased_currentoutcome0621_new;unbiased_currentoutcome0624_new;unbiased_currentoutcome0629_new];

shadedErrorBar(([1:size(unbiased_currentoutcome_sig,2)-1]-3)/7.4,mean(unbiased_currentoutcome_sig(:,2:20),1),std(unbiased_currentoutcome_sig(:,2:20),1)./sqrt(length(unbiased_currentoutcome_sig(:,2:20))),'lineProps','b');
xline(0);
ylim([0 0.02]);



%% 没有显著差异的
load('L:\Monkey2\region5\20220527\unbiased_currentoutcome0527.mat');
load('L:\Monkey2\region5\20220527\proportions_of_cells_encoding_current_trials_outcome_20220527.mat');
iscell=readNPY('L:\Monkey2\region5\20220527\iscell.npy');
s0527=find(iscell(:,1)==1);

for i=1:length(M2region5day3)
unbiased_currentoutcome0527_new(i,:)=unbiased_currentoutcome0527(find(s0527==M2region5day3(i,5)),:);
end


load('L:\Monkey1\region2\20211121\unbiased_currentoutcome1121.mat');

load('L:\Monkey1\region2\20211121\proportions_of_cells_encoding_current_trials_outcome_20211121.mat');
iscell=readNPY('L:\Monkey1\region2\20211121\iscell.npy');
s1121=find(iscell(:,1)==1);

for i=1:length(M1region2day2)
unbiased_currentoutcome1121_new(i,:)=unbiased_currentoutcome1121(find(s1121==M1region2day2(i,5)),:);
end
load('L:\Monkey1\region2\20211123\unbiased_currentoutcome1123.mat');

load('L:\Monkey1\region2\20211123\proportions_of_cells_encoding_current_trials_outcome_20211123.mat');
iscell=readNPY('L:\Monkey1\region2\20211123\iscell.npy');
s1123=find(iscell(:,1)==1);
for i=1:length(M1region2day3)
unbiased_currentoutcome1123_new(i,:)=unbiased_currentoutcome1123(find(s1123==M1region2day3(i,5)),:);
end
load('L:\Monkey1\region3\20211125\unbiased_currentoutcome1125.mat');
load('L:\Monkey1\region3\20211125\proportions_of_cells_encoding_current_trials_outcome_20211125.mat');
iscell=readNPY('L:\Monkey1\region3\20211125\iscell.npy');
s1125=find(iscell(:,1)==1);
for i=1:length(M1region3day1)
unbiased_currentoutcome1125_new(i,:)=unbiased_currentoutcome1125(find(s1125==M1region3day1(i,5)),:);
end

load('L:\Monkey1\region3\20211127\unbiased_currentoutcome1127.mat');
load('L:\Monkey1\region3\20211127\proportions_of_cells_encoding_current_trials_outcome_20211127.mat');
iscell=readNPY('L:\Monkey1\region3\20211127\iscell.npy');
s1127=find(iscell(:,1)==1);
for i=1:length(M1region3day3)
unbiased_currentoutcome1127_new(i,:)=unbiased_currentoutcome1127(find(s1127==M1region3day3(i,5)),:);
end
load('L:\Monkey1\region4\20211201\unbiased_currentoutcome1201.mat');
load('L:\Monkey1\region4\20211201\proportions_of_cells_encoding_current_trials_outcome_20211201.mat');
iscell=readNPY('L:\Monkey1\region4\20211201\iscell.npy');
s1201=find(iscell(:,1)==1);

for i=1:length(M1region4day2)
unbiased_currentoutcome1201_new(i,:)=unbiased_currentoutcome1201(find(s1201==M1region4day2(i,5)),:);
end


load('L:\Monkey1\region4\20211202\unbiased_currentoutcome1202.mat');
load('L:\Monkey1\region4\20211202\proportions_of_cells_encoding_current_trials_outcome_20211202.mat');
iscell=readNPY('L:\Monkey1\region4\20211202\iscell.npy');
s1202=find(iscell(:,1)==1);
for i=1:length(M1region4day3)
unbiased_currentoutcome1202_new(i,:)=unbiased_currentoutcome1202(find(s1202==M1region4day3(i,5)),:);
end

load('L:\Monkey1\region6\20211220\unbiased_currentoutcome1220.mat');
load('L:\Monkey1\region6\20211220\proportions_of_cells_encoding_current_trials_outcome_20211220.mat');
iscell=readNPY('L:\Monkey1\region6\20211220\iscell.npy');
s1220=find(iscell(:,1)==1);

for i=1:length(M1region6day4)
unbiased_currentoutcome1220_new(i,:)=unbiased_currentoutcome1220(find(s1220==M1region6day4(i,5)),:);
end

load('L:\Monkey1\region6\20211223\unbiased_currentoutcome1223.mat');
load('L:\Monkey1\region6\20211223\proportions_of_cells_encoding_current_trials_outcome_20211223.mat');
iscell=readNPY('L:\Monkey1\region6\20211223\iscell.npy');
s1223=find(iscell(:,1)==1);

for i=1:length(M1region6day7)
unbiased_currentoutcome1223_new(i,:)=unbiased_currentoutcome1223(find(s1223==M1region6day7(i,5)),:);
end
load('L:\Monkey2\region1\20220426\unbiased_currentoutcome0426.mat');

load('L:\Monkey2\region1\20220426\proportions_of_cells_encoding_current_trials_outcome_20220426.mat');
iscell=readNPY('L:\Monkey2\region1\20220426\iscell.npy');
s0426=find(iscell(:,1)==1);

for i=1:length(M2region1day1)
unbiased_currentoutcome0426_new(i,:)=unbiased_currentoutcome0426(find(s0426==M2region1day1(i,5)),:);
end
load('L:\Monkey2\region1\20220428\unbiased_currentoutcome0428.mat');
load('L:\Monkey2\region1\20220428\proportions_of_cells_encoding_current_trials_outcome_20220428.mat');
iscell=readNPY('L:\Monkey2\region1\20220428\iscell.npy');
s0428=find(iscell(:,1)==1);

for i=1:length(M2region1day3)
unbiased_currentoutcome0428_new(i,:)=unbiased_currentoutcome0428(find(s0428==M2region1day3(i,5)),:);
end
load('L:\Monkey2\region1\20220430\unbiased_currentoutcome0430.mat');


load('L:\Monkey2\region1\20220430\proportions_of_cells_encoding_current_trials_outcome_20220430.mat');
iscell=readNPY('L:\Monkey2\region1\20220430\iscell.npy');
s0430=find(iscell(:,1)==1);

for i=1:length(M2region1day5)
unbiased_currentoutcome0430_new(i,:)=unbiased_currentoutcome0430(find(s0430==M2region1day5(i,5)),:);
end
load('L:\Monkey2\region1\20220501\unbiased_currentoutcome0501.mat');
load('L:\Monkey2\region1\20220501\proportions_of_cells_encoding_current_trials_outcome_20220501.mat');
iscell=readNPY('L:\Monkey2\region1\20220501\iscell.npy');
s0501=find(iscell(:,1)==1);

for i=1:length(M2region1day6)
unbiased_currentoutcome0501_new(i,:)=unbiased_currentoutcome0501(find(s0501==M2region1day6(i,5)),:);
end



load('L:\Monkey2\region1\20220502\unbiased_currentoutcome0502.mat');
load('L:\Monkey2\region1\20220502\proportions_of_cells_encoding_current_trials_outcome_20220502.mat');
iscell=readNPY('L:\Monkey2\region1\20220502\iscell.npy');
s0502=find(iscell(:,1)==1);

for i=1:length(M2region1day7)
unbiased_currentoutcome0502_new(i,:)=unbiased_currentoutcome0502(find(s0502==M2region1day7(i,5)),:);
end


load('L:\Monkey2\region2\20220504\unbiased_currentoutcome0504.mat');
load('L:\Monkey2\region2\20220504\proportions_of_cells_encoding_current_trials_outcome_20220504.mat');
iscell=readNPY('L:\Monkey2\region2\20220504\iscell.npy');
s0504=find(iscell(:,1)==1);

for i=1:length(M2region2day2)
unbiased_currentoutcome0504_new(i,:)=unbiased_currentoutcome0504(find(s0504==M2region2day2(i,5)),:);
end
load('L:\Monkey2\region2\20220506\unbiased_currentoutcome0506.mat');
load('L:\Monkey2\region2\20220506\proportions_of_cells_encoding_current_trials_outcome_20220506.mat');
iscell=readNPY('L:\Monkey2\region2\20220506\iscell.npy');
s0506=find(iscell(:,1)==1);

for i=1:length(M2region2day4)
unbiased_currentoutcome0506_new(i,:)=unbiased_currentoutcome0506(find(s0506==M2region2day4(i,5)),:);
end
load('L:\Monkey2\region3\20220507\unbiased_currentoutcome0507.mat');

load('L:\Monkey2\region3\20220507\proportions_of_cells_encoding_current_trials_outcome_20220507.mat');
iscell=readNPY('L:\Monkey2\region3\20220507\iscell.npy');
s0507=find(iscell(:,1)==1);

for i=1:length(M2region3day1)
unbiased_currentoutcome0507_new(i,:)=unbiased_currentoutcome0507(find(s0507==M2region3day1(i,5)),:);
end
load('L:\Monkey2\region3\20220510\unbiased_currentoutcome0510.mat');
load('L:\Monkey2\region3\20220510\proportions_of_cells_encoding_current_trials_outcome_20220510.mat');
iscell=readNPY('L:\Monkey2\region3\20220510\iscell.npy');
s0510=find(iscell(:,1)==1);

for i=1:length(M2region3day4)
unbiased_currentoutcome0510_new(i,:)=unbiased_currentoutcome0510(find(s0510==M2region3day4(i,5)),:);
end
load('L:\Monkey2\region3\20220511\unbiased_currentoutcome0511.mat');
load('L:\Monkey2\region3\20220511\proportions_of_cells_encoding_current_trials_outcome_20220511.mat');
iscell=readNPY('L:\Monkey2\region3\20220511\iscell.npy');
s0511=find(iscell(:,1)==1);

for i=1:length(M2region3day5)
unbiased_currentoutcome0511_new(i,:)=unbiased_currentoutcome0511(find(s0511==M2region3day5(i,5)),:);
end
load('L:\Monkey2\region3\20220513\unbiased_currentoutcome0513.mat');
load('L:\Monkey2\region3\20220513\proportions_of_cells_encoding_current_trials_outcome_20220513.mat');
iscell=readNPY('L:\Monkey2\region3\20220513\iscell.npy');
s0513=find(iscell(:,1)==1);

for i=1:length(M2region3day7)
unbiased_currentoutcome0513_new(i,:)=unbiased_currentoutcome0513(find(s0513==M2region3day7(i,5)),:);
end
load('L:\Monkey2\region4\20220517\unbiased_currentoutcome0517.mat');
load('L:\Monkey2\region4\20220517\proportions_of_cells_encoding_current_trials_outcome_20220517.mat');
iscell=readNPY('L:\Monkey2\region4\20220517\iscell.npy');
s0517=find(iscell(:,1)==1);

for i=1:length(M2region4day1)
unbiased_currentoutcome0517_new(i,:)=unbiased_currentoutcome0517(find(s0517==M2region4day1(i,5)),:);
end

load('L:\Monkey2\region4\20220518\unbiased_currentoutcome0518.mat');
load('L:\Monkey2\region4\20220518\proportions_of_cells_encoding_current_trials_outcome_20220518.mat');
iscell=readNPY('L:\Monkey2\region4\20220518\iscell.npy');
s0518=find(iscell(:,1)==1);

for i=1:length(M2region4day2)
unbiased_currentoutcome0518_new(i,:)=unbiased_currentoutcome0518(find(s0518==M2region4day2(i,5)),:);
end
load('L:\Monkey2\region4\20220519\unbiased_currentoutcome0519.mat');
load('L:\Monkey2\region4\20220519\proportions_of_cells_encoding_current_trials_outcome_20220519.mat');
iscell=readNPY('L:\Monkey2\region4\20220519\iscell.npy');
s0519=find(iscell(:,1)==1);

for i=1:length(M2region4day3)
unbiased_currentoutcome0519_new(i,:)=unbiased_currentoutcome0519(find(s0519==M2region4day3(i,5)),:);
end
load('L:\Monkey2\region5\20220524\unbiased_currentoutcome0524.mat');
load('L:\Monkey2\region5\20220524\proportions_of_cells_encoding_current_trials_outcome_20220524.mat');
iscell=readNPY('L:\Monkey2\region5\20220524\iscell.npy');
s0524=find(iscell(:,1)==1);

for i=1:length(M2region5day1)
unbiased_currentoutcome0524_new(i,:)=unbiased_currentoutcome0524(find(s0524==M2region5day1(i,5)),:);
end
load('L:\Monkey2\region5\20220526\unbiased_currentoutcome0526.mat');
load('L:\Monkey2\region5\20220526\proportions_of_cells_encoding_current_trials_outcome_20220526.mat');
iscell=readNPY('L:\Monkey2\region5\20220526\iscell.npy');
s0526=find(iscell(:,1)==1);

for i=1:length(M2region5day2)
unbiased_currentoutcome0526_new(i,:)=unbiased_currentoutcome0526(find(s0526==M2region5day2(i,5)),:);
end

load('L:\Monkey2\region5\20220528\unbiased_currentoutcome0528.mat');
load('L:\Monkey2\region5\20220528\proportions_of_cells_encoding_current_trials_outcome_20220528.mat');
iscell=readNPY('L:\Monkey2\region5\20220528\iscell.npy');
s0528=find(iscell(:,1)==1);

for i=1:length(M2region5day4)
unbiased_currentoutcome0528_new(i,:)=unbiased_currentoutcome0528(find(s0528==M2region5day4(i,5)),:);
end

load('L:\Monkey2\region5\20220529\unbiased_currentoutcome0529.mat');

load('L:\Monkey2\region5\20220529\proportions_of_cells_encoding_current_trials_outcome_20220529.mat');
iscell=readNPY('L:\Monkey2\region5\20220529\iscell.npy');
s0529=find(iscell(:,1)==1);

for i=1:length(M2region5day5)
unbiased_currentoutcome0529_new(i,:)=unbiased_currentoutcome0529(find(s0529==M2region5day5(i,5)),:);
end
load('L:\Monkey2\region5\20220530\unbiased_currentoutcome0530.mat');
load('L:\Monkey2\region5\20220530\proportions_of_cells_encoding_current_trials_outcome_20220530.mat');
iscell=readNPY('L:\Monkey2\region5\20220530\iscell.npy');
s0530=find(iscell(:,1)==1);

for i=1:length(M2region5day6)
unbiased_currentoutcome0530_new(i,:)=unbiased_currentoutcome0530(find(s0530==M2region5day6(i,5)),:);
end
load('L:\Monkey2\region6\20220611\unbiased_currentoutcome0611.mat');
load('L:\Monkey2\region6\20220611\proportions_of_cells_encoding_current_trials_outcome_20220611.mat');
iscell=readNPY('L:\Monkey2\region6\20220611\iscell.npy');
s0611=find(iscell(:,1)==1);

for i=1:length(M2region6day2)
unbiased_currentoutcome0611_new(i,:)=unbiased_currentoutcome0611(find(s0611==M2region6day2(i,5)),:);
end
load('L:\Monkey2\region6\20220612\unbiased_currentoutcome0612.mat');
load('L:\Monkey2\region6\20220612\proportions_of_cells_encoding_current_trials_outcome_20220612.mat');
iscell=readNPY('L:\Monkey2\region6\20220612\iscell.npy');
s0612=find(iscell(:,1)==1);

for i=1:length(M2region6day3)
unbiased_currentoutcome0612_new(i,:)=unbiased_currentoutcome0612(find(s0612==M2region6day3(i,5)),:);
end

load('L:\Monkey2\region6\20220613\unbiased_currentoutcome0613.mat');
load('L:\Monkey2\region6\20220613\proportions_of_cells_encoding_current_trials_outcome_20220613.mat');
iscell=readNPY('L:\Monkey2\region6\20220613\iscell.npy');
s0613=find(iscell(:,1)==1);

for i=1:length(M2region6day4)
unbiased_currentoutcome0613_new(i,:)=unbiased_currentoutcome0613(find(s0613==M2region6day4(i,5)),:);
end
load('L:\Monkey2\region7\20220618\unbiased_currentoutcome0618.mat');

load('L:\Monkey2\region7\20220618\proportions_of_cells_encoding_current_trials_outcome_20220618.mat');
iscell=readNPY('L:\Monkey2\region7\20220618\iscell.npy');
s0618=find(iscell(:,1)==1);

for i=1:length(M2region7day1)
unbiased_currentoutcome0618_new(i,:)=unbiased_currentoutcome0618(find(s0618==M2region7day1(i,5)),:);
end


load('L:\Monkey2\region7\20220619\unbiased_currentoutcome0619.mat');
load('L:\Monkey2\region7\20220619\proportions_of_cells_encoding_current_trials_outcome_20220619.mat');
iscell=readNPY('L:\Monkey2\region7\20220619\iscell.npy');
s0619=find(iscell(:,1)==1);

for i=1:length(M2region7day2)
unbiased_currentoutcome0619_new(i,:)=unbiased_currentoutcome0619(find(s0619==M2region7day2(i,5)),:);
end


load('L:\Monkey2\region7\20220620\unbiased_currentoutcome0620.mat');
load('L:\Monkey2\region7\20220620\proportions_of_cells_encoding_current_trials_outcome_20220620.mat');
iscell=readNPY('L:\Monkey2\region7\20220620\iscell.npy');
s0620=find(iscell(:,1)==1);

for i=1:length(M2region7day3)
unbiased_currentoutcome0620_new(i,:)=unbiased_currentoutcome0620(find(s0620==M2region7day3(i,5)),:);
end
load('L:\Monkey2\region7\20220622\unbiased_currentoutcome0622.mat');
load('L:\Monkey2\region7\20220622\proportions_of_cells_encoding_current_trials_outcome_20220622.mat');
iscell=readNPY('L:\Monkey2\region7\20220622\iscell.npy');
s0622=find(iscell(:,1)==1);

for i=1:length(M2region7day5)
unbiased_currentoutcome0622_new(i,:)=unbiased_currentoutcome0622(find(s0622==M2region7day5(i,5)),:);
end

load('L:\Monkey2\region7\20220623\unbiased_currentoutcome0623.mat');
load('L:\Monkey2\region7\20220623\proportions_of_cells_encoding_current_trials_outcome_20220623.mat');
iscell=readNPY('L:\Monkey2\region7\20220623\iscell.npy');
s0623=find(iscell(:,1)==1);

for i=1:length(M2region7day6)
unbiased_currentoutcome0623_new(i,:)=unbiased_currentoutcome0623(find(s0623==M2region7day6(i,5)),:);
end
load('L:\Monkey2\region8\20220627\unbiased_currentoutcome0627.mat');
load('L:\Monkey2\region8\20220627\proportions_of_cells_encoding_current_trials_outcome_20220627.mat');
iscell=readNPY('L:\Monkey2\region8\20220627\iscell.npy');
s0627=find(iscell(:,1)==1);

for i=1:length(M2region8day2)
unbiased_currentoutcome0627_new(i,:)=unbiased_currentoutcome0627(find(s0627==M2region8day2(i,5)),:);
end

load('L:\Monkey2\region8\20220628\unbiased_currentoutcome0628.mat');
load('L:\Monkey2\region8\20220628\proportions_of_cells_encoding_current_trials_outcome_20220628.mat');
iscell=readNPY('L:\Monkey2\region8\20220628\iscell.npy');
s0628=find(iscell(:,1)==1);

for i=1:length(M2region8day3)
unbiased_currentoutcome0628_new(i,:)=unbiased_currentoutcome0628(find(s0628==M2region8day3(i,5)),:);
end

load('L:\Monkey2\region8\20220630\unbiased_currentoutcome0630.mat');
load('L:\Monkey2\region8\20220630\proportions_of_cells_encoding_current_trials_outcome_20220630.mat');
iscell=readNPY('L:\Monkey2\region8\20220630\iscell.npy');
s0630=find(iscell(:,1)==1);

for i=1:length(M2region8day5)
unbiased_currentoutcome0630_new(i,:)=unbiased_currentoutcome0630(find(s0630==M2region8day5(i,5)),:);
end
unbiased_currentoutcome=[unbiased_currentoutcome1121_new;unbiased_currentoutcome1123_new;unbiased_currentoutcome1125_new;unbiased_currentoutcome1127_new;unbiased_currentoutcome1201_new;unbiased_currentoutcome1202_new;unbiased_currentoutcome1220_new;unbiased_currentoutcome1223_new;
    unbiased_currentoutcome0426_new;unbiased_currentoutcome0428_new;unbiased_currentoutcome0430_new;unbiased_currentoutcome0501_new;unbiased_currentoutcome0502_new;unbiased_currentoutcome0504_new;unbiased_currentoutcome0506_new;
    unbiased_currentoutcome0507_new;unbiased_currentoutcome0510_new;unbiased_currentoutcome0511_new;unbiased_currentoutcome0513_new;unbiased_currentoutcome0517_new;unbiased_currentoutcome0518_new;unbiased_currentoutcome0519_new;
    unbiased_currentoutcome0524_new;unbiased_currentoutcome0526_new;unbiased_currentoutcome0528_new;unbiased_currentoutcome0529_new;unbiased_currentoutcome0530_new;unbiased_currentoutcome0611_new;unbiased_currentoutcome0612_new;
    unbiased_currentoutcome0613_new;unbiased_currentoutcome0618_new;unbiased_currentoutcome0619_new;unbiased_currentoutcome0620_new;unbiased_currentoutcome0622_new;unbiased_currentoutcome0623_new;unbiased_currentoutcome0627_new;
    unbiased_currentoutcome0628_new;unbiased_currentoutcome0630_new;unbiased_currentoutcome0527_new];

shadedErrorBar(([1:size(unbiased_currentoutcome,2)-1]-3)/7.4,mean(unbiased_currentoutcome(:,2:20),1),std(unbiased_currentoutcome(:,2:20),1)./sqrt(length(unbiased_currentoutcome(:,2:20))),'lineProps','r');
xline(0);
ylim([0 0.02]);

% out=[];
% for i=1:size(unbiased_currentoutcome,2)
%     p=ranksum([unbiased_currentoutcome(:,i)],[unbiased_currentoutcome_sig(:,i)]);
%     out(1,i)=p;
% end

