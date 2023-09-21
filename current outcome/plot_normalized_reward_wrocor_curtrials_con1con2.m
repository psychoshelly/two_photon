load('L:\Monkey1\region1\20211108\stim_markers_learning_aligned_to_target_off_20211108.mat');
%% correct
for con=1:2
    con_ind=find(all_conditions_targetoff==con);
    trial_targetoff_align_frame_num.(sprintf('con_%d',con))=frame_num_all_targetoff(con_ind);
end
 frame_num_all=[frame_num_all_cue frame_num_all_cue_wrong];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像

prev_t=37;
after_t=30;

F_raw=readNPY('L:\Monkey1\region1\20211108\F.npy');
load('L:\Monkey1\region1\20211108\f_filter_1108.mat');

new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s=find(iscell(:,1)==1);
s1108=s;
 F_cell_s=F(s1108(:),:);
cell_id=[1:size(F_cell_s,1)];
a1=trial_targetoff_align_frame_num.(sprintf('con_1'));
a2=trial_targetoff_align_frame_num.(sprintf('con_2'));
a3=frame_num_all;

for cell_num = 1:length(cell_id)
        targetoff.(sprintf('cell_%d_con_1',cell_num))=get_act_raw_trace(cell_num,a1,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF.(sprintf('cell_%d_con_1',cell_num))=(targetoff.(sprintf('cell_%d_con_1',cell_num))-mean(mean_cue.(sprintf('cell_%d_cons',cell_num))))./(mean(mean_cue.(sprintf('cell_%d_cons',cell_num))));
        se.(sprintf('cell_%d_con_1',cell_num))=(std(ratio_deltaF.(sprintf('cell_%d_con_1',cell_num)),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_1',cell_num)))));
        
        targetoff.(sprintf('cell_%d_con_2',cell_num))=get_act_raw_trace(cell_num,a2,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d_cons',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
       ratio_deltaF.(sprintf('cell_%d_con_2',cell_num))=(targetoff.(sprintf('cell_%d_con_2',cell_num))-mean(mean_cue.(sprintf('cell_%d_cons',cell_num))))./(mean(mean_cue.(sprintf('cell_%d_cons',cell_num))));
        se.(sprintf('cell_%d_con_2',cell_num))=(std(ratio_deltaF.(sprintf('cell_%d_con_2',cell_num)),0,1))./(sqrt(length(ratio_deltaF.(sprintf('cell_%d_con_2',cell_num)))));
end


%% wrong
for con=1:2
    con_ind_wrong=find(all_conditions_targetoff_wrong==con);
    trial_targetoff_align_frame_num_wrong.(sprintf('con_%d',con))=frame_num_all_targetoff_wrong(con_ind_wrong);
   
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  求前4后16帧的平均图像
a1_wrong=trial_targetoff_align_frame_num_wrong.(sprintf('con_1'));
a2_wrong=trial_targetoff_align_frame_num_wrong.(sprintf('con_2'));

for cell_num = 1:length(cell_id)
        
        targetoff_wrong.(sprintf('cell_%d_con_1',cell_num))=get_act_raw_trace(cell_num,a1_wrong,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s,11, 0);
        mean_cue.(sprintf('cell_%d',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s,11, 0),2);
       ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num))=(targetoff_wrong.(sprintf('cell_%d_con_1',cell_num))-mean(mean_cue.(sprintf('cell_%d',cell_num))))./(mean(mean_cue.(sprintf('cell_%d',cell_num))));
        se_wrong.(sprintf('cell_%d_con_1',cell_num))=(std(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num)),0,1))./(sqrt(length(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num)))));
        
        targetoff_wrong.(sprintf('cell_%d_con_2',cell_num))=get_act_raw_trace(cell_num,a2_wrong,F_cell_s, prev_t, after_t);
        cue.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0);
        mean_cue.(sprintf('cell_%d',cell_num))=mean(get_act_raw_trace(cell_num,a3,F_cell_s, 11, 0),2);
        ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num))=(targetoff_wrong.(sprintf('cell_%d_con_2',cell_num))-mean(mean_cue.(sprintf('cell_%d',cell_num))))./(mean(mean_cue.(sprintf('cell_%d',cell_num))));
        se_wrong.(sprintf('cell_%d_con_2',cell_num))=(std(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num)),0,1))./(sqrt(length(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num)))));
