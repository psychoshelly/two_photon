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
load('L:\Monkey1\region2\20211121\unbiased_currentoutcome1121.mat');
load('L:\Monkey1\region2\20211123\unbiased_currentoutcome1123.mat');
load('L:\Monkey1\region2\20211124\unbiased_currentoutcome1124.mat');
load('L:\Monkey1\region3\20211125\unbiased_currentoutcome1125.mat');
load('L:\Monkey1\region3\20211126\unbiased_currentoutcome1126.mat');
load('L:\Monkey1\region3\20211127\unbiased_currentoutcome1127.mat');
load('L:\Monkey1\region4\20211129\unbiased_currentoutcome1129.mat');
load('L:\Monkey1\region4\20211201\unbiased_currentoutcome1201.mat');
load('L:\Monkey1\region4\20211202\unbiased_currentoutcome1202.mat');

load('L:\Monkey1\region5\20211203\unbiased_currentoutcome1203.mat');
load('L:\Monkey1\region5\20211204\unbiased_currentoutcome1204.mat');


load('L:\Monkey1\region6\20211217\unbiased_currentoutcome1217.mat');
load('L:\Monkey1\region6\20211218\unbiased_currentoutcome1218.mat');
load('L:\Monkey1\region6\20211219\unbiased_currentoutcome1219.mat');
load('L:\Monkey1\region6\20211220\unbiased_currentoutcome1220.mat');
load('L:\Monkey1\region6\20211221\unbiased_currentoutcome1221.mat');
load('L:\Monkey1\region6\20211222\unbiased_currentoutcome1222.mat');
load('L:\Monkey1\region6\20211223\unbiased_currentoutcome1223.mat');
load('L:\Monkey1\region6\20211224\unbiased_currentoutcome1224.mat');
load('L:\Monkey1\region6\20211225\unbiased_currentoutcome1225.mat');
load('L:\Monkey1\region6\20211226\unbiased_currentoutcome1226.mat');


load('L:\Monkey1\region7\20220115\unbiased_currentoutcome0115.mat');
load('L:\Monkey1\region7\20220116\unbiased_currentoutcome0116.mat');
load('L:\Monkey1\region7\20220117\unbiased_currentoutcome0117.mat');




% unbiased_currentoutcome=[unbiased_currentoutcome1108;unbiased_currentoutcome1109;unbiased_currentoutcome1110;unbiased_currentoutcome1111;unbiased_currentoutcome1112;unbiased_currentoutcome1113;unbiased_currentoutcome1115;unbiased_currentoutcome1116;unbiased_currentoutcome1117;unbiased_currentoutcome1118;unbiased_currentoutcome1119;unbiased_currentoutcome1122];
% 
% 
% shadedErrorBar([1:size(unbiased_currentoutcome,2)-1],mean(unbiased_currentoutcome(:,2:20),1),std(unbiased_currentoutcome(:,2:20),1)./sqrt(length(unbiased_currentoutcome(:,2:20))),'lineProps','r');
% xline(3);
%Monkey1_region1



iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s1108=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211108\judge_the_types_of_neurons_on_each_frame_20211108.mat');

for i=1:length(s1108)
    for j=36:size(M1region1day1_difference,2)
        if M1region1day1_difference(i,j)<0
            unbiased_currentoutcome1108(i,j-34)=-unbiased_currentoutcome1108(i,j-34);
        end
    end
end
   

