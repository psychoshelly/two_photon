


load('L:\Monkey2\region1\20220426\unbiased_currentoutcome0426.mat');
load('L:\Monkey2\region1\20220427\unbiased_currentoutcome0427.mat');
load('L:\Monkey2\region1\20220428\unbiased_currentoutcome0428.mat');
load('L:\Monkey2\region1\20220429\unbiased_currentoutcome0429.mat');
load('L:\Monkey2\region1\20220430\unbiased_currentoutcome0430.mat');
load('L:\Monkey2\region1\20220501\unbiased_currentoutcome0501.mat');
load('L:\Monkey2\region1\20220502\unbiased_currentoutcome0502.mat');


load('L:\Monkey2\region2\20220503\unbiased_currentoutcome0503.mat');
load('L:\Monkey2\region2\20220504\unbiased_currentoutcome0504.mat');
load('L:\Monkey2\region2\20220505\unbiased_currentoutcome0505.mat');
load('L:\Monkey2\region2\20220506\unbiased_currentoutcome0506.mat');

load('L:\Monkey2\region3\20220507\unbiased_currentoutcome0507.mat');
load('L:\Monkey2\region3\20220508\unbiased_currentoutcome0508.mat');
load('L:\Monkey2\region3\20220509\unbiased_currentoutcome0509.mat');
load('L:\Monkey2\region3\20220510\unbiased_currentoutcome0510.mat');
load('L:\Monkey2\region3\20220511\unbiased_currentoutcome0511.mat');
load('L:\Monkey2\region3\20220512\unbiased_currentoutcome0512.mat');
load('L:\Monkey2\region3\20220513\unbiased_currentoutcome0513.mat');

load('L:\Monkey2\region4\20220517\unbiased_currentoutcome0517.mat');
load('L:\Monkey2\region4\20220518\unbiased_currentoutcome0518.mat');
load('L:\Monkey2\region4\20220519\unbiased_currentoutcome0519.mat');

load('L:\Monkey2\region5\20220524\unbiased_currentoutcome0524.mat');
load('L:\Monkey2\region5\20220526\unbiased_currentoutcome0526.mat');
load('L:\Monkey2\region5\20220527\unbiased_currentoutcome0527.mat');
load('L:\Monkey2\region5\20220528\unbiased_currentoutcome0528.mat');
load('L:\Monkey2\region5\20220529\unbiased_currentoutcome0529.mat');
load('L:\Monkey2\region5\20220530\unbiased_currentoutcome0530.mat');

load('L:\Monkey2\region6\20220610\unbiased_currentoutcome0610.mat');
load('L:\Monkey2\region6\20220611\unbiased_currentoutcome0611.mat');
load('L:\Monkey2\region6\20220612\unbiased_currentoutcome0612.mat');
load('L:\Monkey2\region6\20220613\unbiased_currentoutcome0613.mat');

load('L:\Monkey2\region7\20220618\unbiased_currentoutcome0618.mat');
load('L:\Monkey2\region7\20220619\unbiased_currentoutcome0619.mat');
load('L:\Monkey2\region7\20220620\unbiased_currentoutcome0620.mat');
load('L:\Monkey2\region7\20220621\unbiased_currentoutcome0621.mat');
load('L:\Monkey2\region7\20220622\unbiased_currentoutcome0622.mat');
load('L:\Monkey2\region7\20220623\unbiased_currentoutcome0623.mat');

load('L:\Monkey2\region8\20220624\unbiased_currentoutcome0624.mat');
load('L:\Monkey2\region8\20220627\unbiased_currentoutcome0627.mat');
load('L:\Monkey2\region8\20220628\unbiased_currentoutcome0628.mat');
load('L:\Monkey2\region8\20220629\unbiased_currentoutcome0629.mat');
load('L:\Monkey2\region8\20220630\unbiased_currentoutcome0630.mat');




iscell=readNPY('L:\Monkey2\region1\20220426\iscell.npy');
s0426=find(iscell(:,1)==1);
load('L:\Monkey2\region1\20220426\judge_the_types_of_neurons_on_each_frame_20220426.mat');

