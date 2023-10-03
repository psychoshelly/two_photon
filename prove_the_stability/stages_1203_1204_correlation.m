

%%stage1
load('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\stage1_1203.mat');
load('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\stage1_1204.mat');

[r,p]=corr(stage1,stage1_1204,'Type','Spearman','Rows','all','Tail','right');

for i=1:1000
rand_stage1(:,i)=stage1(randperm(172));
end
for i=1:1000
    [r,p]=corr(rand_stage1(:,i),stage1_1204,'Type','Spearman','Rows','all','Tail','right');
    value(:,i)=[r;p];
end

x=1:1000;
histogram(value(1,:))
ylim([0 180]);
xlim([-0.25 0.65]);
xline(0.6419)




%%stage2
load('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\stage2_1203.mat');
load('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\stage2_1204.mat');

[r,p]=corr(stage2,stage2_1204,'Type','Spearman','Rows','all','Tail','right');

for i=1:1000
rand_stage2(:,i)=stage2(randperm(172));
end
for i=1:1000
    [r,p]=corr(rand_stage2(:,i),stage2_1204,'Type','Spearman','Rows','all','Tail','right');
    value(:,i)=[r;p];
end

x=1:1000;
histogram(value(1,:));
ylim([0 180]);
xlim([-0.25 0.65]);
xline(0.3044)




%%stage3
load('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\stage3_1203.mat');
load('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\stage3_1204.mat');

[r,p]=corr(stage3,stage3_1204,'Type','Spearman','Rows','all','Tail','right');

for i=1:1000
rand_stage3(:,i)=stage3(randperm(172));
end
for i=1:1000
    [r,p]=corr(rand_stage3(:,i),stage3_1204,'Type','Spearman','Rows','all','Tail','right');
    value(:,i)=[r;p];
end

x=1:1000;
histogram(value(1,:))
ylim([0 180]);
xlim([-0.25 0.65]);
xline(0.6209)
%% stage 4
load('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\stage4_1203.mat');
load('L:\毕业论文\20220307预答辩\prove_the_stability_of_the_data\stage4_1204.mat');

[r,p]=corr(stage4,stage4_1204,'Type','Spearman','Rows','all','Tail','right');

for i=1:1000
rand_stage4(:,i)=stage4(randperm(172));
end
for i=1:1000
    [r,p]=corr(rand_stage4(:,i),stage4_1204,'Type','Spearman','Rows','all','Tail','right');
    value(:,i)=[r;p];
end

x=1:1000;
histogram(value(1,:))
ylim([0 180]);
xlim([-0.25 0.65]);
xline(0.4958)