unbiased_currentoutcome_meanvalue1108=mean(unbiased_currentoutcome1108(:,5:20),2);
unbiased_currentoutcome_meanvalue1108(:,2)=s1108;
unbiased_currentoutcome_meanvalue1108(:,3)=1;
unbiased_currentoutcome_meanvalue1108(:,4)=1; %region
unbiased_currentoutcome_meanvalue1108(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region1\20211109\iscell.npy');
s1109=find(iscell(:,1)==1);


load('L:\Monkey1\region1\20211109\judge_the_types_of_neurons_on_each_frame_20211109.mat');

for i=1:length(s1109)
    for j=36:size(M1region1day2_difference,2)
        if M1region1day2_difference(i,j)<0
            unbiased_currentoutcome1109(i,j-34)=-unbiased_currentoutcome1109(i,j-34);
        end
    end
end
   

unbiased_currentoutcome_meanvalue1109=mean(unbiased_currentoutcome1109(:,5:20),2);
unbiased_currentoutcome_meanvalue1109(:,2)=s1109;
unbiased_currentoutcome_meanvalue1109(:,3)=2;
unbiased_currentoutcome_meanvalue1109(:,4)=1; %region
unbiased_currentoutcome_meanvalue1109(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region1\20211110\iscell.npy');
s1110=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211110\judge_the_types_of_neurons_on_each_frame_20211110.mat');

for i=1:length(s1110)
    for j=36:size(M1region1day3_difference,2)
        if M1region1day3_difference(i,j)<0
            unbiased_currentoutcome1110(i,j-34)=-unbiased_currentoutcome1110(i,j-34);
        end
    end
end


unbiased_currentoutcome_meanvalue1110=mean(unbiased_currentoutcome1110(:,5:20),2);
unbiased_currentoutcome_meanvalue1110(:,2)=s1110;
unbiased_currentoutcome_meanvalue1110(:,3)=3;
unbiased_currentoutcome_meanvalue1110(:,4)=1; %region
unbiased_currentoutcome_meanvalue1110(:,5)=1; %monkey



iscell=readNPY('L:\Monkey1\region1\20211111\iscell.npy');
s1111=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211111\judge_the_types_of_neurons_on_each_frame_20211111.mat');

for i=1:length(s1111)
    for j=36:size(M1region1day4_difference,2)
        if M1region1day4_difference(i,j)<0
            unbiased_currentoutcome1111(i,j-34)=-unbiased_currentoutcome1111(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1111=mean(unbiased_currentoutcome1111(:,5:20),2);
unbiased_currentoutcome_meanvalue1111(:,2)=s1111;
unbiased_currentoutcome_meanvalue1111(:,3)=4;
unbiased_currentoutcome_meanvalue1111(:,4)=1; %region
unbiased_currentoutcome_meanvalue1111(:,5)=1; %monkey

iscell=readNPY('L:\Monkey1\region1\20211112\iscell.npy');
s1112=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211112\judge_the_types_of_neurons_on_each_frame_20211112.mat');

for i=1:length(s1112)
    for j=36:size(M1region1day5_difference,2)
        if M1region1day5_difference(i,j)<0
            unbiased_currentoutcome1112(i,j-34)=-unbiased_currentoutcome1112(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1112=mean(unbiased_currentoutcome1112(:,5:20),2);
unbiased_currentoutcome_meanvalue1112(:,2)=s1112;
unbiased_currentoutcome_meanvalue1112(:,3)=5;
unbiased_currentoutcome_meanvalue1112(:,4)=1; %region
unbiased_currentoutcome_meanvalue1112(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region1\20211113\iscell.npy');
s1113=find(iscell(:,1)==1);

load('L:\Monkey1\region1\20211113\judge_the_types_of_neurons_on_each_frame_20211113.mat');

for i=1:length(s1113)
    for j=36:size(M1region1day6_difference,2)
        if M1region1day6_difference(i,j)<0
            unbiased_currentoutcome1113(i,j-34)=-unbiased_currentoutcome1113(i,j-34);
        end
    end
end

unbiased_currentoutcome_meanvalue1113=mean(unbiased_currentoutcome1113(:,5:20),2);
unbiased_currentoutcome_meanvalue1113(:,2)=s1113;
unbiased_currentoutcome_meanvalue1113(:,3)=6;
unbiased_currentoutcome_meanvalue1113(:,4)=1; %region
unbiased_currentoutcome_meanvalue1113(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region1\20211115\iscell.npy');
s1115=find(iscell(:,1)==1);


load('L:\Monkey1\region1\20211115\judge_the_types_of_neurons_on_each_frame_20211115.mat');

for i=1:length(s1115)
    for j=36:size(M1region1day7_difference,2)
        if M1region1day7_difference(i,j)<0
            unbiased_currentoutcome1115(i,j-34)=-unbiased_currentoutcome1115(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1115=mean(unbiased_currentoutcome1115(:,5:20),2);
unbiased_currentoutcome_meanvalue1115(:,2)=s1115;
unbiased_currentoutcome_meanvalue1115(:,3)=7;
unbiased_currentoutcome_meanvalue1115(:,4)=1; %region
unbiased_currentoutcome_meanvalue1115(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region1\20211116\iscell.npy');
s1116=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211116\judge_the_types_of_neurons_on_each_frame_20211116.mat');

for i=1:length(s1116)
    for j=36:size(M1region1day8_difference,2)
        if M1region1day8_difference(i,j)<0
            unbiased_currentoutcome1116(i,j-34)=-unbiased_currentoutcome1116(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1116=mean(unbiased_currentoutcome1116(:,5:20),2);
unbiased_currentoutcome_meanvalue1116(:,2)=s1116;
unbiased_currentoutcome_meanvalue1116(:,3)=8;
unbiased_currentoutcome_meanvalue1116(:,4)=1; %region
unbiased_currentoutcome_meanvalue1116(:,5)=1; %monkey



iscell=readNPY('L:\Monkey1\region1\20211117\iscell.npy');
s1117=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211117\judge_the_types_of_neurons_on_each_frame_20211117.mat');

for i=1:length(s1117)
    for j=36:size(M1region1day9_difference,2)
        if M1region1day9_difference(i,j)<0
            unbiased_currentoutcome1117(i,j-34)=-unbiased_currentoutcome1117(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1117=mean(unbiased_currentoutcome1117(:,5:20),2);
unbiased_currentoutcome_meanvalue1117(:,2)=s1117;
unbiased_currentoutcome_meanvalue1117(:,3)=9;
unbiased_currentoutcome_meanvalue1117(:,4)=1; %region
unbiased_currentoutcome_meanvalue1117(:,5)=1; %monkey

iscell=readNPY('L:\Monkey1\region1\20211118\iscell.npy');
s1118=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211118\judge_the_types_of_neurons_on_each_frame_20211118.mat');

for i=1:length(s1118)
    for j=36:size(M1region1day10_difference,2)
        if M1region1day10_difference(i,j)<0
            unbiased_currentoutcome1118(i,j-34)=-unbiased_currentoutcome1118(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1118=mean(unbiased_currentoutcome1118(:,5:20),2);
unbiased_currentoutcome_meanvalue1118(:,2)=s1118;
unbiased_currentoutcome_meanvalue1118(:,3)=10;
unbiased_currentoutcome_meanvalue1118(:,4)=1; %region
unbiased_currentoutcome_meanvalue1118(:,5)=1; %monkey

iscell=readNPY('L:\Monkey1\region1\20211119\iscell.npy');
s1119=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211119\judge_the_types_of_neurons_on_each_frame_20211119.mat');

for i=1:length(s1118)
    for j=36:size(M1region1day11_difference,2)
        if M1region1day11_difference(i,j)<0
            unbiased_currentoutcome1119(i,j-34)=-unbiased_currentoutcome1119(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1119=mean(unbiased_currentoutcome1119(:,5:20),2);
unbiased_currentoutcome_meanvalue1119(:,2)=s1119;
unbiased_currentoutcome_meanvalue1119(:,3)=11;
unbiased_currentoutcome_meanvalue1119(:,4)=1; %region
unbiased_currentoutcome_meanvalue1119(:,5)=1; %monkey
iscell=readNPY('L:\Monkey1\region1\20211122\iscell.npy');
s1122=find(iscell(:,1)==1);
load('L:\Monkey1\region1\20211122\judge_the_types_of_neurons_on_each_frame_20211122.mat');

for i=1:length(s1122)
    for j=36:size(M1region1day12_difference,2)
        if M1region1day12_difference(i,j)<0
            unbiased_currentoutcome1122(i,j-34)=-unbiased_currentoutcome1122(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1122=mean(unbiased_currentoutcome1122(:,5:20),2);
unbiased_currentoutcome_meanvalue1122(:,2)=s1122;
unbiased_currentoutcome_meanvalue1122(:,3)=12;
unbiased_currentoutcome_meanvalue1122(:,4)=1; %region
unbiased_currentoutcome_meanvalue1122(:,5)=1; %monkey


unbiased_currentoutcome_meanvalue_m1region1=[unbiased_currentoutcome_meanvalue1108;unbiased_currentoutcome_meanvalue1109;unbiased_currentoutcome_meanvalue1110;unbiased_currentoutcome_meanvalue1111;unbiased_currentoutcome_meanvalue1112;unbiased_currentoutcome_meanvalue1113;unbiased_currentoutcome_meanvalue1115;unbiased_currentoutcome_meanvalue1116;unbiased_currentoutcome_meanvalue1117;unbiased_currentoutcome_meanvalue1118;unbiased_currentoutcome_meanvalue1119;unbiased_currentoutcome_meanvalue1122];


%%Monkey1_region2
iscell=readNPY('L:\Monkey1\region2\20211120\iscell.npy');
s1120=find(iscell(:,1)==1);
load('L:\Monkey1\region2\20211120\judge_the_types_of_neurons_on_each_frame_20211120.mat');

for i=1:length(s1120)
    for j=36:size(M1region2day1_difference,2)
        if M1region2day1_difference(i,j)<0
            unbiased_currentoutcome1120(i,j-34)=-unbiased_currentoutcome1120(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1120=mean(unbiased_currentoutcome1120(:,5:20),2);
unbiased_currentoutcome_meanvalue1120(:,2)=s1120;
unbiased_currentoutcome_meanvalue1120(:,3)=1;
unbiased_currentoutcome_meanvalue1120(:,4)=2; %region
unbiased_currentoutcome_meanvalue1120(:,5)=1; %monkey

iscell=readNPY('L:\Monkey1\region2\20211121\iscell.npy');
s1121=find(iscell(:,1)==1);
load('L:\Monkey1\region2\20211121\judge_the_types_of_neurons_on_each_frame_20211121.mat');

for i=1:length(s1121)
    for j=36:size(M1region2day2_difference,2)
        if M1region2day2_difference(i,j)<0
            unbiased_currentoutcome1121(i,j-34)=-unbiased_currentoutcome1121(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1121=mean(unbiased_currentoutcome1121(:,5:20),2);
unbiased_currentoutcome_meanvalue1121(:,2)=s1121;
unbiased_currentoutcome_meanvalue1121(:,3)=2;
unbiased_currentoutcome_meanvalue1121(:,4)=2; %region
unbiased_currentoutcome_meanvalue1121(:,5)=1; %monkey

iscell=readNPY('L:\Monkey1\region2\20211123\iscell.npy');
s1123=find(iscell(:,1)==1);
load('L:\Monkey1\region2\20211123\judge_the_types_of_neurons_on_each_frame_20211123.mat');

for i=1:length(s1123)
    for j=36:size(M1region2day3_difference,2)
        if M1region2day3_difference(i,j)<0
            unbiased_currentoutcome1123(i,j-34)=-unbiased_currentoutcome1123(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1123=mean(unbiased_currentoutcome1123(:,5:20),2);
unbiased_currentoutcome_meanvalue1123(:,2)=s1123;
unbiased_currentoutcome_meanvalue1123(:,3)=3;
unbiased_currentoutcome_meanvalue1123(:,4)=2; %region
unbiased_currentoutcome_meanvalue1123(:,5)=1; %monkey

iscell=readNPY('L:\Monkey1\region2\20211124\iscell.npy');
s1124=find(iscell(:,1)==1);
load('L:\Monkey1\region2\20211124\judge_the_types_of_neurons_on_each_frame_20211124.mat');

for i=1:length(s1124)
    for j=36:size(M1region2day4_difference,2)
        if M1region2day4_difference(i,j)<0
            unbiased_currentoutcome1124(i,j-34)=-unbiased_currentoutcome1124(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1124=mean(unbiased_currentoutcome1124(:,5:20),2);
unbiased_currentoutcome_meanvalue1124(:,2)=s1124;
unbiased_currentoutcome_meanvalue1124(:,3)=4;
unbiased_currentoutcome_meanvalue1124(:,4)=2; %region
unbiased_currentoutcome_meanvalue1124(:,5)=1; %monkey


unbiased_currentoutcome_meanvalue_m1region2=[unbiased_currentoutcome_meanvalue1120;unbiased_currentoutcome_meanvalue1121;unbiased_currentoutcome_meanvalue1123;unbiased_currentoutcome_meanvalue1124;];


%monkey1_region3

iscell=readNPY('L:\Monkey1\region3\20211125\iscell.npy');
s1125=find(iscell(:,1)==1);
load('L:\Monkey1\region3\20211125\judge_the_types_of_neurons_on_each_frame_20211125.mat');

for i=1:length(s1125)
    for j=36:size(M1region3day1_difference,2)
        if M1region3day1_difference(i,j)<0
            unbiased_currentoutcome1125(i,j-34)=-unbiased_currentoutcome1125(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1125=mean(unbiased_currentoutcome1125(:,5:20),2);
unbiased_currentoutcome_meanvalue1125(:,2)=s1125;
unbiased_currentoutcome_meanvalue1125(:,3)=1;
unbiased_currentoutcome_meanvalue1125(:,4)=3; %region
unbiased_currentoutcome_meanvalue1125(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region3\20211126\iscell.npy');
s1126=find(iscell(:,1)==1);
load('L:\Monkey1\region3\20211126\judge_the_types_of_neurons_on_each_frame_20211126.mat');

for i=1:length(s1126)
    for j=36:size(M1region3day2_difference,2)
        if M1region3day2_difference(i,j)<0
            unbiased_currentoutcome1126(i,j-34)=-unbiased_currentoutcome1126(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1126=mean(unbiased_currentoutcome1126(:,5:20),2);
unbiased_currentoutcome_meanvalue1126(:,2)=s1126;
unbiased_currentoutcome_meanvalue1126(:,3)=2;
unbiased_currentoutcome_meanvalue1126(:,4)=3; %region
unbiased_currentoutcome_meanvalue1126(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region3\20211127\iscell.npy');
s1127=find(iscell(:,1)==1);
load('L:\Monkey1\region3\20211127\judge_the_types_of_neurons_on_each_frame_20211127.mat');

for i=1:length(s1127)
    for j=36:size(M1region3day3_difference,2)
        if M1region3day3_difference(i,j)<0
            unbiased_currentoutcome1127(i,j-34)=-unbiased_currentoutcome1127(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1127=mean(unbiased_currentoutcome1127(:,5:20),2);
unbiased_currentoutcome_meanvalue1127(:,2)=s1127;
unbiased_currentoutcome_meanvalue1127(:,3)=3;
unbiased_currentoutcome_meanvalue1127(:,4)=3; %region
unbiased_currentoutcome_meanvalue1127(:,5)=1; %monkey



unbiased_currentoutcome_meanvalue_m1region3=[unbiased_currentoutcome_meanvalue1125;unbiased_currentoutcome_meanvalue1126;unbiased_currentoutcome_meanvalue1127];

%monkey1_region4
iscell=readNPY('L:\Monkey1\region4\20211129\iscell.npy');
s1129=find(iscell(:,1)==1);
load('L:\Monkey1\region4\20211129\judge_the_types_of_neurons_on_each_frame_20211129.mat');

for i=1:length(s1129)
    for j=36:size(M1region4day1_difference,2)
        if M1region4day1_difference(i,j)<0
            unbiased_currentoutcome1129(i,j-34)=-unbiased_currentoutcome1129(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1129=mean(unbiased_currentoutcome1129(:,5:20),2);
unbiased_currentoutcome_meanvalue1129(:,2)=s1129;
unbiased_currentoutcome_meanvalue1129(:,3)=1;
unbiased_currentoutcome_meanvalue1129(:,4)=4; %region
unbiased_currentoutcome_meanvalue1129(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region4\20211201\iscell.npy');
s1201=find(iscell(:,1)==1);
load('L:\Monkey1\region4\20211201\judge_the_types_of_neurons_on_each_frame_20211201.mat');

for i=1:length(s1201)
    for j=36:size(M1region4day2_difference,2)
        if M1region4day2_difference(i,j)<0
            unbiased_currentoutcome1201(i,j-34)=-unbiased_currentoutcome1201(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1201=mean(unbiased_currentoutcome1201(:,5:20),2);
unbiased_currentoutcome_meanvalue1201(:,2)=s1201;
unbiased_currentoutcome_meanvalue1201(:,3)=2;
unbiased_currentoutcome_meanvalue1201(:,4)=4; %region
unbiased_currentoutcome_meanvalue1201(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region4\20211202\iscell.npy');
s1202=find(iscell(:,1)==1);
load('L:\Monkey1\region4\20211202\judge_the_types_of_neurons_on_each_frame_20211202.mat');

for i=1:length(s1202)
    for j=36:size(M1region4day3_difference,2)
        if M1region4day3_difference(i,j)<0
            unbiased_currentoutcome1202(i,j-34)=-unbiased_currentoutcome1202(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1202=mean(unbiased_currentoutcome1202(:,5:20),2);
unbiased_currentoutcome_meanvalue1202(:,2)=s1202;
unbiased_currentoutcome_meanvalue1202(:,3)=3;
unbiased_currentoutcome_meanvalue1202(:,4)=4; %region
unbiased_currentoutcome_meanvalue1202(:,5)=1; %monkey

unbiased_currentoutcome_meanvalue_m1region4=[unbiased_currentoutcome_meanvalue1129;unbiased_currentoutcome_meanvalue1201;unbiased_currentoutcome_meanvalue1202];


%monkey1_region5

iscell=readNPY('L:\Monkey1\region5\20211203\iscell.npy');
s1203=find(iscell(:,1)==1);
load('L:\Monkey1\region5\20211203\judge_the_types_of_neurons_on_each_frame_20211203.mat');

for i=1:length(s1203)
    for j=36:size(M1region5day1_difference,2)
        if M1region5day1_difference(i,j)<0
            unbiased_currentoutcome1203(i,j-34)=-unbiased_currentoutcome1203(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1203=mean(unbiased_currentoutcome1203(:,5:20),2);
unbiased_currentoutcome_meanvalue1203(:,2)=s1203;
unbiased_currentoutcome_meanvalue1203(:,3)=1;
unbiased_currentoutcome_meanvalue1203(:,4)=5; %region
unbiased_currentoutcome_meanvalue1203(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region5\20211204\iscell.npy');
s1204=find(iscell(:,1)==1);
load('L:\Monkey1\region5\20211204\judge_the_types_of_neurons_on_each_frame_20211204.mat');

for i=1:length(s1204)
    for j=36:size(M1region5day2_difference,2)
        if M1region5day2_difference(i,j)<0
            unbiased_currentoutcome1204(i,j-34)=-unbiased_currentoutcome1204(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1204=mean(unbiased_currentoutcome1204(:,5:20),2);
unbiased_currentoutcome_meanvalue1204(:,2)=s1204;
unbiased_currentoutcome_meanvalue1204(:,3)=2;
unbiased_currentoutcome_meanvalue1204(:,4)=5; %region
unbiased_currentoutcome_meanvalue1204(:,5)=1; %monkey


unbiased_currentoutcome_meanvalue_m1region5=[unbiased_currentoutcome_meanvalue1203;unbiased_currentoutcome_meanvalue1204];
%monkey1_region6

iscell=readNPY('L:\Monkey1\region6\20211217\iscell.npy');
s1217=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211217\judge_the_types_of_neurons_on_each_frame_20211217.mat');

for i=1:length(s1217)
    for j=36:size(M1region6day1_difference,2)
        if M1region6day1_difference(i,j)<0
            unbiased_currentoutcome1217(i,j-34)=-unbiased_currentoutcome1217(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1217=mean(unbiased_currentoutcome1217(:,5:20),2);
unbiased_currentoutcome_meanvalue1217(:,2)=s1217;
unbiased_currentoutcome_meanvalue1217(:,3)=1;
unbiased_currentoutcome_meanvalue1217(:,4)=6; %region
unbiased_currentoutcome_meanvalue1217(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region6\20211218\iscell.npy');
s1218=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211218\judge_the_types_of_neurons_on_each_frame_20211218.mat');

for i=1:length(s1218)
    for j=36:size(M1region6day2_difference,2)
        if M1region6day2_difference(i,j)<0
            unbiased_currentoutcome1218(i,j-34)=-unbiased_currentoutcome1218(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1218=mean(unbiased_currentoutcome1218(:,5:20),2);
unbiased_currentoutcome_meanvalue1218(:,2)=s1218;
unbiased_currentoutcome_meanvalue1218(:,3)=2;
unbiased_currentoutcome_meanvalue1218(:,4)=6; %region
unbiased_currentoutcome_meanvalue1218(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region6\20211219\iscell.npy');
s1219=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211219\judge_the_types_of_neurons_on_each_frame_20211219.mat');

for i=1:length(s1219)
    for j=36:size(M1region6day3_difference,2)
        if M1region6day3_difference(i,j)<0
            unbiased_currentoutcome1219(i,j-34)=-unbiased_currentoutcome1219(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1219=mean(unbiased_currentoutcome1219(:,5:20),2);
unbiased_currentoutcome_meanvalue1219(:,2)=s1219;
unbiased_currentoutcome_meanvalue1219(:,3)=3;
unbiased_currentoutcome_meanvalue1219(:,4)=6; %region
unbiased_currentoutcome_meanvalue1219(:,5)=1; %monkey



iscell=readNPY('L:\Monkey1\region6\20211220\iscell.npy');
s1220=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211220\judge_the_types_of_neurons_on_each_frame_20211220.mat');

for i=1:length(s1220)
    for j=36:size(M1region6day4_difference,2)
        if M1region6day4_difference(i,j)<0
            unbiased_currentoutcome1220(i,j-34)=-unbiased_currentoutcome1220(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1220=mean(unbiased_currentoutcome1220(:,5:20),2);
unbiased_currentoutcome_meanvalue1220(:,2)=s1220;
unbiased_currentoutcome_meanvalue1220(:,3)=4;
unbiased_currentoutcome_meanvalue1220(:,4)=6; %region
unbiased_currentoutcome_meanvalue1220(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region6\20211221\iscell.npy');
s1221=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211221\judge_the_types_of_neurons_on_each_frame_20211221.mat');

for i=1:length(s1221)
    for j=36:size(M1region6day5_difference,2)
        if M1region6day5_difference(i,j)<0
            unbiased_currentoutcome1221(i,j-34)=-unbiased_currentoutcome1221(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1221=mean(unbiased_currentoutcome1221(:,5:20),2);
unbiased_currentoutcome_meanvalue1221(:,2)=s1221;
unbiased_currentoutcome_meanvalue1221(:,3)=5;
unbiased_currentoutcome_meanvalue1221(:,4)=6; %region
unbiased_currentoutcome_meanvalue1221(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region6\20211222\iscell.npy');
s1222=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211222\judge_the_types_of_neurons_on_each_frame_20211222.mat');

for i=1:length(s1222)
    for j=36:size(M1region6day6_difference,2)
        if M1region6day6_difference(i,j)<0
            unbiased_currentoutcome1222(i,j-34)=-unbiased_currentoutcome1222(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1222=mean(unbiased_currentoutcome1222(:,5:20),2);
unbiased_currentoutcome_meanvalue1222(:,2)=s1222;
unbiased_currentoutcome_meanvalue1222(:,3)=6;
unbiased_currentoutcome_meanvalue1222(:,4)=6; %region
unbiased_currentoutcome_meanvalue1222(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region6\20211223\iscell.npy');
s1223=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211223\judge_the_types_of_neurons_on_each_frame_20211223.mat');

for i=1:length(s1223)
    for j=36:size(M1region6day7_difference,2)
        if M1region6day7_difference(i,j)<0
            unbiased_currentoutcome1223(i,j-34)=-unbiased_currentoutcome1223(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1223=mean(unbiased_currentoutcome1223(:,5:20),2);
unbiased_currentoutcome_meanvalue1223(:,2)=s1223;
unbiased_currentoutcome_meanvalue1223(:,3)=7;
unbiased_currentoutcome_meanvalue1223(:,4)=6; %region
unbiased_currentoutcome_meanvalue1223(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region6\20211224\iscell.npy');
s1224=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211224\judge_the_types_of_neurons_on_each_frame_20211224.mat');

for i=1:length(s1224)
    for j=36:size(M1region6day8_difference,2)
        if M1region6day8_difference(i,j)<0
            unbiased_currentoutcome1224(i,j-34)=-unbiased_currentoutcome1224(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1224=mean(unbiased_currentoutcome1224(:,5:20),2);
unbiased_currentoutcome_meanvalue1224(:,2)=s1224;
unbiased_currentoutcome_meanvalue1224(:,3)=8;
unbiased_currentoutcome_meanvalue1224(:,4)=6; %region
unbiased_currentoutcome_meanvalue1224(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region6\20211225\iscell.npy');
s1225=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211225\judge_the_types_of_neurons_on_each_frame_20211225.mat');

for i=1:length(s1225)
    for j=36:size(M1region6day9_difference,2)
        if M1region6day9_difference(i,j)<0
            unbiased_currentoutcome1225(i,j-34)=-unbiased_currentoutcome1225(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1225=mean(unbiased_currentoutcome1225(:,5:20),2);
unbiased_currentoutcome_meanvalue1225(:,2)=s1225;
unbiased_currentoutcome_meanvalue1225(:,3)=9;
unbiased_currentoutcome_meanvalue1225(:,4)=6; %region
unbiased_currentoutcome_meanvalue1225(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region6\20211226\iscell.npy');
s1226=find(iscell(:,1)==1);
load('L:\Monkey1\region6\20211226\judge_the_types_of_neurons_on_each_frame_20211226.mat');

for i=1:length(s1226)
    for j=36:size(M1region6day10_difference,2)
        if M1region6day10_difference(i,j)<0
            unbiased_currentoutcome1226(i,j-34)=-unbiased_currentoutcome1226(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue1226=mean(unbiased_currentoutcome1226(:,5:20),2);
unbiased_currentoutcome_meanvalue1226(:,2)=s1226;
unbiased_currentoutcome_meanvalue1226(:,3)=10;
unbiased_currentoutcome_meanvalue1226(:,4)=6; %region
unbiased_currentoutcome_meanvalue1226(:,5)=1; %monkey



unbiased_currentoutcome_meanvalue_m1region6=[unbiased_currentoutcome_meanvalue1217;unbiased_currentoutcome_meanvalue1218;unbiased_currentoutcome_meanvalue1219;unbiased_currentoutcome_meanvalue1220;unbiased_currentoutcome_meanvalue1221;unbiased_currentoutcome_meanvalue1222;unbiased_currentoutcome_meanvalue1223;unbiased_currentoutcome_meanvalue1224;unbiased_currentoutcome_meanvalue1225;unbiased_currentoutcome_meanvalue1226];


%monkey1_region7


iscell=readNPY('L:\Monkey1\region7\20220115\iscell.npy');
s0115=find(iscell(:,1)==1);
load('L:\Monkey1\region7\20220115\judge_the_types_of_neurons_on_each_frame_20220115.mat');

for i=1:length(s0115)
    for j=36:size(M1region7day1_difference,2)
        if M1region7day1_difference(i,j)<0
            unbiased_currentoutcome0115(i,j-34)=-unbiased_currentoutcome0115(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0115=mean(unbiased_currentoutcome0115(:,5:20),2);
unbiased_currentoutcome_meanvalue0115(:,2)=s0115;
unbiased_currentoutcome_meanvalue0115(:,3)=1;
unbiased_currentoutcome_meanvalue0115(:,4)=7; %region
unbiased_currentoutcome_meanvalue0115(:,5)=1; %monkey

iscell=readNPY('L:\Monkey1\region7\20220116\iscell.npy');
s0116=find(iscell(:,1)==1);
load('L:\Monkey1\region7\20220116\judge_the_types_of_neurons_on_each_frame_20220116.mat');

for i=1:length(s0116)
    for j=36:size(M1region7day2_difference,2)
        if M1region7day2_difference(i,j)<0
            unbiased_currentoutcome0116(i,j-34)=-unbiased_currentoutcome0116(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0116=mean(unbiased_currentoutcome0116(:,5:20),2);
unbiased_currentoutcome_meanvalue0116(:,2)=s0116;
unbiased_currentoutcome_meanvalue0116(:,3)=2;
unbiased_currentoutcome_meanvalue0116(:,4)=7; %region
unbiased_currentoutcome_meanvalue0116(:,5)=1; %monkey


iscell=readNPY('L:\Monkey1\region7\20220117\iscell.npy');
s0117=find(iscell(:,1)==1);
load('L:\Monkey1\region7\20220117\judge_the_types_of_neurons_on_each_frame_20220117.mat');

for i=1:length(s0117)
    for j=36:size(M1region7day3_difference,2)
        if M1region7day3_difference(i,j)<0
            unbiased_currentoutcome0117(i,j-34)=-unbiased_currentoutcome0117(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0117=mean(unbiased_currentoutcome0117(:,5:20),2);
unbiased_currentoutcome_meanvalue0117(:,2)=s0117;
unbiased_currentoutcome_meanvalue0117(:,3)=3;
unbiased_currentoutcome_meanvalue0117(:,4)=7; %region
unbiased_currentoutcome_meanvalue0117(:,5)=1; %monkey



unbiased_currentoutcome_meanvalue_m1region7=[unbiased_currentoutcome_meanvalue0115;unbiased_currentoutcome_meanvalue0116;unbiased_currentoutcome_meanvalue0117];



%%%%monkey2_region1



unbiased_currentoutcome_meanvalue=[unbiased_currentoutcome_meanvalue_m1region1;unbiased_currentoutcome_meanvalue_m1region2;unbiased_currentoutcome_meanvalue_m1region3;unbiased_currentoutcome_meanvalue_m1region4;unbiased_currentoutcome_meanvalue_m1region5;
    unbiased_currentoutcome_meanvalue_m1region6;unbiased_currentoutcome_meanvalue_m1region7;];

unbiased_currentoutcome_meanvalue_sort=sortrows(unbiased_currentoutcome_meanvalue,[1],'descend');
for i=1:length(unbiased_currentoutcome_meanvalue_sort)
  
        if unbiased_currentoutcome_meanvalue_sort(i,4)==1
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1108(find(s1108==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1109(find(s1109==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1110(find(s1110==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1111(find(s1111==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==5
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1112(find(s1112==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==6
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1113(find(s1113==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==7
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1115(find(s1115==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==8
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1116(find(s1116==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==9
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1117(find(s1117==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==10
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1118(find(s1118==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==11
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1119(find(s1119==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==12
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1122(find(s1122==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==2
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1120(find(s1120==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1121(find(s1121==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1123(find(s1123==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1124(find(s1124==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==3
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1125(find(s1125==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1126(find(s1126==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1127(find(s1127==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==4
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1129(find(s1129==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1201(find(s1201==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1202(find(s1202==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==5
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1203(find(s1203==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1204(find(s1204==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==6
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1217(find(s1217==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1218(find(s1218==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1219(find(s1219==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1220(find(s1220==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==5
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1221(find(s1221==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==6
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1222(find(s1222==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==7
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1223(find(s1223==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==8
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1224(find(s1224==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==9
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1225(find(s1225==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==10
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome1226(find(s1226==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==11
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==7
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0115(find(s0115==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0116(find(s0116==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0117(find(s0117==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        end
        
   
end


h=heatmap(unbiased_FEV_sort(:,2:20),'Colormap',jet);
grid off;
h.ColorLimits=[-0.05 0.05];