for i=1:length(s0426)
    for j=36:size(M2region1day1_difference,2)
        if M2region1day1_difference(i,j)<0
            unbiased_currentoutcome0426(i,j-34)=-unbiased_currentoutcome0426(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0426=mean(unbiased_currentoutcome0426(:,5:20),2);
unbiased_currentoutcome_meanvalue0426(:,2)=s0426;
unbiased_currentoutcome_meanvalue0426(:,3)=1;
unbiased_currentoutcome_meanvalue0426(:,4)=1; %region
unbiased_currentoutcome_meanvalue0426(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region1\20220427\iscell.npy');
s0427=find(iscell(:,1)==1);
load('L:\Monkey2\region1\20220427\judge_the_types_of_neurons_on_each_frame_20220427.mat');

for i=1:length(s0427)
    for j=36:size(M2region1day2_difference,2)
        if M2region1day2_difference(i,j)<0
            unbiased_currentoutcome0427(i,j-34)=-unbiased_currentoutcome0427(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0427=mean(unbiased_currentoutcome0427(:,5:20),2);
unbiased_currentoutcome_meanvalue0427(:,2)=s0427;
unbiased_currentoutcome_meanvalue0427(:,3)=2;
unbiased_currentoutcome_meanvalue0427(:,4)=1; %region
unbiased_currentoutcome_meanvalue0427(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region1\20220428\iscell.npy');
s0428=find(iscell(:,1)==1);
load('L:\Monkey2\region1\20220428\judge_the_types_of_neurons_on_each_frame_20220428.mat');

for i=1:length(s0428)
    for j=36:size(M2region1day3_difference,2)
        if M2region1day3_difference(i,j)<0
            unbiased_currentoutcome0428(i,j-34)=-unbiased_currentoutcome0428(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0428=mean(unbiased_currentoutcome0428(:,5:20),2);
unbiased_currentoutcome_meanvalue0428(:,2)=s0428;
unbiased_currentoutcome_meanvalue0428(:,3)=3;
unbiased_currentoutcome_meanvalue0428(:,4)=1; %region
unbiased_currentoutcome_meanvalue0428(:,5)=2; %monkey

iscell=readNPY('L:\Monkey2\region1\20220429\iscell.npy');
s0429=find(iscell(:,1)==1);
load('L:\Monkey2\region1\20220429\judge_the_types_of_neurons_on_each_frame_20220429.mat');

for i=1:length(s0429)
    for j=36:size(M2region1day4_difference,2)
        if M2region1day4_difference(i,j)<0
            unbiased_currentoutcome0429(i,j-34)=-unbiased_currentoutcome0429(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0429=mean(unbiased_currentoutcome0429(:,5:20),2);
unbiased_currentoutcome_meanvalue0429(:,2)=s0429;
unbiased_currentoutcome_meanvalue0429(:,3)=4;
unbiased_currentoutcome_meanvalue0429(:,4)=1; %region
unbiased_currentoutcome_meanvalue0429(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region1\20220430\iscell.npy');
s0430=find(iscell(:,1)==1);
load('L:\Monkey2\region1\20220430\judge_the_types_of_neurons_on_each_frame_20220430.mat');

for i=1:length(s0430)
    for j=36:size(M2region1day5_difference,2)
        if M2region1day5_difference(i,j)<0
            unbiased_currentoutcome0430(i,j-34)=-unbiased_currentoutcome0430(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0430=mean(unbiased_currentoutcome0430(:,5:20),2);
unbiased_currentoutcome_meanvalue0430(:,2)=s0430;
unbiased_currentoutcome_meanvalue0430(:,3)=5;
unbiased_currentoutcome_meanvalue0430(:,4)=1; %region
unbiased_currentoutcome_meanvalue0430(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region1\20220501\iscell.npy');
s0501=find(iscell(:,1)==1);
load('L:\Monkey2\region1\20220501\judge_the_types_of_neurons_on_each_frame_20220501.mat');

for i=1:length(s0501)
    for j=36:size(M2region1day6_difference,2)
        if M2region1day6_difference(i,j)<0
            unbiased_currentoutcome0501(i,j-34)=-unbiased_currentoutcome0501(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0501=mean(unbiased_currentoutcome0501(:,5:20),2);
unbiased_currentoutcome_meanvalue0501(:,2)=s0501;
unbiased_currentoutcome_meanvalue0501(:,3)=6;
unbiased_currentoutcome_meanvalue0501(:,4)=1; %region
unbiased_currentoutcome_meanvalue0501(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region1\20220502\iscell.npy');
s0502=find(iscell(:,1)==1);
load('L:\Monkey2\region1\20220502\judge_the_types_of_neurons_on_each_frame_20220502.mat');

for i=1:length(s0502)
    for j=36:size(M2region1day7_difference,2)
        if M2region1day7_difference(i,j)<0
            unbiased_currentoutcome0502(i,j-34)=-unbiased_currentoutcome0502(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0502=mean(unbiased_currentoutcome0502(:,5:20),2);
unbiased_currentoutcome_meanvalue0502(:,2)=s0502;
unbiased_currentoutcome_meanvalue0502(:,3)=7;
unbiased_currentoutcome_meanvalue0502(:,4)=1; %region
unbiased_currentoutcome_meanvalue0502(:,5)=2; %monkey

unbiased_currentoutcome_meanvalue_m2region1=[unbiased_currentoutcome_meanvalue0426;unbiased_currentoutcome_meanvalue0427;unbiased_currentoutcome_meanvalue0428;unbiased_currentoutcome_meanvalue0429;unbiased_currentoutcome_meanvalue0430;unbiased_currentoutcome_meanvalue0501;unbiased_currentoutcome_meanvalue0502];

%monkey2region2

iscell=readNPY('L:\Monkey2\region2\20220503\iscell.npy');
s0503=find(iscell(:,1)==1);
load('L:\Monkey2\region2\20220503\judge_the_types_of_neurons_on_each_frame_20220503.mat');

for i=1:length(s0503)
    for j=36:size(M2region2day1_difference,2)
        if M2region2day1_difference(i,j)<0
            unbiased_currentoutcome0503(i,j-34)=-unbiased_currentoutcome0503(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0503=mean(unbiased_currentoutcome0503(:,5:20),2);
unbiased_currentoutcome_meanvalue0503(:,2)=s0503;
unbiased_currentoutcome_meanvalue0503(:,3)=1;
unbiased_currentoutcome_meanvalue0503(:,4)=2; %region
unbiased_currentoutcome_meanvalue0503(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region2\20220504\iscell.npy');
s0504=find(iscell(:,1)==1);
load('L:\Monkey2\region2\20220504\judge_the_types_of_neurons_on_each_frame_20220504.mat');

for i=1:length(s0504)
    for j=36:size(M2region2day2_difference,2)
        if M2region2day2_difference(i,j)<0
            unbiased_currentoutcome0504(i,j-34)=-unbiased_currentoutcome0504(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0504=mean(unbiased_currentoutcome0504(:,5:20),2);
unbiased_currentoutcome_meanvalue0504(:,2)=s0504;
unbiased_currentoutcome_meanvalue0504(:,3)=2;
unbiased_currentoutcome_meanvalue0504(:,4)=2; %region
unbiased_currentoutcome_meanvalue0504(:,5)=2; %monkey

iscell=readNPY('L:\Monkey2\region2\20220505\iscell.npy');
s0505=find(iscell(:,1)==1);
load('L:\Monkey2\region2\20220505\judge_the_types_of_neurons_on_each_frame_20220505.mat');

for i=1:length(s0505)
    for j=36:size(M2region2day3_difference,2)
        if M2region2day3_difference(i,j)<0
            unbiased_currentoutcome0505(i,j-34)=-unbiased_currentoutcome0505(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0505=mean(unbiased_currentoutcome0505(:,5:20),2);
unbiased_currentoutcome_meanvalue0505(:,2)=s0505;
unbiased_currentoutcome_meanvalue0505(:,3)=3;
unbiased_currentoutcome_meanvalue0505(:,4)=2; %region
unbiased_currentoutcome_meanvalue0505(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region2\20220506\iscell.npy');
s0506=find(iscell(:,1)==1);
load('L:\Monkey2\region2\20220506\judge_the_types_of_neurons_on_each_frame_20220506.mat');

for i=1:length(s0506)
    for j=36:size(M2region2day4_difference,2)
        if M2region2day4_difference(i,j)<0
            unbiased_currentoutcome0506(i,j-34)=-unbiased_currentoutcome0506(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0506=mean(unbiased_currentoutcome0506(:,5:20),2);
unbiased_currentoutcome_meanvalue0506(:,2)=s0506;
unbiased_currentoutcome_meanvalue0506(:,3)=4;
unbiased_currentoutcome_meanvalue0506(:,4)=2; %region
unbiased_currentoutcome_meanvalue0506(:,5)=2; %monkey


unbiased_currentoutcome_meanvalue_m2region2=[unbiased_currentoutcome_meanvalue0503;unbiased_currentoutcome_meanvalue0504;unbiased_currentoutcome_meanvalue0505;unbiased_currentoutcome_meanvalue0506];


%monkey2 region3

iscell=readNPY('L:\Monkey2\region3\20220507\iscell.npy');
s0507=find(iscell(:,1)==1);
load('L:\Monkey2\region3\20220507\judge_the_types_of_neurons_on_each_frame_20220507.mat');

for i=1:length(s0507)
    for j=36:size(M2region3day1_difference,2)
        if M2region3day1_difference(i,j)<0
            unbiased_currentoutcome0507(i,j-34)=-unbiased_currentoutcome0507(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0507=mean(unbiased_currentoutcome0507(:,5:20),2);
unbiased_currentoutcome_meanvalue0507(:,2)=s0507;
unbiased_currentoutcome_meanvalue0507(:,3)=1;
unbiased_currentoutcome_meanvalue0507(:,4)=3; %region
unbiased_currentoutcome_meanvalue0507(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region3\20220508\iscell.npy');
s0508=find(iscell(:,1)==1);
load('L:\Monkey2\region3\20220508\judge_the_types_of_neurons_on_each_frame_20220508.mat');

for i=1:length(s0508)
    for j=36:size(M2region3day2_difference,2)
        if M2region3day2_difference(i,j)<0
            unbiased_currentoutcome0508(i,j-34)=-unbiased_currentoutcome0508(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0508=mean(unbiased_currentoutcome0508(:,5:20),2);
unbiased_currentoutcome_meanvalue0508(:,2)=s0508;
unbiased_currentoutcome_meanvalue0508(:,3)=2;
unbiased_currentoutcome_meanvalue0508(:,4)=3; %region
unbiased_currentoutcome_meanvalue0508(:,5)=2; %monkey

iscell=readNPY('L:\Monkey2\region3\20220509\iscell.npy');
s0509=find(iscell(:,1)==1);
load('L:\Monkey2\region3\20220509\judge_the_types_of_neurons_on_each_frame_20220509.mat');

for i=1:length(s0509)
    for j=36:size(M2region3day3_difference,2)
        if M2region3day3_difference(i,j)<0
            unbiased_currentoutcome0509(i,j-34)=-unbiased_currentoutcome0509(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0509=mean(unbiased_currentoutcome0509(:,5:20),2);
unbiased_currentoutcome_meanvalue0509(:,2)=s0509;
unbiased_currentoutcome_meanvalue0509(:,3)=3;
unbiased_currentoutcome_meanvalue0509(:,4)=3; %region
unbiased_currentoutcome_meanvalue0509(:,5)=2; %monkey

iscell=readNPY('L:\Monkey2\region3\20220510\iscell.npy');
s0510=find(iscell(:,1)==1);
load('L:\Monkey2\region3\20220510\judge_the_types_of_neurons_on_each_frame_20220510.mat');

for i=1:length(s0510)
    for j=36:size(M2region3day4_difference,2)
        if M2region3day4_difference(i,j)<0
            unbiased_currentoutcome0510(i,j-34)=-unbiased_currentoutcome0510(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0510=mean(unbiased_currentoutcome0510(:,5:20),2);
unbiased_currentoutcome_meanvalue0510(:,2)=s0510;
unbiased_currentoutcome_meanvalue0510(:,3)=4;
unbiased_currentoutcome_meanvalue0510(:,4)=3; %region
unbiased_currentoutcome_meanvalue0510(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region3\20220511\iscell.npy');
s0511=find(iscell(:,1)==1);
load('L:\Monkey2\region3\20220511\judge_the_types_of_neurons_on_each_frame_20220511.mat');

for i=1:length(s0511)
    for j=36:size(M2region3day5_difference,2)
        if M2region3day5_difference(i,j)<0
            unbiased_currentoutcome0511(i,j-34)=-unbiased_currentoutcome0511(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0511=mean(unbiased_currentoutcome0511(:,5:20),2);
unbiased_currentoutcome_meanvalue0511(:,2)=s0511;
unbiased_currentoutcome_meanvalue0511(:,3)=5;
unbiased_currentoutcome_meanvalue0511(:,4)=3; %region
unbiased_currentoutcome_meanvalue0511(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region3\20220512\iscell.npy');
s0512=find(iscell(:,1)==1);
load('L:\Monkey2\region3\20220512\judge_the_types_of_neurons_on_each_frame_20220512.mat');

for i=1:length(s0512)
    for j=36:size(M2region3day6_difference,2)
        if M2region3day6_difference(i,j)<0
            unbiased_currentoutcome0512(i,j-34)=-unbiased_currentoutcome0512(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0512=mean(unbiased_currentoutcome0512(:,5:20),2);
unbiased_currentoutcome_meanvalue0512(:,2)=s0512;
unbiased_currentoutcome_meanvalue0512(:,3)=6;
unbiased_currentoutcome_meanvalue0512(:,4)=3; %region
unbiased_currentoutcome_meanvalue0512(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region3\20220513\iscell.npy');
s0513=find(iscell(:,1)==1);
load('L:\Monkey2\region3\20220513\judge_the_types_of_neurons_on_each_frame_20220513.mat');

for i=1:length(s0513)
    for j=36:size(M2region3day7_difference,2)
        if M2region3day7_difference(i,j)<0
            unbiased_currentoutcome0513(i,j-34)=-unbiased_currentoutcome0513(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0513=mean(unbiased_currentoutcome0513(:,5:20),2);
unbiased_currentoutcome_meanvalue0513(:,2)=s0513;
unbiased_currentoutcome_meanvalue0513(:,3)=7;
unbiased_currentoutcome_meanvalue0513(:,4)=3; %region
unbiased_currentoutcome_meanvalue0513(:,5)=2; %monkey

unbiased_currentoutcome_meanvalue_m2region3=[unbiased_currentoutcome_meanvalue0507;unbiased_currentoutcome_meanvalue0508;unbiased_currentoutcome_meanvalue0509;unbiased_currentoutcome_meanvalue0510;unbiased_currentoutcome_meanvalue0511;unbiased_currentoutcome_meanvalue0512;unbiased_currentoutcome_meanvalue0513];

%region4

iscell=readNPY('L:\Monkey2\region4\20220517\iscell.npy');
s0517=find(iscell(:,1)==1);
load('L:\Monkey2\region4\20220517\judge_the_types_of_neurons_on_each_frame_20220517.mat');

for i=1:length(s0517)
    for j=36:size(M2region4day1_difference,2)
        if M2region4day1_difference(i,j)<0
            unbiased_currentoutcome0517(i,j-34)=-unbiased_currentoutcome0517(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0517=mean(unbiased_currentoutcome0517(:,5:20),2);
unbiased_currentoutcome_meanvalue0517(:,2)=s0517;
unbiased_currentoutcome_meanvalue0517(:,3)=1;
unbiased_currentoutcome_meanvalue0517(:,4)=4; %region
unbiased_currentoutcome_meanvalue0517(:,5)=2; %monkey



iscell=readNPY('L:\Monkey2\region4\20220518\iscell.npy');
s0518=find(iscell(:,1)==1);
load('L:\Monkey2\region4\20220518\judge_the_types_of_neurons_on_each_frame_20220518.mat');

for i=1:length(s0518)
    for j=36:size(M2region4day2_difference,2)
        if M2region4day2_difference(i,j)<0
            unbiased_currentoutcome0518(i,j-34)=-unbiased_currentoutcome0518(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0518=mean(unbiased_currentoutcome0518(:,5:20),2);
unbiased_currentoutcome_meanvalue0518(:,2)=s0518;
unbiased_currentoutcome_meanvalue0518(:,3)=2;
unbiased_currentoutcome_meanvalue0518(:,4)=4; %region
unbiased_currentoutcome_meanvalue0518(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region4\20220519\iscell.npy');
s0519=find(iscell(:,1)==1);
load('L:\Monkey2\region4\20220519\judge_the_types_of_neurons_on_each_frame_20220519.mat');

for i=1:length(s0519)
    for j=36:size(M2region4day3_difference,2)
        if M2region4day3_difference(i,j)<0
            unbiased_currentoutcome0519(i,j-34)=-unbiased_currentoutcome0519(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0519=mean(unbiased_currentoutcome0519(:,5:20),2);
unbiased_currentoutcome_meanvalue0519(:,2)=s0519;
unbiased_currentoutcome_meanvalue0519(:,3)=3;
unbiased_currentoutcome_meanvalue0519(:,4)=4; %region
unbiased_currentoutcome_meanvalue0519(:,5)=2; %monkey

unbiased_currentoutcome_meanvalue_m2region4=[unbiased_currentoutcome_meanvalue0517;unbiased_currentoutcome_meanvalue0518;unbiased_currentoutcome_meanvalue0519];


%region5

iscell=readNPY('L:\Monkey2\region5\20220524\iscell.npy');
s0524=find(iscell(:,1)==1);
load('L:\Monkey2\region5\20220524\judge_the_types_of_neurons_on_each_frame_20220524.mat');

for i=1:length(s0524)
    for j=36:size(M2region5day1_difference,2)
        if M2region5day1_difference(i,j)<0
            unbiased_currentoutcome0524(i,j-34)=-unbiased_currentoutcome0524(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0524=mean(unbiased_currentoutcome0524(:,5:20),2);
unbiased_currentoutcome_meanvalue0524(:,2)=s0524;
unbiased_currentoutcome_meanvalue0524(:,3)=1;
unbiased_currentoutcome_meanvalue0524(:,4)=5; %region
unbiased_currentoutcome_meanvalue0524(:,5)=2; %monkey

iscell=readNPY('L:\Monkey2\region5\20220526\iscell.npy');
s0526=find(iscell(:,1)==1);
load('L:\Monkey2\region5\20220526\judge_the_types_of_neurons_on_each_frame_20220526.mat');

for i=1:length(s0526)
    for j=36:size(M2region5day2_difference,2)
        if M2region5day2_difference(i,j)<0
            unbiased_currentoutcome0526(i,j-34)=-unbiased_currentoutcome0526(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0526=mean(unbiased_currentoutcome0526(:,5:20),2);
unbiased_currentoutcome_meanvalue0526(:,2)=s0526;
unbiased_currentoutcome_meanvalue0526(:,3)=2;
unbiased_currentoutcome_meanvalue0526(:,4)=5; %region
unbiased_currentoutcome_meanvalue0526(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region5\20220527\iscell.npy');
s0527=find(iscell(:,1)==1);
load('L:\Monkey2\region5\20220527\judge_the_types_of_neurons_on_each_frame_20220527.mat');

for i=1:length(s0527)
    for j=36:size(M2region5day3_difference,2)
        if M2region5day3_difference(i,j)<0
            unbiased_currentoutcome0527(i,j-34)=-unbiased_currentoutcome0527(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0527=mean(unbiased_currentoutcome0527(:,5:20),2);
unbiased_currentoutcome_meanvalue0527(:,2)=s0527;
unbiased_currentoutcome_meanvalue0527(:,3)=3;
unbiased_currentoutcome_meanvalue0527(:,4)=5; %region
unbiased_currentoutcome_meanvalue0527(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region5\20220528\iscell.npy');
s0528=find(iscell(:,1)==1);
load('L:\Monkey2\region5\20220528\judge_the_types_of_neurons_on_each_frame_20220528.mat');

for i=1:length(s0528)
    for j=36:size(M2region5day4_difference,2)
        if M2region5day4_difference(i,j)<0
            unbiased_currentoutcome0528(i,j-34)=-unbiased_currentoutcome0528(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0528=mean(unbiased_currentoutcome0528(:,5:20),2);
unbiased_currentoutcome_meanvalue0528(:,2)=s0528;
unbiased_currentoutcome_meanvalue0528(:,3)=4;
unbiased_currentoutcome_meanvalue0528(:,4)=5; %region
unbiased_currentoutcome_meanvalue0528(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region5\20220529\iscell.npy');
s0529=find(iscell(:,1)==1);
load('L:\Monkey2\region5\20220529\judge_the_types_of_neurons_on_each_frame_20220529.mat');

for i=1:length(s0529)
    for j=36:size(M2region5day5_difference,2)
        if M2region5day5_difference(i,j)<0
            unbiased_currentoutcome0529(i,j-34)=-unbiased_currentoutcome0529(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0529=mean(unbiased_currentoutcome0529(:,5:20),2);
unbiased_currentoutcome_meanvalue0529(:,2)=s0529;
unbiased_currentoutcome_meanvalue0529(:,3)=5;
unbiased_currentoutcome_meanvalue0529(:,4)=5; %region
unbiased_currentoutcome_meanvalue0529(:,5)=2; %monkey

iscell=readNPY('L:\Monkey2\region5\20220530\iscell.npy');
s0530=find(iscell(:,1)==1);
load('L:\Monkey2\region5\20220530\judge_the_types_of_neurons_on_each_frame_20220530.mat');

for i=1:length(s0530)
    for j=36:size(M2region5day6_difference,2)
        if M2region5day6_difference(i,j)<0
            unbiased_currentoutcome0530(i,j-34)=-unbiased_currentoutcome0530(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0530=mean(unbiased_currentoutcome0530(:,5:20),2);
unbiased_currentoutcome_meanvalue0530(:,2)=s0530;
unbiased_currentoutcome_meanvalue0530(:,3)=6;
unbiased_currentoutcome_meanvalue0530(:,4)=5; %region
unbiased_currentoutcome_meanvalue0530(:,5)=2; %monkey

unbiased_currentoutcome_meanvalue_m2region5=[unbiased_currentoutcome_meanvalue0524;unbiased_currentoutcome_meanvalue0526;unbiased_currentoutcome_meanvalue0527;unbiased_currentoutcome_meanvalue0528;unbiased_currentoutcome_meanvalue0529;unbiased_currentoutcome_meanvalue0530];

%region6

iscell=readNPY('L:\Monkey2\region6\20220610\iscell.npy');
s0610=find(iscell(:,1)==1);
load('L:\Monkey2\region6\20220610\judge_the_types_of_neurons_on_each_frame_20220610.mat');

for i=1:length(s0610)
    for j=36:size(M2region6day1_difference,2)
        if M2region6day1_difference(i,j)<0
            unbiased_currentoutcome0610(i,j-34)=-unbiased_currentoutcome0610(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0610=mean(unbiased_currentoutcome0610(:,5:20),2);
unbiased_currentoutcome_meanvalue0610(:,2)=s0610;
unbiased_currentoutcome_meanvalue0610(:,3)=1;
unbiased_currentoutcome_meanvalue0610(:,4)=6; %region
unbiased_currentoutcome_meanvalue0610(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region6\20220611\iscell.npy');
s0611=find(iscell(:,1)==1);
load('L:\Monkey2\region6\20220611\judge_the_types_of_neurons_on_each_frame_20220611.mat');

for i=1:length(s0611)
    for j=36:size(M2region6day2_difference,2)
        if M2region6day2_difference(i,j)<0
            unbiased_currentoutcome0611(i,j-34)=-unbiased_currentoutcome0611(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0611=mean(unbiased_currentoutcome0611(:,5:20),2);
unbiased_currentoutcome_meanvalue0611(:,2)=s0611;
unbiased_currentoutcome_meanvalue0611(:,3)=2;
unbiased_currentoutcome_meanvalue0611(:,4)=6; %region
unbiased_currentoutcome_meanvalue0611(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region6\20220612\iscell.npy');
s0612=find(iscell(:,1)==1);
load('L:\Monkey2\region6\20220612\judge_the_types_of_neurons_on_each_frame_20220612.mat');

for i=1:length(s0612)
    for j=36:size(M2region6day3_difference,2)
        if M2region6day3_difference(i,j)<0
            unbiased_currentoutcome0612(i,j-34)=-unbiased_currentoutcome0612(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0612=mean(unbiased_currentoutcome0612(:,5:20),2);
unbiased_currentoutcome_meanvalue0612(:,2)=s0612;
unbiased_currentoutcome_meanvalue0612(:,3)=3;
unbiased_currentoutcome_meanvalue0612(:,4)=6; %region
unbiased_currentoutcome_meanvalue0612(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region6\20220613\iscell.npy');
s0613=find(iscell(:,1)==1);
load('L:\Monkey2\region6\20220613\judge_the_types_of_neurons_on_each_frame_20220613.mat');

for i=1:length(s0613)
    for j=36:size(M2region6day4_difference,2)
        if M2region6day4_difference(i,j)<0
            unbiased_currentoutcome0613(i,j-34)=-unbiased_currentoutcome0613(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0613=mean(unbiased_currentoutcome0613(:,5:20),2);
unbiased_currentoutcome_meanvalue0613(:,2)=s0613;
unbiased_currentoutcome_meanvalue0613(:,3)=4;
unbiased_currentoutcome_meanvalue0613(:,4)=6; %region
unbiased_currentoutcome_meanvalue0613(:,5)=2; %monkey

unbiased_currentoutcome_meanvalue_m2region6=[unbiased_currentoutcome_meanvalue0610;unbiased_currentoutcome_meanvalue0611;unbiased_currentoutcome_meanvalue0612;unbiased_currentoutcome_meanvalue0613];



%region7

iscell=readNPY('L:\Monkey2\region7\20220618\iscell.npy');
s0618=find(iscell(:,1)==1);
load('L:\Monkey2\region7\20220618\judge_the_types_of_neurons_on_each_frame_20220618.mat');

for i=1:length(s0618)
    for j=36:size(M2region7day1_difference,2)
        if M2region7day1_difference(i,j)<0
            unbiased_currentoutcome0618(i,j-34)=-unbiased_currentoutcome0618(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0618=mean(unbiased_currentoutcome0618(:,5:20),2);
unbiased_currentoutcome_meanvalue0618(:,2)=s0618;
unbiased_currentoutcome_meanvalue0618(:,3)=1;
unbiased_currentoutcome_meanvalue0618(:,4)=7; %region
unbiased_currentoutcome_meanvalue0618(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region7\20220619\iscell.npy');
s0619=find(iscell(:,1)==1);
load('L:\Monkey2\region7\20220619\judge_the_types_of_neurons_on_each_frame_20220619.mat');

for i=1:length(s0619)
    for j=36:size(M2region7day2_difference,2)
        if M2region7day2_difference(i,j)<0
            unbiased_currentoutcome0619(i,j-34)=-unbiased_currentoutcome0619(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0619=mean(unbiased_currentoutcome0619(:,5:20),2);
unbiased_currentoutcome_meanvalue0619(:,2)=s0619;
unbiased_currentoutcome_meanvalue0619(:,3)=2;
unbiased_currentoutcome_meanvalue0619(:,4)=7; %region
unbiased_currentoutcome_meanvalue0619(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region7\20220620\iscell.npy');
s0620=find(iscell(:,1)==1);
load('L:\Monkey2\region7\20220620\judge_the_types_of_neurons_on_each_frame_20220620.mat');

for i=1:length(s0620)
    for j=36:size(M2region7day3_difference,2)
        if M2region7day3_difference(i,j)<0
            unbiased_currentoutcome0620(i,j-34)=-unbiased_currentoutcome0620(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0620=mean(unbiased_currentoutcome0620(:,5:20),2);
unbiased_currentoutcome_meanvalue0620(:,2)=s0620;
unbiased_currentoutcome_meanvalue0620(:,3)=3;
unbiased_currentoutcome_meanvalue0620(:,4)=7; %region
unbiased_currentoutcome_meanvalue0620(:,5)=2; %monkey



iscell=readNPY('L:\Monkey2\region7\20220621\iscell.npy');
s0621=find(iscell(:,1)==1);
load('L:\Monkey2\region7\20220621\judge_the_types_of_neurons_on_each_frame_20220621.mat');

for i=1:length(s0621)
    for j=36:size(M2region7day4_difference,2)
        if M2region7day4_difference(i,j)<0
            unbiased_currentoutcome0621(i,j-34)=-unbiased_currentoutcome0621(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0621=mean(unbiased_currentoutcome0621(:,5:20),2);
unbiased_currentoutcome_meanvalue0621(:,2)=s0621;
unbiased_currentoutcome_meanvalue0621(:,3)=4;
unbiased_currentoutcome_meanvalue0621(:,4)=7; %region
unbiased_currentoutcome_meanvalue0621(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region7\20220622\iscell.npy');
s0622=find(iscell(:,1)==1);
load('L:\Monkey2\region7\20220622\judge_the_types_of_neurons_on_each_frame_20220622.mat');

for i=1:length(s0622)
    for j=36:size(M2region7day5_difference,2)
        if M2region7day5_difference(i,j)<0
            unbiased_currentoutcome0622(i,j-34)=-unbiased_currentoutcome0622(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0622=mean(unbiased_currentoutcome0622(:,5:20),2);
unbiased_currentoutcome_meanvalue0622(:,2)=s0622;
unbiased_currentoutcome_meanvalue0622(:,3)=5;
unbiased_currentoutcome_meanvalue0622(:,4)=7; %region
unbiased_currentoutcome_meanvalue0622(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region7\20220623\iscell.npy');
s0623=find(iscell(:,1)==1);
load('L:\Monkey2\region7\20220623\judge_the_types_of_neurons_on_each_frame_20220623.mat');

for i=1:length(s0623)
    for j=36:size(M2region7day6_difference,2)
        if M2region7day6_difference(i,j)<0
            unbiased_currentoutcome0623(i,j-34)=-unbiased_currentoutcome0623(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0623=mean(unbiased_currentoutcome0623(:,5:20),2);
unbiased_currentoutcome_meanvalue0623(:,2)=s0623;
unbiased_currentoutcome_meanvalue0623(:,3)=6;
unbiased_currentoutcome_meanvalue0623(:,4)=7; %region
unbiased_currentoutcome_meanvalue0623(:,5)=2; %monkey

unbiased_currentoutcome_meanvalue_m2region7=[unbiased_currentoutcome_meanvalue0618;unbiased_currentoutcome_meanvalue0619;unbiased_currentoutcome_meanvalue0620;unbiased_currentoutcome_meanvalue0621;unbiased_currentoutcome_meanvalue0622;unbiased_currentoutcome_meanvalue0623];

%%region8


iscell=readNPY('L:\Monkey2\region8\20220624\iscell.npy');
s0624=find(iscell(:,1)==1);
load('L:\Monkey2\region8\20220624\judge_the_types_of_neurons_on_each_frame_20220624.mat');

for i=1:length(s0624)
    for j=36:size(M2region8day1_difference,2)
        if M2region8day1_difference(i,j)<0
            unbiased_currentoutcome0624(i,j-34)=-unbiased_currentoutcome0624(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0624=mean(unbiased_currentoutcome0624(:,5:20),2);
unbiased_currentoutcome_meanvalue0624(:,2)=s0624;
unbiased_currentoutcome_meanvalue0624(:,3)=1;
unbiased_currentoutcome_meanvalue0624(:,4)=8; %region
unbiased_currentoutcome_meanvalue0624(:,5)=2; %monkey

iscell=readNPY('L:\Monkey2\region8\20220627\iscell.npy');
s0627=find(iscell(:,1)==1);
load('L:\Monkey2\region8\20220627\judge_the_types_of_neurons_on_each_frame_20220627.mat');

for i=1:length(s0627)
    for j=36:size(M2region8day2_difference,2)
        if M2region8day2_difference(i,j)<0
            unbiased_currentoutcome0627(i,j-34)=-unbiased_currentoutcome0627(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0627=mean(unbiased_currentoutcome0627(:,5:20),2);
unbiased_currentoutcome_meanvalue0627(:,2)=s0627;
unbiased_currentoutcome_meanvalue0627(:,3)=2;
unbiased_currentoutcome_meanvalue0627(:,4)=8; %region
unbiased_currentoutcome_meanvalue0627(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region8\20220628\iscell.npy');
s0628=find(iscell(:,1)==1);
load('L:\Monkey2\region8\20220628\judge_the_types_of_neurons_on_each_frame_20220628.mat');

for i=1:length(s0628)
    for j=36:size(M2region8day3_difference,2)
        if M2region8day3_difference(i,j)<0
            unbiased_currentoutcome0628(i,j-34)=-unbiased_currentoutcome0628(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0628=mean(unbiased_currentoutcome0628(:,5:20),2);
unbiased_currentoutcome_meanvalue0628(:,2)=s0628;
unbiased_currentoutcome_meanvalue0628(:,3)=3;
unbiased_currentoutcome_meanvalue0628(:,4)=8; %region
unbiased_currentoutcome_meanvalue0628(:,5)=2; %monkey


iscell=readNPY('L:\Monkey2\region8\20220629\iscell.npy');
s0629=find(iscell(:,1)==1);
load('L:\Monkey2\region8\20220629\judge_the_types_of_neurons_on_each_frame_20220629.mat');

for i=1:length(s0629)
    for j=36:size(M2region8day4_difference,2)
        if M2region8day4_difference(i,j)<0
            unbiased_currentoutcome0629(i,j-34)=-unbiased_currentoutcome0629(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0629=mean(unbiased_currentoutcome0629(:,5:20),2);
unbiased_currentoutcome_meanvalue0629(:,2)=s0629;
unbiased_currentoutcome_meanvalue0629(:,3)=4;
unbiased_currentoutcome_meanvalue0629(:,4)=8; %region
unbiased_currentoutcome_meanvalue0629(:,5)=2; %monkey

iscell=readNPY('L:\Monkey2\region8\20220630\iscell.npy');
s0630=find(iscell(:,1)==1);
load('L:\Monkey2\region8\20220630\judge_the_types_of_neurons_on_each_frame_20220630.mat');

for i=1:length(s0630)
    for j=36:size(M2region8day5_difference,2)
        if M2region8day5_difference(i,j)<0
            unbiased_currentoutcome0630(i,j-34)=-unbiased_currentoutcome0630(i,j-34);
        end
    end
end
unbiased_currentoutcome_meanvalue0630=mean(unbiased_currentoutcome0630(:,5:20),2);
unbiased_currentoutcome_meanvalue0630(:,2)=s0630;
unbiased_currentoutcome_meanvalue0630(:,3)=5;
unbiased_currentoutcome_meanvalue0630(:,4)=8; %region
unbiased_currentoutcome_meanvalue0630(:,5)=2; %monkey

unbiased_currentoutcome_meanvalue_m2region8=[unbiased_currentoutcome_meanvalue0624;unbiased_currentoutcome_meanvalue0627;unbiased_currentoutcome_meanvalue0628;unbiased_currentoutcome_meanvalue0629;unbiased_currentoutcome_meanvalue0630];



unbiased_currentoutcome_meanvalue=[unbiased_currentoutcome_meanvalue_m2region1;unbiased_currentoutcome_meanvalue_m2region2;unbiased_currentoutcome_meanvalue_m2region3;unbiased_currentoutcome_meanvalue_m2region4;
    unbiased_currentoutcome_meanvalue_m2region5;unbiased_currentoutcome_meanvalue_m2region6;unbiased_currentoutcome_meanvalue_m2region7;unbiased_currentoutcome_meanvalue_m2region8];

unbiased_currentoutcome_meanvalue_sort=sortrows(unbiased_currentoutcome_meanvalue,[1],'descend');
for i=1:length(unbiased_currentoutcome_meanvalue_sort)
    
       
        
        if unbiased_currentoutcome_meanvalue_sort(i,4)==1
            
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0426(find(s0426==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0427(find(s0427==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0428(find(s0428==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0429(find(s0429==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==5
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0430(find(s0430==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==6
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0501(find(s0501==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==7
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0502(find(s0502==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
            
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==2
            
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0503(find(s0503==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0504(find(s0504==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0505(find(s0505==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0506(find(s0506==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==3
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0507(find(s0507==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0508(find(s0508==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0509(find(s0509==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0510(find(s0510==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==5
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0511(find(s0511==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==6
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0512(find(s0512==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==7
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0513(find(s0513==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==4
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0517(find(s0517==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0518(find(s0518==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0519(find(s0519==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==5
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0524(find(s0524==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0526(find(s0526==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0527(find(s0527==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0528(find(s0528==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==5
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0529(find(s0529==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==6
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0530(find(s0530==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==6
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0610(find(s0610==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0611(find(s0611==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0612(find(s0612==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0613(find(s0613==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==7
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0618(find(s0618==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0619(find(s0619==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0620(find(s0620==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0621(find(s0621==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==5
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0622(find(s0622==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==6
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0623(find(s0623==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        elseif unbiased_currentoutcome_meanvalue_sort(i,4)==8
            if unbiased_currentoutcome_meanvalue_sort(i,3)==1
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0624(find(s0624==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==2
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0627(find(s0627==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==3
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0628(find(s0628==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==4
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0629(find(s0629==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            elseif unbiased_currentoutcome_meanvalue_sort(i,3)==5
                unbiased_FEV_sort(i,:)=unbiased_currentoutcome0630(find(s0630==unbiased_currentoutcome_meanvalue_sort(i,2)),:);
            end
        end
    end


h=heatmap(unbiased_FEV_sort(:,2:20),'Colormap',jet);
grid off;
h.ColorLimits=[-0.05 0.05];

%12482