end
 
  
%% 画图并储存
mkdir D:\20211108normalized_trace\;
for cell_num = 1:length(cell_id)
    figure(1)
    figure('visible','off')
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF.(sprintf('cell_%d_con_1',cell_num))),se.(sprintf('cell_%d_con_1',cell_num)),'lineProps', {'-b','LineWidth',1,'LineStyle','-'});
  
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF.(sprintf('cell_%d_con_2',cell_num))),se.(sprintf('cell_%d_con_2',cell_num)),'lineProps',{'-b','LineWidth',1,'LineStyle',':'});
 
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',cell_num))),se_wrong.(sprintf('cell_%d_con_1',cell_num)),'lineProps',{'-r','LineWidth',1,'LineStyle','-'});
 
    shadedErrorBar([([1:68]-38)/7.4],mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',cell_num))),se_wrong.(sprintf('cell_%d_con_2',cell_num)),'lineProps',{'-r','LineWidth',1,'LineStyle',':'});
    xline(38);%targetoff/reward
    %xline(67.6);
    %xline(30.6);%saccade
    %xline(19.5);%cue
    %xline(8.4);%fixation
    legend('con1correct','con2correct','con1wrong','con2wrong');
    legend('boxoff');
    box off;
    hold off

 saveas(gcf,['D:\20211108normalized_trace\',['cell',num2str(cell_num),'.png']]);
close all

end





%z_score

z_F_cell_s=zscore(F_cell_s')';
% 
% tic
% for cell_num=1:size(F_cell_s,1)
%     for j=1:length(F_cell_s)
%     z_F_cell_s(cell_num,j)=(F_cell_s(cell_num,j)-mean(F_cell_s(cell_num,:),2))/std(F_cell_s(cell_num,:),0,2);
%     end
% end
% toc
mkdir D:\ZY_lab\1108test;
for cell_num=1:size(z_F_cell_s,1)
    figure(1)
    figure('visible','off')
    plot([1:888],z_F_cell_s(cell_num,9001:9888));
    box off;
    hold off
    saveas(gcf,['D:\ZY_lab\1108test\',['cell',num2str(cell_num),'.png']]);
    close all
end


%%1108:80000-90000
%%0506： 7000-25000  50000-56000   9001:9888
%%0508： 55000-56000
test_z_F_cell_s=z_F_cell_s(:,80000:90000);
[idx,C] = kmeans(test_z_F_cell_s,2);

% figure
% gscatter(test_z_F_cell_s(:,1),test_z_F_cell_s(:,2),idx,'bgm')
% hold on
% plot(C(:,1),C(:,2),'kx')
% legend('Cluster 1','Cluster 2','Cluster Centroid')



z_F_cell_s_cluster1=[];
z_F_cell_s_cluster2=[];
for i=1:size(z_F_cell_s,1)
    if idx(i)==1
        z_F_cell_s_cluster1=[z_F_cell_s_cluster1;z_F_cell_s(i,:)];
    else
        z_F_cell_s_cluster2=[z_F_cell_s_cluster2;z_F_cell_s(i,:)];
    end
end



mkdir D:\ZY_lab\0506same—rest;
for cell_num=1:size(z_F_cell_s,1)
    figure(1)
    figure('visible','off')
    plot([1:888],z_F_cell_s_cluster1(cell_num,9001:9888));
    box off;
    hold off
    saveas(gcf,['D:\ZY_lab\0506same—rest\',['cell',num2str(cell_num),'.png']]);
    close all
end


shadedErrorBar([1:888],mean(z_F_cell_s_cluster1(:,80001:80888),1),std(z_F_cell_s_cluster1(:,80001:80888),1),'lineProps', {'-b','LineWidth',1,'LineStyle','-'});
shadedErrorBar([1:888],mean(z_F_cell_s_cluster2(:,80001:80888),1),std(z_F_cell_s_cluster2(:,80001:80888),1),'lineProps', {'-r','LineWidth',1,'LineStyle','-'});






figure
shadedErrorBar([1:68],mean(ratio_deltaF.(sprintf('cell_%d_con_1',17))),se.(sprintf('cell_%d_con_1',3)),'lineProps', {'-b','LineWidth',1,'LineStyle','-'});

shadedErrorBar([1:68],mean(ratio_deltaF.(sprintf('cell_%d_con_2',17))),se.(sprintf('cell_%d_con_2',3)),'lineProps',{'-b','LineWidth',1,'LineStyle',':'});

shadedErrorBar([1:68],mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_1',17))),se_wrong.(sprintf('cell_%d_con_1',3)),'lineProps',{'-r','LineWidth',1,'LineStyle','-'});

shadedErrorBar([1:68],mean(ratio_deltaF_wrong.(sprintf('cell_%d_con_2',17))),se_wrong.(sprintf('cell_%d_con_2',3)),'lineProps',{'-r','LineWidth',1,'LineStyle',':'});
xline(38);%targetoff/reward
%     %xline(67.6);
%     %xline(30.6);%saccade
%     %xline(19.5);%cue
%     %xline(8.4);%fixation
ylim([-0.5 1]);
legend('con1correct','con2correct','con1wrong','con2wrong');
legend('boxoff');
box off;

load('L:\M180519_0506_0506_newcircle\20220506\proportions_of_cells_encoding_current_trials_outcome_20220506.mat');
  
 



