load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211119\unbiased_previousoutcome1119_sameneurons.mat');%region1_0s
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211121\unbiased_previousoutcome1121sameneurons.mat');%region2 0s
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211127\unbiased_previousoutcome1127sameneurons.mat');%region3 0s
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211201\unbiased_previousoutcome1201sameneurons.mat');%region4 0s
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion1_suite2p_automatically\20211122\unbiased_previousoutcome1122_sameneurons.mat');%region1 5s
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion2\20211124\unbiased_previousoutcome1124sameneurons.mat');%region2 5s



load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion3\20211126\unbiased_previousoutcome1126sameneurons.mat');%region3 5s
load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\subregion4\20211202\unbiased_previousoutcome1202sameneurons.mat');%region4 5s




unbiased_previousoutcome5s=[unbiased_previousoutcome1122;unbiased_previousoutcome1124;unbiased_previousoutcome1126;unbiased_previousoutcome1202];
unbiased_previousoutcome0s=[unbiased_previousoutcome1119;unbiased_previousoutcome1121;unbiased_previousoutcome1127;unbiased_previousoutcome1201];



shadedErrorBar(([1:40]-20)/7.4,mean(unbiased_previousoutcome0s(:,1:40),1),std(unbiased_previousoutcome0s(:,1:40),1)./sqrt(length(unbiased_previousoutcome0s(:,1:40))),'lineProps','r');
xline(0);


hold on;


shadedErrorBar(([1:40]-20)/7.4,mean(unbiased_previousoutcome5s(:,1:40),1),std(unbiased_previousoutcome5s(:,1:40),1)./sqrt(length(unbiased_previousoutcome5s(:,1:40))),'lineProps','k');

legend('0s','5s');
ylim([0 0.01]);


load('L:\thesis\manual_recircle_same_neurons_4_different_subregions\unbiased_FEV_previosoutcome_8days_leftsaccadeseparation.mat');
unbiased_previosoutcome0s=[unbiased_previosoutcome20211119;unbiased_previosoutcome20211121;unbiased_previosoutcome20211127;unbiased_previosoutcome20211201];
unbiased_previosoutcome5s=[unbiased_previosoutcome20211122;unbiased_previosoutcome20211124;unbiased_previosoutcome20211126;unbiased_previosoutcome20211202];
out=[];
for i=1:size(unbiased_previosoutcome0s,2)
    p=kruskalwallis([unbiased_previosoutcome0s(:,i),unbiased_previosoutcome5s(:,i)]);
    out(1,i)=p;
end





p = kruskalwallis([mean(unbiased_previousoutcome0s(:,9:32),2)],[mean(unbiased_previousoutcome5s(:,9:32),2)],'off');


mean_unbiased_previousoutcome_0s=mean(unbiased_previousoutcome0s(9:32));
std_unbiased_previousoutcome_0s=std(unbiased_previousoutcome0s(9:32))/sqrt(length(unbiased_previousoutcome0s(9:32)));




mean_unbiased_previousoutcome_5s=mean(unbiased_previousoutcome5s(9:32));
std_unbiased_previousoutcome_5s=std(unbiased_previousoutcome5s(9:32))/sqrt(length(unbiased_previousoutcome5s(9:32)));



figure
bar(1,mean_unbiased_previousoutcome_0s)
hold on
bar(2,mean_unbiased_previousoutcome_5s)

hold on
errorbar(1,mean_unbiased_previousoutcome_0s,std_unbiased_previousoutcome_0s,'k');
hold on
errorbar(2,mean_unbiased_previousoutcome_5s,std_unbiased_previousoutcome_5s,'k');

