
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211119\unbiased_currentoutcome_region1_0s_raw.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211121\unbiased_currentoutcome_region2_0s_raw.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211127\unbiased_currentoutcome_region3_0s_raw.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211201\unbiased_currentoutcome_region4_0s_raw.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211122\unbiased_currentoutcome_region1_5s_raw.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211124\unbiased_currentoutcome_region2_5s_raw.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211126\unbiased_currentoutcome_region3_5s_raw.mat');
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211202\unbiased_currentoutcome_region4_5s_raw.mat');




unbiased_currentoutcome5s=[unbiased_currentoutcome_region1_5s;unbiased_currentoutcome_region2_5s;unbiased_currentoutcome_region3_5s;unbiased_currentoutcome_region4_5s];
unbiased_currentoutcome0s=[unbiased_currentoutcome_region1_0s;unbiased_currentoutcome_region2_0s;unbiased_currentoutcome_region3_0s;unbiased_currentoutcome_region4_0s];
shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome0s(:,2:20),1),std(unbiased_currentoutcome0s(:,2:20),1)./sqrt(length(unbiased_currentoutcome0s(:,2:20))),'lineProps','r');

xline(0);

hold on;
shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome5s(:,2:20),1),std(unbiased_currentoutcome5s(:,2:20),1)./sqrt(length(unbiased_currentoutcome5s(:,2:20))),'lineProps','k');
legend('0s','5s');
ylim([0 0.025]);


load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\unbiased_FEV_currentoutcome_8days_leftsaccadeseparation.mat');
unbiased_currentoutcome0s=[unbiased_currentoutcome20211119;unbiased_currentoutcome20211121;unbiased_currentoutcome20211127;unbiased_currentoutcome20211201];
unbiased_currentoutcome5s=[unbiased_currentoutcome20211122;unbiased_currentoutcome20211124;unbiased_currentoutcome20211126;unbiased_currentoutcome20211202];
out=[];
for i=1:size(unbiased_currentoutcome0s,2)
    p=kruskalwallis([unbiased_currentoutcome0s(:,i),unbiased_currentoutcome5s(:,i)]);
    out(1,i)=p;
end



p = kruskalwallis([mean(unbiased_currentoutcome0s(:,5:20),2)],[mean(unbiased_currentoutcome0s(:,5:20),2)],'off');


mean_unbiased_currentoutcome0s=mean(unbiased_unbiased_currentoutcome0s(5:20));
std_unbiased_currentoutcome0s=std(unbiased_currentoutcome0s(5:20))/sqrt(length(unbiased_currentoutcome0s(5:20)));

mean_unbiased_currentoutcome5s=mean(unbiased_unbiased_currentoutcome5s(5:20));
std_unbiased_currentoutcome5s=std(unbiased_currentoutcome5s(5:20))/sqrt(length(unbiased_currentoutcome5s(5:20)));





figure
bar(1,mean_unbiased_currentoutcome0s)
hold on
bar(2,mean_unbiased_currentoutcome5s)

hold on
errorbar(1,mean_unbiased_currentoutcome0s,std_unbiased_currentoutcome0s,'k');
hold on
errorbar(2,mean_unbiased_currentoutcome5s,std_mean_unbiased_currentoutcome5s,'k');
