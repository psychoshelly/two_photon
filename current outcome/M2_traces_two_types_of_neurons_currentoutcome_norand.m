


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


%Monkey2-region1%0426
load('L:\Monkey2\region1\20220426\proportions_of_cells_encoding_current_trials_outcome_20220426.mat');
iscell=readNPY('L:\Monkey2\region1\20220426\iscell.npy');
s0426=find(iscell(:,1)==1);


M2_region1_day1_4stages=union(union(union(M2region1stage1day1index,M2region1stage2day1index),M2region1stage3day1index),M2region1stage4day1index);
M2_region1_day1_0stage=setdiff(M2region1stage1day1diff_ratio_deltaF(:,1),M2_region1_day1_4stages);



for cell_num=1:length(M2_region1_day1_4stages)
    M2region1stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))))-mean(M2region1stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))));
    M2region1stage1day1_difference_struct=cell2mat(struct2cell(M2region1stage1day1_difference));
    
    M2region1stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))))-mean(M2region1stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))));
    M2region1stage2day1_difference_struct=cell2mat(struct2cell(M2region1stage2day1_difference));
    
    M2region1stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))))-mean(M2region1stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))));
    M2region1stage3day1_difference_struct=cell2mat(struct2cell(M2region1stage3day1_difference));
    
    M2region1stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))))-mean(M2region1stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day1_4stages(cell_num))));
    M2region1stage4day1_difference_struct=cell2mat(struct2cell(M2region1stage4day1_difference)); 
end
M2region1day1=[M2region1stage1day1_difference_struct M2region1stage2day1_difference_struct M2region1stage3day1_difference_struct M2region1stage4day1_difference_struct M2_region1_day1_4stages];
for i=1:length(M2region1day1)
    
    if sum(M2region1day1(i,1:4)<0)>sum(M2region1day1(i,1:4)>0)
        M2region1day1(i,6)=-1;
    elseif sum(M2region1day1(i,1:4)<0)<sum(M2region1day1(i,1:4)>0)
        M2region1day1(i,6)=1;
    elseif sum(M2region1day1(i,1:4)<0)==sum(M2region1day1(i,1:4)>0)
        if abs(mean(M2region1day1(i,find(M2region1day1(i,1:4)<0))))>abs(mean(M2region1day1(i,find(M2region1day1(i,1:4)>0))))
            M2region1day1(i,6)=-1;
        elseif abs(mean(M2region1day1(i,find(M2region1day1(i,1:4)<0))))<abs(mean(M2region1day1(i,find(M2region1day1(i,1:4)>0))))
            M2region1day1(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0426=[];
for i=1:length(M2region1day1)
    if M2region1day1(i,6)==-1
       a=find(s0426==M2region1day1(i,5));
       unbiased_currentoutcome_signerror_0426(a,:)=-unbiased_currentoutcome0426(a,:);
    end
end
unbiased_currentoutcome_signerror_0426(all(unbiased_currentoutcome_signerror_0426==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0426=[];
for i=1:length(M2region1day1)
    if M2region1day1(i,6)==-1
       a=find(s0426==M2region1day1(i,5));
       unbiased_currentoutcome_error_0426(a,:)=unbiased_currentoutcome0426(a,:);
    end
end
unbiased_currentoutcome_error_0426(all(unbiased_currentoutcome_error_0426==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0426=[];
for i=1:length(M2region1day1)
    if M2region1day1(i,6)==1
       a=find(s0426==M2region1day1(i,5));
       unbiased_currentoutcome_signcorrect_0426(a,:)=unbiased_currentoutcome0426(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0426(all(unbiased_currentoutcome_signcorrect_0426==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0426=[];
for i=1:length(M2region1day1)
    if M2region1day1(i,6)==1
       a=find(s0426==M2region1day1(i,5));
       unbiased_currentoutcome_correct_0426(a,:)=unbiased_currentoutcome0426(a,:);
    end
end
unbiased_currentoutcome_correct_0426(all(unbiased_currentoutcome_correct_0426==0,2),:) = [];



%%0427
load('L:\Monkey2\region1\20220427\proportions_of_cells_encoding_current_trials_outcome_20220427.mat');
iscell=readNPY('L:\Monkey2\region1\20220427\iscell.npy');
s0427=find(iscell(:,1)==1);

M2_region1_day2_4stages=union(union(union(M2region1stage1day2index,M2region1stage2day2index),M2region1stage3day2index),M2region1stage4day2index);
M2_region1_day2_0stage=setdiff(M2region1stage1day2diff_ratio_deltaF(:,1),M2_region1_day2_4stages);



for cell_num=1:length(M2_region1_day2_4stages)
    M2region1stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))))-mean(M2region1stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))));
    M2region1stage1day2_difference_struct=cell2mat(struct2cell(M2region1stage1day2_difference));
    
    M2region1stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))))-mean(M2region1stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))));
    M2region1stage2day2_difference_struct=cell2mat(struct2cell(M2region1stage2day2_difference));
    
    M2region1stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))))-mean(M2region1stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))));
    M2region1stage3day2_difference_struct=cell2mat(struct2cell(M2region1stage3day2_difference));
    
    M2region1stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))))-mean(M2region1stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day2_4stages(cell_num))));
    M2region1stage4day2_difference_struct=cell2mat(struct2cell(M2region1stage4day2_difference));
end
M2region1day2=[M2region1stage1day2_difference_struct M2region1stage2day2_difference_struct M2region1stage3day2_difference_struct M2region1stage4day2_difference_struct M2_region1_day2_4stages];
for i=1:length(M2region1day2)
    
    if sum(M2region1day2(i,1:4)<0)>sum(M2region1day2(i,1:4)>0)
        M2region1day2(i,6)=-1;
    elseif sum(M2region1day2(i,1:4)<0)<sum(M2region1day2(i,1:4)>0)
        M2region1day2(i,6)=1;
    elseif sum(M2region1day2(i,1:4)<0)==sum(M2region1day2(i,1:4)>0)
        if abs(mean(M2region1day2(i,find(M2region1day2(i,1:4)<0))))>abs(mean(M2region1day2(i,find(M2region1day2(i,1:4)>0))))
            M2region1day2(i,6)=-1;
        elseif abs(mean(M2region1day2(i,find(M2region1day2(i,1:4)<0))))<abs(mean(M2region1day2(i,find(M2region1day2(i,1:4)>0))))
            M2region1day2(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0427=[];
for i=1:length(M2region1day2)
    if M2region1day2(i,6)==-1
       a=find(s0427==M2region1day2(i,5));
       unbiased_currentoutcome_signerror_0427(a,:)=-unbiased_currentoutcome0427(a,:);
    end
end
unbiased_currentoutcome_signerror_0427(all(unbiased_currentoutcome_signerror_0427==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0427=[];
for i=1:length(M2region1day2)
    if M2region1day2(i,6)==-1
       a=find(s0427==M2region1day2(i,5));
       unbiased_currentoutcome_error_0427(a,:)=unbiased_currentoutcome0427(a,:);
    end
end
unbiased_currentoutcome_error_0427(all(unbiased_currentoutcome_error_0427==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0427=[];
for i=1:length(M2region1day2)
    if M2region1day2(i,6)==1
       a=find(s0427==M2region1day2(i,5));
       unbiased_currentoutcome_signcorrect_0427(a,:)=unbiased_currentoutcome0427(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0427(all(unbiased_currentoutcome_signcorrect_0427==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0427=[];
for i=1:length(M2region1day2)
    if M2region1day2(i,6)==1
       a=find(s0427==M2region1day2(i,5));
       unbiased_currentoutcome_correct_0427(a,:)=unbiased_currentoutcome0427(a,:);
    end
end
unbiased_currentoutcome_correct_0427(all(unbiased_currentoutcome_correct_0427==0,2),:) = [];


%%0428

load('L:\Monkey2\region1\20220428\proportions_of_cells_encoding_current_trials_outcome_20220428.mat');
iscell=readNPY('L:\Monkey2\region1\20220428\iscell.npy');
s0428=find(iscell(:,1)==1);
M2_region1_day3_4stages=union(union(union(M2region1stage1day3index,M2region1stage2day3index),M2region1stage3day3index),M2region1stage4day3index);
M2_region1_day3_0stage=setdiff(M2region1stage1day3diff_ratio_deltaF(:,1),M2_region1_day3_4stages);


for cell_num=1:length(M2_region1_day3_4stages)
    M2region1stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))))-mean(M2region1stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))));
    M2region1stage1day3_difference_struct=cell2mat(struct2cell(M2region1stage1day3_difference));
    
    M2region1stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))))-mean(M2region1stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))));
    M2region1stage2day3_difference_struct=cell2mat(struct2cell(M2region1stage2day3_difference));
    
    M2region1stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))))-mean(M2region1stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))));
    M2region1stage3day3_difference_struct=cell2mat(struct2cell(M2region1stage3day3_difference));
    
    M2region1stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))))-mean(M2region1stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day3_4stages(cell_num))));
    M2region1stage4day3_difference_struct=cell2mat(struct2cell(M2region1stage4day3_difference));
end
M2region1day3=[M2region1stage1day3_difference_struct M2region1stage2day3_difference_struct M2region1stage3day3_difference_struct M2region1stage4day3_difference_struct M2_region1_day3_4stages];
for i=1:length(M2region1day3)
    
    if sum(M2region1day3(i,1:4)<0)>sum(M2region1day3(i,1:4)>0)
        M2region1day3(i,6)=-1;
    elseif sum(M2region1day3(i,1:4)<0)<sum(M2region1day3(i,1:4)>0)
        M2region1day3(i,6)=1;
    elseif sum(M2region1day3(i,1:4)<0)==sum(M2region1day3(i,1:4)>0)
        if abs(mean(M2region1day3(i,find(M2region1day3(i,1:4)<0))))>abs(mean(M2region1day3(i,find(M2region1day3(i,1:4)>0))))
            M2region1day3(i,6)=-1;
        elseif abs(mean(M2region1day3(i,find(M2region1day3(i,1:4)<0))))<abs(mean(M2region1day3(i,find(M2region1day3(i,1:4)>0))))
            M2region1day3(i,6)=1;
        end
    end
end





%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0428=[];
for i=1:length(M2region1day3)
    if M2region1day3(i,6)==-1
       a=find(s0428==M2region1day3(i,5));
       unbiased_currentoutcome_signerror_0428(a,:)=-unbiased_currentoutcome0428(a,:);
    end
end
unbiased_currentoutcome_signerror_0428(all(unbiased_currentoutcome_signerror_0428==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0428=[];
for i=1:length(M2region1day3)
    if M2region1day3(i,6)==-1
       a=find(s0428==M2region1day3(i,5));
       unbiased_currentoutcome_error_0428(a,:)=unbiased_currentoutcome0428(a,:);
    end
end
unbiased_currentoutcome_error_0428(all(unbiased_currentoutcome_error_0428==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0428=[];
for i=1:length(M2region1day3)
    if M2region1day3(i,6)==1
       a=find(s0428==M2region1day3(i,5));
       unbiased_currentoutcome_signcorrect_0428(a,:)=unbiased_currentoutcome0428(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0428(all(unbiased_currentoutcome_signcorrect_0428==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0428=[];
for i=1:length(M2region1day3)
    if M2region1day3(i,6)==1
       a=find(s0428==M2region1day3(i,5));
       unbiased_currentoutcome_correct_0428(a,:)=unbiased_currentoutcome0428(a,:);
    end
end
unbiased_currentoutcome_correct_0428(all(unbiased_currentoutcome_correct_0428==0,2),:) = [];


%0429
load('L:\Monkey2\region1\20220429\proportions_of_cells_encoding_current_trials_outcome_20220429.mat');
iscell=readNPY('L:\Monkey2\region1\20220429\iscell.npy');
s0429=find(iscell(:,1)==1);


M2_region1_day4_4stages=union(union(union(M2region1stage1day4index,M2region1stage2day4index),M2region1stage3day4index),M2region1stage4day4index);
M2_region1_day4_0stage=setdiff(M2region1stage1day4diff_ratio_deltaF(:,1),M2_region1_day4_4stages);




for cell_num=1:length(M2_region1_day4_4stages)
    M2region1stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))))-mean(M2region1stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))));
    M2region1stage1day4_difference_struct=cell2mat(struct2cell(M2region1stage1day4_difference));
    
    M2region1stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))))-mean(M2region1stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))));
    M2region1stage2day4_difference_struct=cell2mat(struct2cell(M2region1stage2day4_difference));
    
    M2region1stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))))-mean(M2region1stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))));
    M2region1stage3day4_difference_struct=cell2mat(struct2cell(M2region1stage3day4_difference));
    
    M2region1stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))))-mean(M2region1stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day4_4stages(cell_num))));
    M2region1stage4day4_difference_struct=cell2mat(struct2cell(M2region1stage4day4_difference));
end
M2region1day4=[M2region1stage1day4_difference_struct M2region1stage2day4_difference_struct M2region1stage3day4_difference_struct M2region1stage4day4_difference_struct M2_region1_day4_4stages];
for i=1:length(M2region1day4)
    
    if sum(M2region1day4(i,1:4)<0)>sum(M2region1day4(i,1:4)>0)
        M2region1day4(i,6)=-1;
    elseif sum(M2region1day4(i,1:4)<0)<sum(M2region1day4(i,1:4)>0)
        M2region1day4(i,6)=1;
    elseif sum(M2region1day4(i,1:4)<0)==sum(M2region1day4(i,1:4)>0)
        if abs(mean(M2region1day4(i,find(M2region1day4(i,1:4)<0))))>abs(mean(M2region1day4(i,find(M2region1day4(i,1:4)>0))))
            M2region1day4(i,6)=-1;
        elseif abs(mean(M2region1day4(i,find(M2region1day4(i,1:4)<0))))<abs(mean(M2region1day4(i,find(M2region1day4(i,1:4)>0))))
            M2region1day4(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0429=[];
for i=1:length(M2region1day4)
    if M2region1day4(i,6)==-1
       a=find(s0429==M2region1day4(i,5));
       unbiased_currentoutcome_signerror_0429(a,:)=-unbiased_currentoutcome0429(a,:);
    end
end
unbiased_currentoutcome_signerror_0429(all(unbiased_currentoutcome_signerror_0429==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0429=[];
for i=1:length(M2region1day4)
    if M2region1day4(i,6)==-1
       a=find(s0429==M2region1day4(i,5));
       unbiased_currentoutcome_error_0429(a,:)=unbiased_currentoutcome0429(a,:);
    end
end
unbiased_currentoutcome_error_0429(all(unbiased_currentoutcome_error_0429==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0429=[];
for i=1:length(M2region1day4)
    if M2region1day4(i,6)==1
       a=find(s0429==M2region1day4(i,5));
       unbiased_currentoutcome_signcorrect_0429(a,:)=unbiased_currentoutcome0429(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0429(all(unbiased_currentoutcome_signcorrect_0429==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0429=[];
for i=1:length(M2region1day4)
    if M2region1day4(i,6)==1
       a=find(s0429==M2region1day4(i,5));
       unbiased_currentoutcome_correct_0429(a,:)=unbiased_currentoutcome0429(a,:);
    end
end
unbiased_currentoutcome_correct_0429(all(unbiased_currentoutcome_correct_0429==0,2),:) = [];

%%0430

load('L:\Monkey2\region1\20220430\proportions_of_cells_encoding_current_trials_outcome_20220430.mat');
iscell=readNPY('L:\Monkey2\region1\20220430\iscell.npy');
s0430=find(iscell(:,1)==1);

M2_region1_day5_4stages=union(union(union(M2region1stage1day5index,M2region1stage2day5index),M2region1stage3day5index),M2region1stage4day5index);
M2_region1_day5_0stage=setdiff(M2region1stage1day5diff_ratio_deltaF(:,1),M2_region1_day5_4stages);



for cell_num=1:length(M2_region1_day5_4stages)
    M2region1stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))))-mean(M2region1stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))));
    M2region1stage1day5_difference_struct=cell2mat(struct2cell(M2region1stage1day5_difference));
    
    M2region1stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))))-mean(M2region1stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))));
    M2region1stage2day5_difference_struct=cell2mat(struct2cell(M2region1stage2day5_difference));
    
    M2region1stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))))-mean(M2region1stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))));
    M2region1stage3day5_difference_struct=cell2mat(struct2cell(M2region1stage3day5_difference));
    
    M2region1stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))))-mean(M2region1stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day5_4stages(cell_num))));
    M2region1stage4day5_difference_struct=cell2mat(struct2cell(M2region1stage4day5_difference));
end
M2region1day5=[M2region1stage1day5_difference_struct M2region1stage2day5_difference_struct M2region1stage3day5_difference_struct M2region1stage4day5_difference_struct M2_region1_day5_4stages];
for i=1:length(M2region1day5)
    
    if sum(M2region1day5(i,1:4)<0)>sum(M2region1day5(i,1:4)>0)
        M2region1day5(i,6)=-1;
    elseif sum(M2region1day5(i,1:4)<0)<sum(M2region1day5(i,1:4)>0)
        M2region1day5(i,6)=1;
    elseif sum(M2region1day5(i,1:4)<0)==sum(M2region1day5(i,1:4)>0)
        if abs(mean(M2region1day5(i,find(M2region1day5(i,1:4)<0))))>abs(mean(M2region1day5(i,find(M2region1day5(i,1:4)>0))))
            M2region1day5(i,6)=-1;
        elseif abs(mean(M2region1day5(i,find(M2region1day5(i,1:4)<0))))<abs(mean(M2region1day5(i,find(M2region1day5(i,1:4)>0))))
            M2region1day5(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0430=[];
for i=1:length(M2region1day5)
    if M2region1day5(i,6)==-1
       a=find(s0430==M2region1day5(i,5));
       unbiased_currentoutcome_signerror_0430(a,:)=-unbiased_currentoutcome0430(a,:);
    end
end
unbiased_currentoutcome_signerror_0430(all(unbiased_currentoutcome_signerror_0430==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0430=[];
for i=1:length(M2region1day5)
    if M2region1day5(i,6)==-1
       a=find(s0430==M2region1day5(i,5));
       unbiased_currentoutcome_error_0430(a,:)=unbiased_currentoutcome0430(a,:);
    end
end
unbiased_currentoutcome_error_0430(all(unbiased_currentoutcome_error_0430==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0430=[];
for i=1:length(M2region1day5)
    if M2region1day5(i,6)==1
       a=find(s0430==M2region1day5(i,5));
       unbiased_currentoutcome_signcorrect_0430(a,:)=unbiased_currentoutcome0430(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0430(all(unbiased_currentoutcome_signcorrect_0430==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0430=[];
for i=1:length(M2region1day5)
    if M2region1day5(i,6)==1
       a=find(s0430==M2region1day5(i,5));
       unbiased_currentoutcome_correct_0430(a,:)=unbiased_currentoutcome0430(a,:);
    end
end
unbiased_currentoutcome_correct_0430(all(unbiased_currentoutcome_correct_0430==0,2),:) = [];


%%0501
load('L:\Monkey2\region1\20220501\proportions_of_cells_encoding_current_trials_outcome_20220501.mat');
iscell=readNPY('L:\Monkey2\region1\20220501\iscell.npy');
s0501=find(iscell(:,1)==1);

M2_region1_day6_4stages=union(union(union(M2region1stage1day6index,M2region1stage2day6index),M2region1stage3day6index),M2region1stage4day6index);
M2_region1_day6_0stage=setdiff(M2region1stage1day6diff_ratio_deltaF(:,1),M2_region1_day6_4stages);

for cell_num=1:length(M2_region1_day6_4stages)
    M2region1stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))))-mean(M2region1stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))));
    M2region1stage1day6_difference_struct=cell2mat(struct2cell(M2region1stage1day6_difference));
    
    M2region1stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))))-mean(M2region1stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))));
    M2region1stage2day6_difference_struct=cell2mat(struct2cell(M2region1stage2day6_difference));
    
    M2region1stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))))-mean(M2region1stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))));
    M2region1stage3day6_difference_struct=cell2mat(struct2cell(M2region1stage3day6_difference));
    
    M2region1stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))))-mean(M2region1stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day6_4stages(cell_num))));
    M2region1stage4day6_difference_struct=cell2mat(struct2cell(M2region1stage4day6_difference));
end
M2region1day6=[M2region1stage1day6_difference_struct M2region1stage2day6_difference_struct M2region1stage3day6_difference_struct M2region1stage4day6_difference_struct M2_region1_day6_4stages];
for i=1:length(M2region1day6)
    
    if sum(M2region1day6(i,1:4)<0)>sum(M2region1day6(i,1:4)>0)
        M2region1day6(i,6)=-1;
    elseif sum(M2region1day6(i,1:4)<0)<sum(M2region1day6(i,1:4)>0)
        M2region1day6(i,6)=1;
    elseif sum(M2region1day6(i,1:4)<0)==sum(M2region1day6(i,1:4)>0)
        if abs(mean(M2region1day6(i,find(M2region1day6(i,1:4)<0))))>abs(mean(M2region1day6(i,find(M2region1day6(i,1:4)>0))))
            M2region1day6(i,6)=-1;
        elseif abs(mean(M2region1day6(i,find(M2region1day6(i,1:4)<0))))<abs(mean(M2region1day6(i,find(M2region1day6(i,1:4)>0))))
            M2region1day6(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0501=[];
for i=1:length(M2region1day6)
    if M2region1day6(i,6)==-1
       a=find(s0501==M2region1day6(i,5));
       unbiased_currentoutcome_signerror_0501(a,:)=-unbiased_currentoutcome0501(a,:);
    end
end
unbiased_currentoutcome_signerror_0501(all(unbiased_currentoutcome_signerror_0501==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0501=[];
for i=1:length(M2region1day6)
    if M2region1day6(i,6)==-1
       a=find(s0501==M2region1day6(i,5));
       unbiased_currentoutcome_error_0501(a,:)=unbiased_currentoutcome0501(a,:);
    end
end
unbiased_currentoutcome_error_0501(all(unbiased_currentoutcome_error_0501==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0501=[];
for i=1:length(M2region1day6)
    if M2region1day6(i,6)==1
       a=find(s0501==M2region1day6(i,5));
       unbiased_currentoutcome_signcorrect_0501(a,:)=unbiased_currentoutcome0501(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0501(all(unbiased_currentoutcome_signcorrect_0501==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0501=[];
for i=1:length(M2region1day6)
    if M2region1day6(i,6)==1
       a=find(s0501==M2region1day6(i,5));
       unbiased_currentoutcome_correct_0501(a,:)=unbiased_currentoutcome0501(a,:);
    end
end
unbiased_currentoutcome_correct_0501(all(unbiased_currentoutcome_correct_0501==0,2),:) = [];

%%0502
load('L:\Monkey2\region1\20220502\proportions_of_cells_encoding_current_trials_outcome_20220502.mat');
iscell=readNPY('L:\Monkey2\region1\20220502\iscell.npy');
s0502=find(iscell(:,1)==1);
M2_region1_day7_4stages=union(union(union(M2region1stage1day7index,M2region1stage2day7index),M2region1stage3day7index),M2region1stage4day7index);
M2_region1_day7_0stage=setdiff(M2region1stage1day7diff_ratio_deltaF(:,1),M2_region1_day7_4stages);
for cell_num=1:length(M2_region1_day7_4stages)
    M2region1stage1day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage1day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))))-mean(M2region1stage1day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))));
    M2region1stage1day7_difference_struct=cell2mat(struct2cell(M2region1stage1day7_difference));
    
    M2region1stage2day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage2day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))))-mean(M2region1stage2day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))));
    M2region1stage2day7_difference_struct=cell2mat(struct2cell(M2region1stage2day7_difference));
    
    M2region1stage3day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))))-mean(M2region1stage3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))));
    M2region1stage3day7_difference_struct=cell2mat(struct2cell(M2region1stage3day7_difference));
    
    M2region1stage4day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region1stage4day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))))-mean(M2region1stage4day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region1_day7_4stages(cell_num))));
    M2region1stage4day7_difference_struct=cell2mat(struct2cell(M2region1stage4day7_difference));
end
M2region1day7=[M2region1stage1day7_difference_struct M2region1stage2day7_difference_struct M2region1stage3day7_difference_struct M2region1stage4day7_difference_struct M2_region1_day7_4stages];
for i=1:length(M2region1day7)
    
    if sum(M2region1day7(i,1:4)<0)>sum(M2region1day7(i,1:4)>0)
        M2region1day7(i,6)=-1;
    elseif sum(M2region1day7(i,1:4)<0)<sum(M2region1day7(i,1:4)>0)
        M2region1day7(i,6)=1;
    elseif sum(M2region1day7(i,1:4)<0)==sum(M2region1day7(i,1:4)>0)
        if abs(mean(M2region1day7(i,find(M2region1day7(i,1:4)<0))))>abs(mean(M2region1day7(i,find(M2region1day7(i,1:4)>0))))
            M2region1day7(i,6)=-1;
        elseif abs(mean(M2region1day7(i,find(M2region1day7(i,1:4)<0))))<abs(mean(M2region1day7(i,find(M2region1day7(i,1:4)>0))))
            M2region1day7(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0502=[];
for i=1:length(M2region1day7)
    if M2region1day7(i,6)==-1
       a=find(s0502==M2region1day7(i,5));
       unbiased_currentoutcome_signerror_0502(a,:)=-unbiased_currentoutcome0502(a,:);
    end
end
unbiased_currentoutcome_signerror_0502(all(unbiased_currentoutcome_signerror_0502==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0502=[];
for i=1:length(M2region1day7)
    if M2region1day7(i,6)==-1
       a=find(s0502==M2region1day7(i,5));
       unbiased_currentoutcome_error_0502(a,:)=unbiased_currentoutcome0502(a,:);
    end
end
unbiased_currentoutcome_error_0502(all(unbiased_currentoutcome_error_0502==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0502=[];
for i=1:length(M2region1day7)
    if M2region1day7(i,6)==1
       a=find(s0502==M2region1day7(i,5));
       unbiased_currentoutcome_signcorrect_0502(a,:)=unbiased_currentoutcome0502(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0502(all(unbiased_currentoutcome_signcorrect_0502==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0502=[];
for i=1:length(M2region1day7)
    if M2region1day7(i,6)==1
       a=find(s0502==M2region1day7(i,5));
       unbiased_currentoutcome_correct_0502(a,:)=unbiased_currentoutcome0502(a,:);
    end
end
unbiased_currentoutcome_correct_0502(all(unbiased_currentoutcome_correct_0502==0,2),:) = [];

%%M2_region2_day1
load('L:\Monkey2\region2\20220503\proportions_of_cells_encoding_current_trials_outcome_20220503.mat');
iscell=readNPY('L:\Monkey2\region2\20220503\iscell.npy');
s0503=find(iscell(:,1)==1);


M2_region2_day1_4stages=union(union(union(M2region2stage1day1index,M2region2stage2day1index),M2region2stage3day1index),M2region2stage4day1index);
M2_region2_day1_0stage=setdiff(M2region2stage1day1diff_ratio_deltaF(:,1),M2_region2_day1_4stages);


for cell_num=1:length(M2_region2_day1_4stages)
    M2region2stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))))-mean(M2region2stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))));
    M2region2stage1day1_difference_struct=cell2mat(struct2cell(M2region2stage1day1_difference));
    
    M2region2stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))))-mean(M2region2stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))));
    M2region2stage2day1_difference_struct=cell2mat(struct2cell(M2region2stage2day1_difference));
    
    M2region2stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))))-mean(M2region2stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))));
    M2region2stage3day1_difference_struct=cell2mat(struct2cell(M2region2stage3day1_difference));
    
    M2region2stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))))-mean(M2region2stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day1_4stages(cell_num))));
    M2region2stage4day1_difference_struct=cell2mat(struct2cell(M2region2stage4day1_difference)); 
end
M2region2day1=[M2region2stage1day1_difference_struct M2region2stage2day1_difference_struct M2region2stage3day1_difference_struct M2region2stage4day1_difference_struct M2_region2_day1_4stages];
for i=1:length(M2region2day1)
    
    if sum(M2region2day1(i,1:4)<0)>sum(M2region2day1(i,1:4)>0)
        M2region2day1(i,6)=-1;
    elseif sum(M2region2day1(i,1:4)<0)<sum(M2region2day1(i,1:4)>0)
        M2region2day1(i,6)=1;
    elseif sum(M2region2day1(i,1:4)<0)==sum(M2region2day1(i,1:4)>0)
        if abs(mean(M2region2day1(i,find(M2region2day1(i,1:4)<0))))>abs(mean(M2region2day1(i,find(M2region2day1(i,1:4)>0))))
            M2region2day1(i,6)=-1;
        elseif abs(mean(M2region2day1(i,find(M2region2day1(i,1:4)<0))))<abs(mean(M2region2day1(i,find(M2region2day1(i,1:4)>0))))
            M2region2day1(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0503=[];
for i=1:length(M2region2day1)
    if M2region2day1(i,6)==-1
       a=find(s0503==M2region2day1(i,5));
       unbiased_currentoutcome_signerror_0503(a,:)=-unbiased_currentoutcome0503(a,:);
    end
end
unbiased_currentoutcome_signerror_0503(all(unbiased_currentoutcome_signerror_0503==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0503=[];
for i=1:length(M2region2day1)
    if M2region2day1(i,6)==-1
       a=find(s0503==M2region2day1(i,5));
       unbiased_currentoutcome_error_0503(a,:)=unbiased_currentoutcome0503(a,:);
    end
end
unbiased_currentoutcome_error_0503(all(unbiased_currentoutcome_error_0503==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0503=[];
for i=1:length(M2region2day1)
    if M2region2day1(i,6)==1
       a=find(s0503==M2region2day1(i,5));
       unbiased_currentoutcome_signcorrect_0503(a,:)=unbiased_currentoutcome0503(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0503(all(unbiased_currentoutcome_signcorrect_0503==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0503=[];
for i=1:length(M2region2day1)
    if M2region2day1(i,6)==1
       a=find(s0503==M2region2day1(i,5));
       unbiased_currentoutcome_correct_0503(a,:)=unbiased_currentoutcome0503(a,:);
    end
end
unbiased_currentoutcome_correct_0503(all(unbiased_currentoutcome_correct_0503==0,2),:) = [];



%%0504
load('L:\Monkey2\region2\20220504\proportions_of_cells_encoding_current_trials_outcome_20220504.mat');
iscell=readNPY('L:\Monkey2\region2\20220504\iscell.npy');
s0504=find(iscell(:,1)==1);
M2_region2_day2_4stages=union(union(union(M2region2stage1day2index,M2region2stage2day2index),M2region2stage3day2index),M2region2stage4day2index);
M2_region2_day2_0stage=setdiff(M2region2stage1day2diff_ratio_deltaF(:,1),M2_region2_day2_4stages);


for cell_num=1:length(M2_region2_day2_4stages)
    M2region2stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))))-mean(M2region2stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))));
    M2region2stage1day2_difference_struct=cell2mat(struct2cell(M2region2stage1day2_difference));
    
    M2region2stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))))-mean(M2region2stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))));
    M2region2stage2day2_difference_struct=cell2mat(struct2cell(M2region2stage2day2_difference));
    
    M2region2stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))))-mean(M2region2stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))));
    M2region2stage3day2_difference_struct=cell2mat(struct2cell(M2region2stage3day2_difference));
    
    M2region2stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))))-mean(M2region2stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day2_4stages(cell_num))));
    M2region2stage4day2_difference_struct=cell2mat(struct2cell(M2region2stage4day2_difference));
end
M2region2day2=[M2region2stage1day2_difference_struct M2region2stage2day2_difference_struct M2region2stage3day2_difference_struct M2region2stage4day2_difference_struct M2_region2_day2_4stages];
for i=1:length(M2region2day2)
    
    if sum(M2region2day2(i,1:4)<0)>sum(M2region2day2(i,1:4)>0)
        M2region2day2(i,6)=-1;
    elseif sum(M2region2day2(i,1:4)<0)<sum(M2region2day2(i,1:4)>0)
        M2region2day2(i,6)=1;
    elseif sum(M2region2day2(i,1:4)<0)==sum(M2region2day2(i,1:4)>0)
        if abs(mean(M2region2day2(i,find(M2region2day2(i,1:4)<0))))>abs(mean(M2region2day2(i,find(M2region2day2(i,1:4)>0))))
            M2region2day2(i,6)=-1;
        elseif abs(mean(M2region2day2(i,find(M2region2day2(i,1:4)<0))))<abs(mean(M2region2day2(i,find(M2region2day2(i,1:4)>0))))
            M2region2day2(i,6)=1;
        end
    end
end
%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0504=[];
for i=1:length(M2region2day2)
    if M2region2day2(i,6)==-1
       a=find(s0504==M2region2day2(i,5));
       unbiased_currentoutcome_signerror_0504(a,:)=-unbiased_currentoutcome0504(a,:);
    end
end
unbiased_currentoutcome_signerror_0504(all(unbiased_currentoutcome_signerror_0504==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0504=[];
for i=1:length(M2region2day2)
    if M2region2day2(i,6)==-1
       a=find(s0504==M2region2day2(i,5));
       unbiased_currentoutcome_error_0504(a,:)=unbiased_currentoutcome0504(a,:);
    end
end
unbiased_currentoutcome_error_0504(all(unbiased_currentoutcome_error_0504==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0504=[];
for i=1:length(M2region2day2)
    if M2region2day2(i,6)==1
       a=find(s0504==M2region2day2(i,5));
       unbiased_currentoutcome_signcorrect_0504(a,:)=unbiased_currentoutcome0504(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0504(all(unbiased_currentoutcome_signcorrect_0504==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0504=[];
for i=1:length(M2region2day2)
    if M2region2day2(i,6)==1
       a=find(s0504==M2region2day2(i,5));
       unbiased_currentoutcome_correct_0504(a,:)=unbiased_currentoutcome0504(a,:);
    end
end
unbiased_currentoutcome_correct_0504(all(unbiased_currentoutcome_correct_0504==0,2),:) = [];



%%0505
load('L:\Monkey2\region2\20220505\proportions_of_cells_encoding_current_trials_outcome_20220505.mat');
iscell=readNPY('L:\Monkey2\region2\20220505\iscell.npy');
s0505=find(iscell(:,1)==1);
M2_region2_day3_4stages=union(union(union(M2region2stage1day3index,M2region2stage2day3index),M2region2stage3day3index),M2region2stage4day3index);
M2_region2_day3_0stage=setdiff(M2region2stage1day3diff_ratio_deltaF(:,1),M2_region2_day3_4stages);


for cell_num=1:length(M2_region2_day3_4stages)
    M2region2stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))))-mean(M2region2stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))));
    M2region2stage1day3_difference_struct=cell2mat(struct2cell(M2region2stage1day3_difference));
    
    M2region2stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))))-mean(M2region2stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))));
    M2region2stage2day3_difference_struct=cell2mat(struct2cell(M2region2stage2day3_difference));
    
    M2region2stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))))-mean(M2region2stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))));
    M2region2stage3day3_difference_struct=cell2mat(struct2cell(M2region2stage3day3_difference));
    
    M2region2stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))))-mean(M2region2stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day3_4stages(cell_num))));
    M2region2stage4day3_difference_struct=cell2mat(struct2cell(M2region2stage4day3_difference));
end
M2region2day3=[M2region2stage1day3_difference_struct M2region2stage2day3_difference_struct M2region2stage3day3_difference_struct M2region2stage4day3_difference_struct M2_region2_day3_4stages];
for i=1:length(M2region2day3)
    
    if sum(M2region2day3(i,1:4)<0)>sum(M2region2day3(i,1:4)>0)
        M2region2day3(i,6)=-1;
    elseif sum(M2region2day3(i,1:4)<0)<sum(M2region2day3(i,1:4)>0)
        M2region2day3(i,6)=1;
    elseif sum(M2region2day3(i,1:4)<0)==sum(M2region2day3(i,1:4)>0)
        if abs(mean(M2region2day3(i,find(M2region2day3(i,1:4)<0))))>abs(mean(M2region2day3(i,find(M2region2day3(i,1:4)>0))))
            M2region2day3(i,6)=-1;
        elseif abs(mean(M2region2day3(i,find(M2region2day3(i,1:4)<0))))<abs(mean(M2region2day3(i,find(M2region2day3(i,1:4)>0))))
            M2region2day3(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0505=[];
for i=1:length(M2region2day3)
    if M2region2day3(i,6)==-1
       a=find(s0505==M2region2day3(i,5));
       unbiased_currentoutcome_signerror_0505(a,:)=-unbiased_currentoutcome0505(a,:);
    end
end
unbiased_currentoutcome_signerror_0505(all(unbiased_currentoutcome_signerror_0505==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0505=[];
for i=1:length(M2region2day3)
    if M2region2day3(i,6)==-1
       a=find(s0505==M2region2day3(i,5));
       unbiased_currentoutcome_error_0505(a,:)=unbiased_currentoutcome0505(a,:);
    end
end
unbiased_currentoutcome_error_0505(all(unbiased_currentoutcome_error_0505==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0505=[];
for i=1:length(M2region2day3)
    if M2region2day3(i,6)==1
       a=find(s0505==M2region2day3(i,5));
       unbiased_currentoutcome_signcorrect_0505(a,:)=unbiased_currentoutcome0505(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0505(all(unbiased_currentoutcome_signcorrect_0505==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0505=[];
for i=1:length(M2region2day3)
    if M2region2day3(i,6)==1
       a=find(s0505==M2region2day3(i,5));
       unbiased_currentoutcome_correct_0505(a,:)=unbiased_currentoutcome0505(a,:);
    end
end
unbiased_currentoutcome_correct_0505(all(unbiased_currentoutcome_correct_0505==0,2),:) = [];

%0506
load('L:\Monkey2\region2\20220506\proportions_of_cells_encoding_current_trials_outcome_20220506.mat');
iscell=readNPY('L:\Monkey2\region2\20220506\iscell.npy');
s0506=find(iscell(:,1)==1);
M2_region2_day4_4stages=union(union(union(M2region2stage1day4index,M2region2stage2day4index),M2region2stage3day4index),M2region2stage4day4index);
M2_region2_day4_0stage=setdiff(M2region2stage1day4diff_ratio_deltaF(:,1),M2_region2_day4_4stages);
for cell_num=1:length(M2_region2_day4_4stages)
    M2region2stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))))-mean(M2region2stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))));
    M2region2stage1day4_difference_struct=cell2mat(struct2cell(M2region2stage1day4_difference));
    
    M2region2stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))))-mean(M2region2stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))));
    M2region2stage2day4_difference_struct=cell2mat(struct2cell(M2region2stage2day4_difference));
    
    M2region2stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))))-mean(M2region2stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))));
    M2region2stage3day4_difference_struct=cell2mat(struct2cell(M2region2stage3day4_difference));
    
    M2region2stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region2stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))))-mean(M2region2stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region2_day4_4stages(cell_num))));
    M2region2stage4day4_difference_struct=cell2mat(struct2cell(M2region2stage4day4_difference));
end
M2region2day4=[M2region2stage1day4_difference_struct M2region2stage2day4_difference_struct M2region2stage3day4_difference_struct M2region2stage4day4_difference_struct M2_region2_day4_4stages];
for i=1:length(M2region2day4)
    
    if sum(M2region2day4(i,1:4)<0)>sum(M2region2day4(i,1:4)>0)
        M2region2day4(i,6)=-1;
    elseif sum(M2region2day4(i,1:4)<0)<sum(M2region2day4(i,1:4)>0)
        M2region2day4(i,6)=1;
    elseif sum(M2region2day4(i,1:4)<0)==sum(M2region2day4(i,1:4)>0)
        if abs(mean(M2region2day4(i,find(M2region2day4(i,1:4)<0))))>abs(mean(M2region2day4(i,find(M2region2day4(i,1:4)>0))))
            M2region2day4(i,6)=-1;
        elseif abs(mean(M2region2day4(i,find(M2region2day4(i,1:4)<0))))<abs(mean(M2region2day4(i,find(M2region2day4(i,1:4)>0))))
            M2region2day4(i,6)=1;
        end
    end
end
%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0506=[];
for i=1:length(M2region2day4)
    if M2region2day4(i,6)==-1
       a=find(s0506==M2region2day4(i,5));
       unbiased_currentoutcome_signerror_0506(a,:)=-unbiased_currentoutcome0506(a,:);
    end
end
unbiased_currentoutcome_signerror_0506(all(unbiased_currentoutcome_signerror_0506==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0506=[];
for i=1:length(M2region2day4)
    if M2region2day4(i,6)==-1
       a=find(s0506==M2region2day4(i,5));
       unbiased_currentoutcome_error_0506(a,:)=unbiased_currentoutcome0506(a,:);
    end
end
unbiased_currentoutcome_error_0506(all(unbiased_currentoutcome_error_0506==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0506=[];
for i=1:length(M2region2day4)
    if M2region2day4(i,6)==1
       a=find(s0506==M2region2day4(i,5));
       unbiased_currentoutcome_signcorrect_0506(a,:)=unbiased_currentoutcome0506(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0506(all(unbiased_currentoutcome_signcorrect_0506==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0506=[];
for i=1:length(M2region2day4)
    if M2region2day4(i,6)==1
       a=find(s0506==M2region2day4(i,5));
       unbiased_currentoutcome_correct_0506(a,:)=unbiased_currentoutcome0506(a,:);
    end
end
unbiased_currentoutcome_correct_0506(all(unbiased_currentoutcome_correct_0506==0,2),:) = [];


%%region3
load('L:\Monkey2\region3\20220507\proportions_of_cells_encoding_current_trials_outcome_20220507.mat');
iscell=readNPY('L:\Monkey2\region3\20220507\iscell.npy');
s0507=find(iscell(:,1)==1);
M2_region3_day1_4stages=union(union(union(M2region3stage1day1index,M2region3stage2day1index),M2region3stage3day1index),M2region3stage4day1index);
M2_region3_day1_0stage=setdiff(M2region3stage1day1diff_ratio_deltaF(:,1),M2_region3_day1_4stages);
for cell_num=1:length(M2_region3_day1_4stages)
    M2region3stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))))-mean(M2region3stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))));
    M2region3stage1day1_difference_struct=cell2mat(struct2cell(M2region3stage1day1_difference));
    
    M2region3stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))))-mean(M2region3stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))));
    M2region3stage2day1_difference_struct=cell2mat(struct2cell(M2region3stage2day1_difference));
    
    M2region3stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))))-mean(M2region3stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))));
    M2region3stage3day1_difference_struct=cell2mat(struct2cell(M2region3stage3day1_difference));
    
    M2region3stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))))-mean(M2region3stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day1_4stages(cell_num))));
    M2region3stage4day1_difference_struct=cell2mat(struct2cell(M2region3stage4day1_difference)); 
end
M2region3day1=[M2region3stage1day1_difference_struct M2region3stage2day1_difference_struct M2region3stage3day1_difference_struct M2region3stage4day1_difference_struct M2_region3_day1_4stages];
for i=1:length(M2region3day1)
    
    if sum(M2region3day1(i,1:4)<0)>sum(M2region3day1(i,1:4)>0)
        M2region3day1(i,6)=-1;
    elseif sum(M2region3day1(i,1:4)<0)<sum(M2region3day1(i,1:4)>0)
        M2region3day1(i,6)=1;
    elseif sum(M2region3day1(i,1:4)<0)==sum(M2region3day1(i,1:4)>0)
        if abs(mean(M2region3day1(i,find(M2region3day1(i,1:4)<0))))>abs(mean(M2region3day1(i,find(M2region3day1(i,1:4)>0))))
            M2region3day1(i,6)=-1;
        elseif abs(mean(M2region3day1(i,find(M2region3day1(i,1:4)<0))))<abs(mean(M2region3day1(i,find(M2region3day1(i,1:4)>0))))
            M2region3day1(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0507=[];
for i=1:length(M2region3day1)
    if M2region3day1(i,6)==-1
       a=find(s0507==M2region3day1(i,5));
       unbiased_currentoutcome_signerror_0507(a,:)=-unbiased_currentoutcome0507(a,:);
    end
end
unbiased_currentoutcome_signerror_0507(all(unbiased_currentoutcome_signerror_0507==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0507=[];
for i=1:length(M2region3day1)
    if M2region3day1(i,6)==-1
       a=find(s0507==M2region3day1(i,5));
       unbiased_currentoutcome_error_0507(a,:)=unbiased_currentoutcome0507(a,:);
    end
end
unbiased_currentoutcome_error_0507(all(unbiased_currentoutcome_error_0507==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0507=[];
for i=1:length(M2region3day1)
    if M2region3day1(i,6)==1
       a=find(s0507==M2region3day1(i,5));
       unbiased_currentoutcome_signcorrect_0507(a,:)=unbiased_currentoutcome0507(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0507(all(unbiased_currentoutcome_signcorrect_0507==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0507=[];
for i=1:length(M2region3day1)
    if M2region3day1(i,6)==1
       a=find(s0507==M2region3day1(i,5));
       unbiased_currentoutcome_correct_0507(a,:)=unbiased_currentoutcome0507(a,:);
    end
end
unbiased_currentoutcome_correct_0507(all(unbiased_currentoutcome_correct_0507==0,2),:) = [];

%%0508

load('L:\Monkey2\region3\20220508\proportions_of_cells_encoding_current_trials_outcome_20220508.mat');
iscell=readNPY('L:\Monkey2\region3\20220508\iscell.npy');
s0508=find(iscell(:,1)==1);

M2_region3_day2_4stages=union(union(union(M2region3stage1day2index,M2region3stage2day2index),M2region3stage3day2index),M2region3stage4day2index);
M2_region3_day2_0stage=setdiff(M2region3stage1day2diff_ratio_deltaF(:,1),M2_region3_day2_4stages);

for cell_num=1:length(M2_region3_day2_4stages)
    M2region3stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))))-mean(M2region3stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))));
    M2region3stage1day2_difference_struct=cell2mat(struct2cell(M2region3stage1day2_difference));
    
    M2region3stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))))-mean(M2region3stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))));
    M2region3stage2day2_difference_struct=cell2mat(struct2cell(M2region3stage2day2_difference));
    
    M2region3stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))))-mean(M2region3stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))));
    M2region3stage3day2_difference_struct=cell2mat(struct2cell(M2region3stage3day2_difference));
    
    M2region3stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))))-mean(M2region3stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day2_4stages(cell_num))));
    M2region3stage4day2_difference_struct=cell2mat(struct2cell(M2region3stage4day2_difference));
end
M2region3day2=[M2region3stage1day2_difference_struct M2region3stage2day2_difference_struct M2region3stage3day2_difference_struct M2region3stage4day2_difference_struct M2_region3_day2_4stages];
for i=1:length(M2region3day2)
    
    if sum(M2region3day2(i,1:4)<0)>sum(M2region3day2(i,1:4)>0)
        M2region3day2(i,6)=-1;
    elseif sum(M2region3day2(i,1:4)<0)<sum(M2region3day2(i,1:4)>0)
        M2region3day2(i,6)=1;
    elseif sum(M2region3day2(i,1:4)<0)==sum(M2region3day2(i,1:4)>0)
        if abs(mean(M2region3day2(i,find(M2region3day2(i,1:4)<0))))>abs(mean(M2region3day2(i,find(M2region3day2(i,1:4)>0))))
            M2region3day2(i,6)=-1;
        elseif abs(mean(M2region3day2(i,find(M2region3day2(i,1:4)<0))))<abs(mean(M2region3day2(i,find(M2region3day2(i,1:4)>0))))
            M2region3day2(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0508=[];
for i=1:length(M2region3day2)
    if M2region3day2(i,6)==-1
       a=find(s0508==M2region3day2(i,5));
       unbiased_currentoutcome_signerror_0508(a,:)=-unbiased_currentoutcome0508(a,:);
    end
end
unbiased_currentoutcome_signerror_0508(all(unbiased_currentoutcome_signerror_0508==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0508=[];
for i=1:length(M2region3day2)
    if M2region3day2(i,6)==-1
       a=find(s0508==M2region3day2(i,5));
       unbiased_currentoutcome_error_0508(a,:)=unbiased_currentoutcome0508(a,:);
    end
end
unbiased_currentoutcome_error_0508(all(unbiased_currentoutcome_error_0508==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0508=[];
for i=1:length(M2region3day2)
    if M2region3day2(i,6)==1
       a=find(s0508==M2region3day2(i,5));
       unbiased_currentoutcome_signcorrect_0508(a,:)=unbiased_currentoutcome0508(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0508(all(unbiased_currentoutcome_signcorrect_0508==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0508=[];
for i=1:length(M2region3day2)
    if M2region3day2(i,6)==1
       a=find(s0508==M2region3day2(i,5));
       unbiased_currentoutcome_correct_0508(a,:)=unbiased_currentoutcome0508(a,:);
    end
end
unbiased_currentoutcome_correct_0508(all(unbiased_currentoutcome_correct_0508==0,2),:) = []


%%0509


load('L:\Monkey2\region3\20220509\proportions_of_cells_encoding_current_trials_outcome_20220509.mat');
iscell=readNPY('L:\Monkey2\region3\20220509\iscell.npy');
s0509=find(iscell(:,1)==1);
M2_region3_day3_4stages=union(union(union(M2region3stage1day3index,M2region3stage2day3index),M2region3stage3day3index),M2region3stage4day3index);
M2_region3_day3_0stage=setdiff(M2region3stage1day3diff_ratio_deltaF(:,1),M2_region3_day3_4stages);
for cell_num=1:length(M2_region3_day3_4stages)
    M2region3stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))))-mean(M2region3stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))));
    M2region3stage1day3_difference_struct=cell2mat(struct2cell(M2region3stage1day3_difference));
    
    M2region3stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))))-mean(M2region3stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))));
    M2region3stage2day3_difference_struct=cell2mat(struct2cell(M2region3stage2day3_difference));
    
    M2region3stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))))-mean(M2region3stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))));
    M2region3stage3day3_difference_struct=cell2mat(struct2cell(M2region3stage3day3_difference));
    
    M2region3stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))))-mean(M2region3stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day3_4stages(cell_num))));
    M2region3stage4day3_difference_struct=cell2mat(struct2cell(M2region3stage4day3_difference));
end
M2region3day3=[M2region3stage1day3_difference_struct M2region3stage2day3_difference_struct M2region3stage3day3_difference_struct M2region3stage4day3_difference_struct M2_region3_day3_4stages];
for i=1:length(M2region3day3)
    
    if sum(M2region3day3(i,1:4)<0)>sum(M2region3day3(i,1:4)>0)
        M2region3day3(i,6)=-1;
    elseif sum(M2region3day3(i,1:4)<0)<sum(M2region3day3(i,1:4)>0)
        M2region3day3(i,6)=1;
    elseif sum(M2region3day3(i,1:4)<0)==sum(M2region3day3(i,1:4)>0)
        if abs(mean(M2region3day3(i,find(M2region3day3(i,1:4)<0))))>abs(mean(M2region3day3(i,find(M2region3day3(i,1:4)>0))))
            M2region3day3(i,6)=-1;
        elseif abs(mean(M2region3day3(i,find(M2region3day3(i,1:4)<0))))<abs(mean(M2region3day3(i,find(M2region3day3(i,1:4)>0))))
            M2region3day3(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0509=[];
for i=1:length(M2region3day3)
    if M2region3day3(i,6)==-1
       a=find(s0509==M2region3day3(i,5));
       unbiased_currentoutcome_signerror_0509(a,:)=-unbiased_currentoutcome0509(a,:);
    end
end
unbiased_currentoutcome_signerror_0509(all(unbiased_currentoutcome_signerror_0509==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0509=[];
for i=1:length(M2region3day3)
    if M2region3day3(i,6)==-1
       a=find(s0509==M2region3day3(i,5));
       unbiased_currentoutcome_error_0509(a,:)=unbiased_currentoutcome0509(a,:);
    end
end
unbiased_currentoutcome_error_0509(all(unbiased_currentoutcome_error_0509==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0509=[];
for i=1:length(M2region3day3)
    if M2region3day3(i,6)==1
       a=find(s0509==M2region3day3(i,5));
       unbiased_currentoutcome_signcorrect_0509(a,:)=unbiased_currentoutcome0509(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0509(all(unbiased_currentoutcome_signcorrect_0509==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0509=[];
for i=1:length(M2region3day3)
    if M2region3day3(i,6)==1
       a=find(s0509==M2region3day3(i,5));
       unbiased_currentoutcome_correct_0509(a,:)=unbiased_currentoutcome0509(a,:);
    end
end
unbiased_currentoutcome_correct_0509(all(unbiased_currentoutcome_correct_0509==0,2),:) = []



%%0510
load('L:\Monkey2\region3\20220510\proportions_of_cells_encoding_current_trials_outcome_20220510.mat');
iscell=readNPY('L:\Monkey2\region3\20220510\iscell.npy');
s0510=find(iscell(:,1)==1);
M2_region3_day4_4stages=union(union(union(M2region3stage1day4index,M2region3stage2day4index),M2region3stage3day4index),M2region3stage4day4index);
M2_region3_day4_0stage=setdiff(M2region3stage1day4diff_ratio_deltaF(:,1),M2_region3_day4_4stages);



for cell_num=1:length(M2_region3_day4_4stages)
    M2region3stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))))-mean(M2region3stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))));
    M2region3stage1day4_difference_struct=cell2mat(struct2cell(M2region3stage1day4_difference));
    
    M2region3stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))))-mean(M2region3stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))));
    M2region3stage2day4_difference_struct=cell2mat(struct2cell(M2region3stage2day4_difference));
    
    M2region3stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))))-mean(M2region3stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))));
    M2region3stage3day4_difference_struct=cell2mat(struct2cell(M2region3stage3day4_difference));
    
    M2region3stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))))-mean(M2region3stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day4_4stages(cell_num))));
    M2region3stage4day4_difference_struct=cell2mat(struct2cell(M2region3stage4day4_difference));
end
M2region3day4=[M2region3stage1day4_difference_struct M2region3stage2day4_difference_struct M2region3stage3day4_difference_struct M2region3stage4day4_difference_struct M2_region3_day4_4stages];
for i=1:length(M2region3day4)
    
    if sum(M2region3day4(i,1:4)<0)>sum(M2region3day4(i,1:4)>0)
        M2region3day4(i,6)=-1;
    elseif sum(M2region3day4(i,1:4)<0)<sum(M2region3day4(i,1:4)>0)
        M2region3day4(i,6)=1;
    elseif sum(M2region3day4(i,1:4)<0)==sum(M2region3day4(i,1:4)>0)
        if abs(mean(M2region3day4(i,find(M2region3day4(i,1:4)<0))))>abs(mean(M2region3day4(i,find(M2region3day4(i,1:4)>0))))
            M2region3day4(i,6)=-1;
        elseif abs(mean(M2region3day4(i,find(M2region3day4(i,1:4)<0))))<abs(mean(M2region3day4(i,find(M2region3day4(i,1:4)>0))))
            M2region3day4(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0510=[];
for i=1:length(M2region3day4)
    if M2region3day4(i,6)==-1
       a=find(s0510==M2region3day4(i,5));
       unbiased_currentoutcome_signerror_0510(a,:)=-unbiased_currentoutcome0510(a,:);
    end
end
unbiased_currentoutcome_signerror_0510(all(unbiased_currentoutcome_signerror_0510==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0510=[];
for i=1:length(M2region3day4)
    if M2region3day4(i,6)==-1
       a=find(s0510==M2region3day4(i,5));
       unbiased_currentoutcome_error_0510(a,:)=unbiased_currentoutcome0510(a,:);
    end
end
unbiased_currentoutcome_error_0510(all(unbiased_currentoutcome_error_0510==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0510=[];
for i=1:length(M2region3day4)
    if M2region3day4(i,6)==1
       a=find(s0510==M2region3day4(i,5));
       unbiased_currentoutcome_signcorrect_0510(a,:)=unbiased_currentoutcome0510(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0510(all(unbiased_currentoutcome_signcorrect_0510==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0510=[];
for i=1:length(M2region3day4)
    if M2region3day4(i,6)==1
       a=find(s0510==M2region3day4(i,5));
       unbiased_currentoutcome_correct_0510(a,:)=unbiased_currentoutcome0510(a,:);
    end
end
unbiased_currentoutcome_correct_0510(all(unbiased_currentoutcome_correct_0510==0,2),:) = []



%%0511
load('L:\Monkey2\region3\20220511\proportions_of_cells_encoding_current_trials_outcome_20220511.mat');
iscell=readNPY('L:\Monkey2\region3\20220511\iscell.npy');
s0511=find(iscell(:,1)==1);


M2_region3_day5_4stages=union(union(union(M2region3stage1day5index,M2region3stage2day5index),M2region3stage3day5index),M2region3stage4day5index);
M2_region3_day5_0stage=setdiff(M2region3stage1day5diff_ratio_deltaF(:,1),M2_region3_day5_4stages);

for cell_num=1:length(M2_region3_day5_4stages)
    M2region3stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))))-mean(M2region3stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))));
    M2region3stage1day5_difference_struct=cell2mat(struct2cell(M2region3stage1day5_difference));
    
    M2region3stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))))-mean(M2region3stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))));
    M2region3stage2day5_difference_struct=cell2mat(struct2cell(M2region3stage2day5_difference));
    
    M2region3stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))))-mean(M2region3stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))));
    M2region3stage3day5_difference_struct=cell2mat(struct2cell(M2region3stage3day5_difference));
    
    M2region3stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))))-mean(M2region3stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day5_4stages(cell_num))));
    M2region3stage4day5_difference_struct=cell2mat(struct2cell(M2region3stage4day5_difference));
end
M2region3day5=[M2region3stage1day5_difference_struct M2region3stage2day5_difference_struct M2region3stage3day5_difference_struct M2region3stage4day5_difference_struct M2_region3_day5_4stages];
for i=1:length(M2region3day5)
    
    if sum(M2region3day5(i,1:4)<0)>sum(M2region3day5(i,1:4)>0)
        M2region3day5(i,6)=-1;
    elseif sum(M2region3day5(i,1:4)<0)<sum(M2region3day5(i,1:4)>0)
        M2region3day5(i,6)=1;
    elseif sum(M2region3day5(i,1:4)<0)==sum(M2region3day5(i,1:4)>0)
        if abs(mean(M2region3day5(i,find(M2region3day5(i,1:4)<0))))>abs(mean(M2region3day5(i,find(M2region3day5(i,1:4)>0))))
            M2region3day5(i,6)=-1;
        elseif abs(mean(M2region3day5(i,find(M2region3day5(i,1:4)<0))))<abs(mean(M2region3day5(i,find(M2region3day5(i,1:4)>0))))
            M2region3day5(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0511=[];
for i=1:length(M2region3day5)
    if M2region3day5(i,6)==-1
       a=find(s0511==M2region3day5(i,5));
       unbiased_currentoutcome_signerror_0511(a,:)=-unbiased_currentoutcome0511(a,:);
    end
end
unbiased_currentoutcome_signerror_0511(all(unbiased_currentoutcome_signerror_0511==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0511=[];
for i=1:length(M2region3day5)
    if M2region3day5(i,6)==-1
       a=find(s0511==M2region3day5(i,5));
       unbiased_currentoutcome_error_0511(a,:)=unbiased_currentoutcome0511(a,:);
    end
end
unbiased_currentoutcome_error_0511(all(unbiased_currentoutcome_error_0511==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0511=[];
for i=1:length(M2region3day5)
    if M2region3day5(i,6)==1
       a=find(s0511==M2region3day5(i,5));
       unbiased_currentoutcome_signcorrect_0511(a,:)=unbiased_currentoutcome0511(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0511(all(unbiased_currentoutcome_signcorrect_0511==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0511=[];
for i=1:length(M2region3day5)
    if M2region3day5(i,6)==1
       a=find(s0511==M2region3day5(i,5));
       unbiased_currentoutcome_correct_0511(a,:)=unbiased_currentoutcome0511(a,:);
    end
end
unbiased_currentoutcome_correct_0511(all(unbiased_currentoutcome_correct_0511==0,2),:) = []

%%0512

load('L:\Monkey2\region3\20220512\proportions_of_cells_encoding_current_trials_outcome_20220512.mat');
iscell=readNPY('L:\Monkey2\region3\20220512\iscell.npy');
s0512=find(iscell(:,1)==1);
M2_region3_day6_4stages=union(union(union(M2region3stage1day6index,M2region3stage2day6index),M2region3stage3day6index),M2region3stage4day6index);
M2_region3_day6_0stage=setdiff(M2region3stage1day6diff_ratio_deltaF(:,1),M2_region3_day6_4stages);

for cell_num=1:length(M2_region3_day6_4stages)
    M2region3stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))))-mean(M2region3stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))));
    M2region3stage1day6_difference_struct=cell2mat(struct2cell(M2region3stage1day6_difference));
    
    M2region3stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))))-mean(M2region3stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))));
    M2region3stage2day6_difference_struct=cell2mat(struct2cell(M2region3stage2day6_difference));
    
    M2region3stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))))-mean(M2region3stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))));
    M2region3stage3day6_difference_struct=cell2mat(struct2cell(M2region3stage3day6_difference));
    
    M2region3stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))))-mean(M2region3stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day6_4stages(cell_num))));
    M2region3stage4day6_difference_struct=cell2mat(struct2cell(M2region3stage4day6_difference));
end
M2region3day6=[M2region3stage1day6_difference_struct M2region3stage2day6_difference_struct M2region3stage3day6_difference_struct M2region3stage4day6_difference_struct M2_region3_day6_4stages];
for i=1:length(M2region3day6)
    
    if sum(M2region3day6(i,1:4)<0)>sum(M2region3day6(i,1:4)>0)
        M2region3day6(i,6)=-1;
    elseif sum(M2region3day6(i,1:4)<0)<sum(M2region3day6(i,1:4)>0)
        M2region3day6(i,6)=1;
    elseif sum(M2region3day6(i,1:4)<0)==sum(M2region3day6(i,1:4)>0)
        if abs(mean(M2region3day6(i,find(M2region3day6(i,1:4)<0))))>abs(mean(M2region3day6(i,find(M2region3day6(i,1:4)>0))))
            M2region3day6(i,6)=-1;
        elseif abs(mean(M2region3day6(i,find(M2region3day6(i,1:4)<0))))<abs(mean(M2region3day6(i,find(M2region3day6(i,1:4)>0))))
            M2region3day6(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0512=[];
for i=1:length(M2region3day6)
    if M2region3day6(i,6)==-1
       a=find(s0512==M2region3day6(i,5));
       unbiased_currentoutcome_signerror_0512(a,:)=-unbiased_currentoutcome0512(a,:);
    end
end
unbiased_currentoutcome_signerror_0512(all(unbiased_currentoutcome_signerror_0512==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0512=[];
for i=1:length(M2region3day6)
    if M2region3day6(i,6)==-1
       a=find(s0512==M2region3day6(i,5));
       unbiased_currentoutcome_error_0512(a,:)=unbiased_currentoutcome0512(a,:);
    end
end
unbiased_currentoutcome_error_0512(all(unbiased_currentoutcome_error_0512==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0512=[];
for i=1:length(M2region3day6)
    if M2region3day6(i,6)==1
       a=find(s0512==M2region3day6(i,5));
       unbiased_currentoutcome_signcorrect_0512(a,:)=unbiased_currentoutcome0512(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0512(all(unbiased_currentoutcome_signcorrect_0512==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0512=[];
for i=1:length(M2region3day6)
    if M2region3day6(i,6)==1
       a=find(s0512==M2region3day6(i,5));
       unbiased_currentoutcome_correct_0512(a,:)=unbiased_currentoutcome0512(a,:);
    end
end
unbiased_currentoutcome_correct_0512(all(unbiased_currentoutcome_correct_0512==0,2),:) = []



%%0513

load('L:\Monkey2\region3\20220513\proportions_of_cells_encoding_current_trials_outcome_20220513.mat');
iscell=readNPY('L:\Monkey2\region3\20220513\iscell.npy');
s0513=find(iscell(:,1)==1);

M2_region3_day7_4stages=union(union(union(M2region3stage1day7index,M2region3stage2day7index),M2region3stage3day7index),M2region3stage4day7index);
M2_region3_day7_0stage=setdiff(M2region3stage1day7diff_ratio_deltaF(:,1),M2_region3_day7_4stages);

for cell_num=1:length(M2_region3_day7_4stages)
    M2region3stage1day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage1day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))))-mean(M2region3stage1day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))));
    M2region3stage1day7_difference_struct=cell2mat(struct2cell(M2region3stage1day7_difference));
    
    M2region3stage2day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage2day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))))-mean(M2region3stage2day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))));
    M2region3stage2day7_difference_struct=cell2mat(struct2cell(M2region3stage2day7_difference));
    
    M2region3stage3day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))))-mean(M2region3stage3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))));
    M2region3stage3day7_difference_struct=cell2mat(struct2cell(M2region3stage3day7_difference));
    
    M2region3stage4day7_difference.(sprintf('cell_%d',cell_num))=mean(M2region3stage4day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))))-mean(M2region3stage4day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region3_day7_4stages(cell_num))));
    M2region3stage4day7_difference_struct=cell2mat(struct2cell(M2region3stage4day7_difference));
end
M2region3day7=[M2region3stage1day7_difference_struct M2region3stage2day7_difference_struct M2region3stage3day7_difference_struct M2region3stage4day7_difference_struct M2_region3_day7_4stages];
for i=1:length(M2region3day7)
    
    if sum(M2region3day7(i,1:4)<0)>sum(M2region3day7(i,1:4)>0)
        M2region3day7(i,6)=-1;
    elseif sum(M2region3day7(i,1:4)<0)<sum(M2region3day7(i,1:4)>0)
        M2region3day7(i,6)=1;
    elseif sum(M2region3day7(i,1:4)<0)==sum(M2region3day7(i,1:4)>0)
        if abs(mean(M2region3day7(i,find(M2region3day7(i,1:4)<0))))>abs(mean(M2region3day7(i,find(M2region3day7(i,1:4)>0))))
            M2region3day7(i,6)=-1;
        elseif abs(mean(M2region3day7(i,find(M2region3day7(i,1:4)<0))))<abs(mean(M2region3day7(i,find(M2region3day7(i,1:4)>0))))
            M2region3day7(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0513=[];
for i=1:length(M2region3day7)
    if M2region3day7(i,6)==-1
       a=find(s0513==M2region3day7(i,5));
       unbiased_currentoutcome_signerror_0513(a,:)=-unbiased_currentoutcome0513(a,:);
    end
end
unbiased_currentoutcome_signerror_0513(all(unbiased_currentoutcome_signerror_0513==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0513=[];
for i=1:length(M2region3day7)
    if M2region3day7(i,6)==-1
       a=find(s0513==M2region3day7(i,5));
       unbiased_currentoutcome_error_0513(a,:)=unbiased_currentoutcome0513(a,:);
    end
end
unbiased_currentoutcome_error_0513(all(unbiased_currentoutcome_error_0513==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0513=[];
for i=1:length(M2region3day7)
    if M2region3day7(i,6)==1
       a=find(s0513==M2region3day7(i,5));
       unbiased_currentoutcome_signcorrect_0513(a,:)=unbiased_currentoutcome0513(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0513(all(unbiased_currentoutcome_signcorrect_0513==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0513=[];
for i=1:length(M2region3day7)
    if M2region3day7(i,6)==1
       a=find(s0513==M2region3day7(i,5));
       unbiased_currentoutcome_correct_0513(a,:)=unbiased_currentoutcome0513(a,:);
    end
end
unbiased_currentoutcome_correct_0513(all(unbiased_currentoutcome_correct_0513==0,2),:) = []


%%region4_0517
load('L:\Monkey2\region4\20220517\proportions_of_cells_encoding_current_trials_outcome_20220517.mat');
iscell=readNPY('L:\Monkey2\region4\20220517\iscell.npy');
s0517=find(iscell(:,1)==1);
M2_region4_day1_4stages=union(union(union(M2region4stage1day1index,M2region4stage2day1index),M2region4stage3day1index),M2region4stage4day1index);
M2_region4_day1_0stage=setdiff(M2region4stage1day1diff_ratio_deltaF(:,1),M2_region4_day1_4stages);




for cell_num=1:length(M2_region4_day1_4stages)
    M2region4stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))))-mean(M2region4stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))));
    M2region4stage1day1_difference_struct=cell2mat(struct2cell(M2region4stage1day1_difference));
    
    M2region4stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))))-mean(M2region4stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))));
    M2region4stage2day1_difference_struct=cell2mat(struct2cell(M2region4stage2day1_difference));
    
    M2region4stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))))-mean(M2region4stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))));
    M2region4stage3day1_difference_struct=cell2mat(struct2cell(M2region4stage3day1_difference));
    
    M2region4stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))))-mean(M2region4stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day1_4stages(cell_num))));
    M2region4stage4day1_difference_struct=cell2mat(struct2cell(M2region4stage4day1_difference)); 
end
M2region4day1=[M2region4stage1day1_difference_struct M2region4stage2day1_difference_struct M2region4stage3day1_difference_struct M2region4stage4day1_difference_struct M2_region4_day1_4stages];
for i=1:length(M2region4day1)
    
    if sum(M2region4day1(i,1:4)<0)>sum(M2region4day1(i,1:4)>0)
        M2region4day1(i,6)=-1;
    elseif sum(M2region4day1(i,1:4)<0)<sum(M2region4day1(i,1:4)>0)
        M2region4day1(i,6)=1;
    elseif sum(M2region4day1(i,1:4)<0)==sum(M2region4day1(i,1:4)>0)
        if abs(mean(M2region4day1(i,find(M2region4day1(i,1:4)<0))))>abs(mean(M2region4day1(i,find(M2region4day1(i,1:4)>0))))
            M2region4day1(i,6)=-1;
        elseif abs(mean(M2region4day1(i,find(M2region4day1(i,1:4)<0))))<abs(mean(M2region4day1(i,find(M2region4day1(i,1:4)>0))))
            M2region4day1(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0517=[];
for i=1:length(M2region4day1)
    if M2region4day1(i,6)==-1
       a=find(s0517==M2region4day1(i,5));
       unbiased_currentoutcome_signerror_0517(a,:)=-unbiased_currentoutcome0517(a,:);
    end
end
unbiased_currentoutcome_signerror_0517(all(unbiased_currentoutcome_signerror_0517==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0517=[];
for i=1:length(M2region4day1)
    if M2region4day1(i,6)==-1
       a=find(s0517==M2region4day1(i,5));
       unbiased_currentoutcome_error_0517(a,:)=unbiased_currentoutcome0517(a,:);
    end
end
unbiased_currentoutcome_error_0517(all(unbiased_currentoutcome_error_0517==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0517=[];
for i=1:length(M2region4day1)
    if M2region4day1(i,6)==1
       a=find(s0517==M2region4day1(i,5));
       unbiased_currentoutcome_signcorrect_0517(a,:)=unbiased_currentoutcome0517(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0517(all(unbiased_currentoutcome_signcorrect_0517==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0517=[];
for i=1:length(M2region4day1)
    if M2region4day1(i,6)==1
       a=find(s0517==M2region4day1(i,5));
       unbiased_currentoutcome_correct_0517(a,:)=unbiased_currentoutcome0517(a,:);
    end
end
unbiased_currentoutcome_correct_0517(all(unbiased_currentoutcome_correct_0517==0,2),:) = [];

%%0518

load('L:\Monkey2\region4\20220518\proportions_of_cells_encoding_current_trials_outcome_20220518.mat');
iscell=readNPY('L:\Monkey2\region4\20220518\iscell.npy');
s0518=find(iscell(:,1)==1);


M2_region4_day2_4stages=union(union(union(M2region4stage1day2index,M2region4stage2day2index),M2region4stage3day2index),M2region4stage4day2index);
M2_region4_day2_0stage=setdiff(M2region4stage1day2diff_ratio_deltaF(:,1),M2_region4_day2_4stages);

for cell_num=1:length(M2_region4_day2_4stages)
    M2region4stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))))-mean(M2region4stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))));
    M2region4stage1day2_difference_struct=cell2mat(struct2cell(M2region4stage1day2_difference));
    
    M2region4stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))))-mean(M2region4stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))));
    M2region4stage2day2_difference_struct=cell2mat(struct2cell(M2region4stage2day2_difference));
    
    M2region4stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))))-mean(M2region4stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))));
    M2region4stage3day2_difference_struct=cell2mat(struct2cell(M2region4stage3day2_difference));
    
    M2region4stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))))-mean(M2region4stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day2_4stages(cell_num))));
    M2region4stage4day2_difference_struct=cell2mat(struct2cell(M2region4stage4day2_difference));
end
M2region4day2=[M2region4stage1day2_difference_struct M2region4stage2day2_difference_struct M2region4stage3day2_difference_struct M2region4stage4day2_difference_struct M2_region4_day2_4stages];
for i=1:length(M2region4day2)
    
    if sum(M2region4day2(i,1:4)<0)>sum(M2region4day2(i,1:4)>0)
        M2region4day2(i,6)=-1;
    elseif sum(M2region4day2(i,1:4)<0)<sum(M2region4day2(i,1:4)>0)
        M2region4day2(i,6)=1;
    elseif sum(M2region4day2(i,1:4)<0)==sum(M2region4day2(i,1:4)>0)
        if abs(mean(M2region4day2(i,find(M2region4day2(i,1:4)<0))))>abs(mean(M2region4day2(i,find(M2region4day2(i,1:4)>0))))
            M2region4day2(i,6)=-1;
        elseif abs(mean(M2region4day2(i,find(M2region4day2(i,1:4)<0))))<abs(mean(M2region4day2(i,find(M2region4day2(i,1:4)>0))))
            M2region4day2(i,6)=1;
        end
    end
end
%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0518=[];
for i=1:length(M2region4day2)
    if M2region4day2(i,6)==-1
       a=find(s0518==M2region4day2(i,5));
       unbiased_currentoutcome_signerror_0518(a,:)=-unbiased_currentoutcome0518(a,:);
    end
end
unbiased_currentoutcome_signerror_0518(all(unbiased_currentoutcome_signerror_0518==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0518=[];
for i=1:length(M2region4day2)
    if M2region4day2(i,6)==-1
       a=find(s0518==M2region4day2(i,5));
       unbiased_currentoutcome_error_0518(a,:)=unbiased_currentoutcome0518(a,:);
    end
end
unbiased_currentoutcome_error_0518(all(unbiased_currentoutcome_error_0518==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0518=[];
for i=1:length(M2region4day2)
    if M2region4day2(i,6)==1
       a=find(s0518==M2region4day2(i,5));
       unbiased_currentoutcome_signcorrect_0518(a,:)=unbiased_currentoutcome0518(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0518(all(unbiased_currentoutcome_signcorrect_0518==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0518=[];
for i=1:length(M2region4day2)
    if M2region4day2(i,6)==1
       a=find(s0518==M2region4day2(i,5));
       unbiased_currentoutcome_correct_0518(a,:)=unbiased_currentoutcome0518(a,:);
    end
end
unbiased_currentoutcome_correct_0518(all(unbiased_currentoutcome_correct_0518==0,2),:) = []




%0519
load('L:\Monkey2\region4\20220519\proportions_of_cells_encoding_current_trials_outcome_20220519.mat');
iscell=readNPY('L:\Monkey2\region4\20220519\iscell.npy');
s0519=find(iscell(:,1)==1);

M2_region4_day3_4stages=union(union(union(M2region4stage1day3index,M2region4stage2day3index),M2region4stage3day3index),M2region4stage4day3index);
M2_region4_day3_0stage=setdiff(M2region4stage1day3diff_ratio_deltaF(:,1),M2_region4_day3_4stages);

for cell_num=1:length(M2_region4_day3_4stages)
    M2region4stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))))-mean(M2region4stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))));
    M2region4stage1day3_difference_struct=cell2mat(struct2cell(M2region4stage1day3_difference));
    
    M2region4stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))))-mean(M2region4stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))));
    M2region4stage2day3_difference_struct=cell2mat(struct2cell(M2region4stage2day3_difference));
    
    M2region4stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))))-mean(M2region4stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))));
    M2region4stage3day3_difference_struct=cell2mat(struct2cell(M2region4stage3day3_difference));
    
    M2region4stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region4stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))))-mean(M2region4stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region4_day3_4stages(cell_num))));
    M2region4stage4day3_difference_struct=cell2mat(struct2cell(M2region4stage4day3_difference));
end
M2region4day3=[M2region4stage1day3_difference_struct M2region4stage2day3_difference_struct M2region4stage3day3_difference_struct M2region4stage4day3_difference_struct M2_region4_day3_4stages];
for i=1:length(M2region4day3)
    
    if sum(M2region4day3(i,1:4)<0)>sum(M2region4day3(i,1:4)>0)
        M2region4day3(i,6)=-1;
    elseif sum(M2region4day3(i,1:4)<0)<sum(M2region4day3(i,1:4)>0)
        M2region4day3(i,6)=1;
    elseif sum(M2region4day3(i,1:4)<0)==sum(M2region4day3(i,1:4)>0)
        if abs(mean(M2region4day3(i,find(M2region4day3(i,1:4)<0))))>abs(mean(M2region4day3(i,find(M2region4day3(i,1:4)>0))))
            M2region4day3(i,6)=-1;
        elseif abs(mean(M2region4day3(i,find(M2region4day3(i,1:4)<0))))<abs(mean(M2region4day3(i,find(M2region4day3(i,1:4)>0))))
            M2region4day3(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0519=[];
for i=1:length(M2region4day3)
    if M2region4day3(i,6)==-1
       a=find(s0519==M2region4day3(i,5));
       unbiased_currentoutcome_signerror_0519(a,:)=-unbiased_currentoutcome0519(a,:);
    end
end
unbiased_currentoutcome_signerror_0519(all(unbiased_currentoutcome_signerror_0519==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0519=[];
for i=1:length(M2region4day3)
    if M2region4day3(i,6)==-1
       a=find(s0519==M2region4day3(i,5));
       unbiased_currentoutcome_error_0519(a,:)=unbiased_currentoutcome0519(a,:);
    end
end
unbiased_currentoutcome_error_0519(all(unbiased_currentoutcome_error_0519==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0519=[];
for i=1:length(M2region4day3)
    if M2region4day3(i,6)==1
       a=find(s0519==M2region4day3(i,5));
       unbiased_currentoutcome_signcorrect_0519(a,:)=unbiased_currentoutcome0519(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0519(all(unbiased_currentoutcome_signcorrect_0519==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0519=[];
for i=1:length(M2region4day3)
    if M2region4day3(i,6)==1
       a=find(s0519==M2region4day3(i,5));
       unbiased_currentoutcome_correct_0519(a,:)=unbiased_currentoutcome0519(a,:);
    end
end
unbiased_currentoutcome_correct_0519(all(unbiased_currentoutcome_correct_0519==0,2),:) = [];


%%region5_0524
load('L:\Monkey2\region5\20220524\proportions_of_cells_encoding_current_trials_outcome_20220524.mat');
iscell=readNPY('L:\Monkey2\region5\20220524\iscell.npy');
s0524=find(iscell(:,1)==1);



M2_region5_day1_4stages=union(union(union(M2region5stage1day1index,M2region5stage2day1index),M2region5stage3day1index),M2region5stage4day1index);
M2_region5_day1_0stage=setdiff(M2region5stage1day1diff_ratio_deltaF(:,1),M2_region5_day1_4stages);

for cell_num=1:length(M2_region5_day1_4stages)
    M2region5stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))))-mean(M2region5stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))));
    M2region5stage1day1_difference_struct=cell2mat(struct2cell(M2region5stage1day1_difference));
    
    M2region5stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))))-mean(M2region5stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))));
    M2region5stage2day1_difference_struct=cell2mat(struct2cell(M2region5stage2day1_difference));
    
    M2region5stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))))-mean(M2region5stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))));
    M2region5stage3day1_difference_struct=cell2mat(struct2cell(M2region5stage3day1_difference));
    
    M2region5stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))))-mean(M2region5stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day1_4stages(cell_num))));
    M2region5stage4day1_difference_struct=cell2mat(struct2cell(M2region5stage4day1_difference)); 
end
M2region5day1=[M2region5stage1day1_difference_struct M2region5stage2day1_difference_struct M2region5stage3day1_difference_struct M2region5stage4day1_difference_struct M2_region5_day1_4stages];
for i=1:length(M2region5day1)
    
    if sum(M2region5day1(i,1:4)<0)>sum(M2region5day1(i,1:4)>0)
        M2region5day1(i,6)=-1;
    elseif sum(M2region5day1(i,1:4)<0)<sum(M2region5day1(i,1:4)>0)
        M2region5day1(i,6)=1;
    elseif sum(M2region5day1(i,1:4)<0)==sum(M2region5day1(i,1:4)>0)
        if abs(mean(M2region5day1(i,find(M2region5day1(i,1:4)<0))))>abs(mean(M2region5day1(i,find(M2region5day1(i,1:4)>0))))
            M2region5day1(i,6)=-1;
        elseif abs(mean(M2region5day1(i,find(M2region5day1(i,1:4)<0))))<abs(mean(M2region5day1(i,find(M2region5day1(i,1:4)>0))))
            M2region5day1(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0524=[];
for i=1:length(M2region5day1)
    if M2region5day1(i,6)==-1
       a=find(s0524==M2region5day1(i,5));
       unbiased_currentoutcome_signerror_0524(a,:)=-unbiased_currentoutcome0524(a,:);
    end
end
unbiased_currentoutcome_signerror_0524(all(unbiased_currentoutcome_signerror_0524==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0524=[];
for i=1:length(M2region5day1)
    if M2region5day1(i,6)==-1
       a=find(s0524==M2region5day1(i,5));
       unbiased_currentoutcome_error_0524(a,:)=unbiased_currentoutcome0524(a,:);
    end
end
unbiased_currentoutcome_error_0524(all(unbiased_currentoutcome_error_0524==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0524=[];
for i=1:length(M2region5day1)
    if M2region5day1(i,6)==1
       a=find(s0524==M2region5day1(i,5));
       unbiased_currentoutcome_signcorrect_0524(a,:)=unbiased_currentoutcome0524(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0524(all(unbiased_currentoutcome_signcorrect_0524==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0524=[];
for i=1:length(M2region5day1)
    if M2region5day1(i,6)==1
       a=find(s0524==M2region5day1(i,5));
       unbiased_currentoutcome_correct_0524(a,:)=unbiased_currentoutcome0524(a,:);
    end
end
unbiased_currentoutcome_correct_0524(all(unbiased_currentoutcome_correct_0524==0,2),:) = [];

%%0526

load('L:\Monkey2\region5\20220526\proportions_of_cells_encoding_current_trials_outcome_20220526.mat');
iscell=readNPY('L:\Monkey2\region5\20220526\iscell.npy');
s0526=find(iscell(:,1)==1);

M2_region5_day2_4stages=union(union(union(M2region5stage1day2index,M2region5stage2day2index),M2region5stage3day2index),M2region5stage4day2index);
M2_region5_day2_0stage=setdiff(M2region5stage1day2diff_ratio_deltaF(:,1),M2_region5_day2_4stages);


for cell_num=1:length(M2_region5_day2_4stages)
    M2region5stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))))-mean(M2region5stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))));
    M2region5stage1day2_difference_struct=cell2mat(struct2cell(M2region5stage1day2_difference));
    
    M2region5stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))))-mean(M2region5stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))));
    M2region5stage2day2_difference_struct=cell2mat(struct2cell(M2region5stage2day2_difference));
    
    M2region5stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))))-mean(M2region5stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))));
    M2region5stage3day2_difference_struct=cell2mat(struct2cell(M2region5stage3day2_difference));
    
    M2region5stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))))-mean(M2region5stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day2_4stages(cell_num))));
    M2region5stage4day2_difference_struct=cell2mat(struct2cell(M2region5stage4day2_difference));
end
M2region5day2=[M2region5stage1day2_difference_struct M2region5stage2day2_difference_struct M2region5stage3day2_difference_struct M2region5stage4day2_difference_struct M2_region5_day2_4stages];
for i=1:length(M2region5day2)
    
    if sum(M2region5day2(i,1:4)<0)>sum(M2region5day2(i,1:4)>0)
        M2region5day2(i,6)=-1;
    elseif sum(M2region5day2(i,1:4)<0)<sum(M2region5day2(i,1:4)>0)
        M2region5day2(i,6)=1;
    elseif sum(M2region5day2(i,1:4)<0)==sum(M2region5day2(i,1:4)>0)
        if abs(mean(M2region5day2(i,find(M2region5day2(i,1:4)<0))))>abs(mean(M2region5day2(i,find(M2region5day2(i,1:4)>0))))
            M2region5day2(i,6)=-1;
        elseif abs(mean(M2region5day2(i,find(M2region5day2(i,1:4)<0))))<abs(mean(M2region5day2(i,find(M2region5day2(i,1:4)>0))))
            M2region5day2(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0526=[];
for i=1:length(M2region5day2)
    if M2region5day2(i,6)==-1
       a=find(s0526==M2region5day2(i,5));
       unbiased_currentoutcome_signerror_0526(a,:)=-unbiased_currentoutcome0526(a,:);
    end
end
unbiased_currentoutcome_signerror_0526(all(unbiased_currentoutcome_signerror_0526==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0526=[];
for i=1:length(M2region5day2)
    if M2region5day2(i,6)==-1
       a=find(s0526==M2region5day2(i,5));
       unbiased_currentoutcome_error_0526(a,:)=unbiased_currentoutcome0526(a,:);
    end
end
unbiased_currentoutcome_error_0526(all(unbiased_currentoutcome_error_0526==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0526=[];
for i=1:length(M2region5day2)
    if M2region5day2(i,6)==1
       a=find(s0526==M2region5day2(i,5));
       unbiased_currentoutcome_signcorrect_0526(a,:)=unbiased_currentoutcome0526(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0526(all(unbiased_currentoutcome_signcorrect_0526==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0526=[];
for i=1:length(M2region5day2)
    if M2region5day2(i,6)==1
       a=find(s0526==M2region5day2(i,5));
       unbiased_currentoutcome_correct_0526(a,:)=unbiased_currentoutcome0526(a,:);
    end
end
unbiased_currentoutcome_correct_0526(all(unbiased_currentoutcome_correct_0526==0,2),:) = [];


%0527


load('L:\Monkey2\region5\20220527\proportions_of_cells_encoding_current_trials_outcome_20220527.mat');
iscell=readNPY('L:\Monkey2\region5\20220527\iscell.npy');
s0527=find(iscell(:,1)==1);


M2_region5_day3_4stages=union(union(union(M2region5stage1day3index,M2region5stage2day3index),M2region5stage3day3index),M2region5stage4day3index);
M2_region5_day3_0stage=setdiff(M2region5stage1day3diff_ratio_deltaF(:,1),M2_region5_day3_4stages);

for cell_num=1:length(M2_region5_day3_4stages)
    M2region5stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))))-mean(M2region5stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))));
    M2region5stage1day3_difference_struct=cell2mat(struct2cell(M2region5stage1day3_difference));
    
    M2region5stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))))-mean(M2region5stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))));
    M2region5stage2day3_difference_struct=cell2mat(struct2cell(M2region5stage2day3_difference));
    
    M2region5stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))))-mean(M2region5stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))));
    M2region5stage3day3_difference_struct=cell2mat(struct2cell(M2region5stage3day3_difference));
    
    M2region5stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))))-mean(M2region5stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day3_4stages(cell_num))));
    M2region5stage4day3_difference_struct=cell2mat(struct2cell(M2region5stage4day3_difference));
end
M2region5day3=[M2region5stage1day3_difference_struct M2region5stage2day3_difference_struct M2region5stage3day3_difference_struct M2region5stage4day3_difference_struct M2_region5_day3_4stages];
for i=1:length(M2region5day3)
    
    if sum(M2region5day3(i,1:4)<0)>sum(M2region5day3(i,1:4)>0)
        M2region5day3(i,6)=-1;
    elseif sum(M2region5day3(i,1:4)<0)<sum(M2region5day3(i,1:4)>0)
        M2region5day3(i,6)=1;
    elseif sum(M2region5day3(i,1:4)<0)==sum(M2region5day3(i,1:4)>0)
        if abs(mean(M2region5day3(i,find(M2region5day3(i,1:4)<0))))>abs(mean(M2region5day3(i,find(M2region5day3(i,1:4)>0))))
            M2region5day3(i,6)=-1;
        elseif abs(mean(M2region5day3(i,find(M2region5day3(i,1:4)<0))))<abs(mean(M2region5day3(i,find(M2region5day3(i,1:4)>0))))
            M2region5day3(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0527=[];
for i=1:length(M2region5day3)
    if M2region5day3(i,6)==-1
       a=find(s0527==M2region5day3(i,5));
       unbiased_currentoutcome_signerror_0527(a,:)=-unbiased_currentoutcome0527(a,:);
    end
end
unbiased_currentoutcome_signerror_0527(all(unbiased_currentoutcome_signerror_0527==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0527=[];
for i=1:length(M2region5day3)
    if M2region5day3(i,6)==-1
       a=find(s0527==M2region5day3(i,5));
       unbiased_currentoutcome_error_0527(a,:)=unbiased_currentoutcome0527(a,:);
    end
end
unbiased_currentoutcome_error_0527(all(unbiased_currentoutcome_error_0527==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0527=[];
for i=1:length(M2region5day3)
    if M2region5day3(i,6)==1
       a=find(s0527==M2region5day3(i,5));
       unbiased_currentoutcome_signcorrect_0527(a,:)=unbiased_currentoutcome0527(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0527(all(unbiased_currentoutcome_signcorrect_0527==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0527=[];
for i=1:length(M2region5day3)
    if M2region5day3(i,6)==1
       a=find(s0527==M2region5day3(i,5));
       unbiased_currentoutcome_correct_0527(a,:)=unbiased_currentoutcome0527(a,:);
    end
end
unbiased_currentoutcome_correct_0527(all(unbiased_currentoutcome_correct_0527==0,2),:) = [];


%0528


load('L:\Monkey2\region5\20220528\proportions_of_cells_encoding_current_trials_outcome_20220528.mat');
iscell=readNPY('L:\Monkey2\region5\20220528\iscell.npy');
s0528=find(iscell(:,1)==1);

M2_region5_day4_4stages=union(union(union(M2region5stage1day4index,M2region5stage2day4index),M2region5stage3day4index),M2region5stage4day4index);
M2_region5_day4_0stage=setdiff(M2region5stage1day4diff_ratio_deltaF(:,1),M2_region5_day4_4stages);


for cell_num=1:length(M2_region5_day4_4stages)
    M2region5stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))))-mean(M2region5stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))));
    M2region5stage1day4_difference_struct=cell2mat(struct2cell(M2region5stage1day4_difference));
    
    M2region5stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))))-mean(M2region5stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))));
    M2region5stage2day4_difference_struct=cell2mat(struct2cell(M2region5stage2day4_difference));
    
    M2region5stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))))-mean(M2region5stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))));
    M2region5stage3day4_difference_struct=cell2mat(struct2cell(M2region5stage3day4_difference));
    
    M2region5stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))))-mean(M2region5stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day4_4stages(cell_num))));
    M2region5stage4day4_difference_struct=cell2mat(struct2cell(M2region5stage4day4_difference));
end
M2region5day4=[M2region5stage1day4_difference_struct M2region5stage2day4_difference_struct M2region5stage3day4_difference_struct M2region5stage4day4_difference_struct M2_region5_day4_4stages];
for i=1:length(M2region5day4)
    
    if sum(M2region5day4(i,1:4)<0)>sum(M2region5day4(i,1:4)>0)
        M2region5day4(i,6)=-1;
    elseif sum(M2region5day4(i,1:4)<0)<sum(M2region5day4(i,1:4)>0)
        M2region5day4(i,6)=1;
    elseif sum(M2region5day4(i,1:4)<0)==sum(M2region5day4(i,1:4)>0)
        if abs(mean(M2region5day4(i,find(M2region5day4(i,1:4)<0))))>abs(mean(M2region5day4(i,find(M2region5day4(i,1:4)>0))))
            M2region5day4(i,6)=-1;
        elseif abs(mean(M2region5day4(i,find(M2region5day4(i,1:4)<0))))<abs(mean(M2region5day4(i,find(M2region5day4(i,1:4)>0))))
            M2region5day4(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0528=[];
for i=1:length(M2region5day4)
    if M2region5day4(i,6)==-1
       a=find(s0528==M2region5day4(i,5));
       unbiased_currentoutcome_signerror_0528(a,:)=-unbiased_currentoutcome0528(a,:);
    end
end
unbiased_currentoutcome_signerror_0528(all(unbiased_currentoutcome_signerror_0528==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0528=[];
for i=1:length(M2region5day4)
    if M2region5day4(i,6)==-1
       a=find(s0528==M2region5day4(i,5));
       unbiased_currentoutcome_error_0528(a,:)=unbiased_currentoutcome0528(a,:);
    end
end
unbiased_currentoutcome_error_0528(all(unbiased_currentoutcome_error_0528==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0528=[];
for i=1:length(M2region5day4)
    if M2region5day4(i,6)==1
       a=find(s0528==M2region5day4(i,5));
       unbiased_currentoutcome_signcorrect_0528(a,:)=unbiased_currentoutcome0528(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0528(all(unbiased_currentoutcome_signcorrect_0528==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0528=[];
for i=1:length(M2region5day4)
    if M2region5day4(i,6)==1
       a=find(s0528==M2region5day4(i,5));
       unbiased_currentoutcome_correct_0528(a,:)=unbiased_currentoutcome0528(a,:);
    end
end
unbiased_currentoutcome_correct_0528(all(unbiased_currentoutcome_correct_0528==0,2),:) = [];


%0529
load('L:\Monkey2\region5\20220529\proportions_of_cells_encoding_current_trials_outcome_20220529.mat');
iscell=readNPY('L:\Monkey2\region5\20220529\iscell.npy');
s0529=find(iscell(:,1)==1);

M2_region5_day5_4stages=union(union(union(M2region5stage1day5index,M2region5stage2day5index),M2region5stage3day5index),M2region5stage4day5index);
M2_region5_day5_0stage=setdiff(M2region5stage1day5diff_ratio_deltaF(:,1),M2_region5_day5_4stages);


for cell_num=1:length(M2_region5_day5_4stages)
    M2region5stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))))-mean(M2region5stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))));
    M2region5stage1day5_difference_struct=cell2mat(struct2cell(M2region5stage1day5_difference));
    
    M2region5stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))))-mean(M2region5stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))));
    M2region5stage2day5_difference_struct=cell2mat(struct2cell(M2region5stage2day5_difference));
    
    M2region5stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))))-mean(M2region5stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))));
    M2region5stage3day5_difference_struct=cell2mat(struct2cell(M2region5stage3day5_difference));
    
    M2region5stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))))-mean(M2region5stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day5_4stages(cell_num))));
    M2region5stage4day5_difference_struct=cell2mat(struct2cell(M2region5stage4day5_difference));
end
M2region5day5=[M2region5stage1day5_difference_struct M2region5stage2day5_difference_struct M2region5stage3day5_difference_struct M2region5stage4day5_difference_struct M2_region5_day5_4stages];
for i=1:length(M2region5day5)
    
    if sum(M2region5day5(i,1:4)<0)>sum(M2region5day5(i,1:4)>0)
        M2region5day5(i,6)=-1;
    elseif sum(M2region5day5(i,1:4)<0)<sum(M2region5day5(i,1:4)>0)
        M2region5day5(i,6)=1;
    elseif sum(M2region5day5(i,1:4)<0)==sum(M2region5day5(i,1:4)>0)
        if abs(mean(M2region5day5(i,find(M2region5day5(i,1:4)<0))))>abs(mean(M2region5day5(i,find(M2region5day5(i,1:4)>0))))
            M2region5day5(i,6)=-1;
        elseif abs(mean(M2region5day5(i,find(M2region5day5(i,1:4)<0))))<abs(mean(M2region5day5(i,find(M2region5day5(i,1:4)>0))))
            M2region5day5(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0529=[];
for i=1:length(M2region5day5)
    if M2region5day5(i,6)==-1
       a=find(s0529==M2region5day5(i,5));
       unbiased_currentoutcome_signerror_0529(a,:)=-unbiased_currentoutcome0529(a,:);
    end
end
unbiased_currentoutcome_signerror_0529(all(unbiased_currentoutcome_signerror_0529==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0529=[];
for i=1:length(M2region5day5)
    if M2region5day5(i,6)==-1
       a=find(s0529==M2region5day5(i,5));
       unbiased_currentoutcome_error_0529(a,:)=unbiased_currentoutcome0529(a,:);
    end
end
unbiased_currentoutcome_error_0529(all(unbiased_currentoutcome_error_0529==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0529=[];
for i=1:length(M2region5day5)
    if M2region5day5(i,6)==1
       a=find(s0529==M2region5day5(i,5));
       unbiased_currentoutcome_signcorrect_0529(a,:)=unbiased_currentoutcome0529(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0529(all(unbiased_currentoutcome_signcorrect_0529==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0529=[];
for i=1:length(M2region5day5)
    if M2region5day5(i,6)==1
       a=find(s0529==M2region5day5(i,5));
       unbiased_currentoutcome_correct_0529(a,:)=unbiased_currentoutcome0529(a,:);
    end
end
unbiased_currentoutcome_correct_0529(all(unbiased_currentoutcome_correct_0529==0,2),:) = [];



%0530
load('L:\Monkey2\region5\20220530\proportions_of_cells_encoding_current_trials_outcome_20220530.mat');
iscell=readNPY('L:\Monkey2\region5\20220530\iscell.npy');
s0530=find(iscell(:,1)==1);
M2_region5_day6_4stages=union(union(union(M2region5stage1day6index,M2region5stage2day6index),M2region5stage3day6index),M2region5stage4day6index);
M2_region5_day6_0stage=setdiff(M2region5stage1day6diff_ratio_deltaF(:,1),M2_region5_day6_4stages);

for cell_num=1:length(M2_region5_day6_4stages)
    M2region5stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))))-mean(M2region5stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))));
    M2region5stage1day6_difference_struct=cell2mat(struct2cell(M2region5stage1day6_difference));
    
    M2region5stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))))-mean(M2region5stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))));
    M2region5stage2day6_difference_struct=cell2mat(struct2cell(M2region5stage2day6_difference));
    
    M2region5stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))))-mean(M2region5stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))));
    M2region5stage3day6_difference_struct=cell2mat(struct2cell(M2region5stage3day6_difference));
    
    M2region5stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region5stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))))-mean(M2region5stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region5_day6_4stages(cell_num))));
    M2region5stage4day6_difference_struct=cell2mat(struct2cell(M2region5stage4day6_difference));
end
M2region5day6=[M2region5stage1day6_difference_struct M2region5stage2day6_difference_struct M2region5stage3day6_difference_struct M2region5stage4day6_difference_struct M2_region5_day6_4stages];
for i=1:length(M2region5day6)
    
    if sum(M2region5day6(i,1:4)<0)>sum(M2region5day6(i,1:4)>0)
        M2region5day6(i,6)=-1;
    elseif sum(M2region5day6(i,1:4)<0)<sum(M2region5day6(i,1:4)>0)
        M2region5day6(i,6)=1;
    elseif sum(M2region5day6(i,1:4)<0)==sum(M2region5day6(i,1:4)>0)
        if abs(mean(M2region5day6(i,find(M2region5day6(i,1:4)<0))))>abs(mean(M2region5day6(i,find(M2region5day6(i,1:4)>0))))
            M2region5day6(i,6)=-1;
        elseif abs(mean(M2region5day6(i,find(M2region5day6(i,1:4)<0))))<abs(mean(M2region5day6(i,find(M2region5day6(i,1:4)>0))))
            M2region5day6(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0530=[];
for i=1:length(M2region5day6)
    if M2region5day6(i,6)==-1
       a=find(s0530==M2region5day6(i,5));
       unbiased_currentoutcome_signerror_0530(a,:)=-unbiased_currentoutcome0530(a,:);
    end
end
unbiased_currentoutcome_signerror_0530(all(unbiased_currentoutcome_signerror_0530==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0530=[];
for i=1:length(M2region5day6)
    if M2region5day6(i,6)==-1
       a=find(s0530==M2region5day6(i,5));
       unbiased_currentoutcome_error_0530(a,:)=unbiased_currentoutcome0530(a,:);
    end
end
unbiased_currentoutcome_error_0530(all(unbiased_currentoutcome_error_0530==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0530=[];
for i=1:length(M2region5day6)
    if M2region5day6(i,6)==1
       a=find(s0530==M2region5day6(i,5));
       unbiased_currentoutcome_signcorrect_0530(a,:)=unbiased_currentoutcome0530(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0530(all(unbiased_currentoutcome_signcorrect_0530==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0530=[];
for i=1:length(M2region5day6)
    if M2region5day6(i,6)==1
       a=find(s0530==M2region5day6(i,5));
       unbiased_currentoutcome_correct_0530(a,:)=unbiased_currentoutcome0530(a,:);
    end
end
unbiased_currentoutcome_correct_0530(all(unbiased_currentoutcome_correct_0530==0,2),:) = [];

%0610
load('L:\Monkey2\region6\20220610\proportions_of_cells_encoding_current_trials_outcome_20220610.mat');
iscell=readNPY('L:\Monkey2\region6\20220610\iscell.npy');
s0610=find(iscell(:,1)==1);



M2_region6_day1_4stages=union(union(union(M2region6stage1day1index,M2region6stage2day1index),M2region6stage3day1index),M2region6stage4day1index);
M2_region6_day1_0stage=setdiff(M2region6stage1day1diff_ratio_deltaF(:,1),M2_region6_day1_4stages);


for cell_num=1:length(M2_region6_day1_4stages)
    M2region6stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))))-mean(M2region6stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))));
    M2region6stage1day1_difference_struct=cell2mat(struct2cell(M2region6stage1day1_difference));
    
    M2region6stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))))-mean(M2region6stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))));
    M2region6stage2day1_difference_struct=cell2mat(struct2cell(M2region6stage2day1_difference));
    
    M2region6stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))))-mean(M2region6stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))));
    M2region6stage3day1_difference_struct=cell2mat(struct2cell(M2region6stage3day1_difference));
    
    M2region6stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))))-mean(M2region6stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day1_4stages(cell_num))));
    M2region6stage4day1_difference_struct=cell2mat(struct2cell(M2region6stage4day1_difference)); 
end
M2region6day1=[M2region6stage1day1_difference_struct M2region6stage2day1_difference_struct M2region6stage3day1_difference_struct M2region6stage4day1_difference_struct M2_region6_day1_4stages];
for i=1:length(M2region6day1)
    
    if sum(M2region6day1(i,1:4)<0)>sum(M2region6day1(i,1:4)>0)
        M2region6day1(i,6)=-1;
    elseif sum(M2region6day1(i,1:4)<0)<sum(M2region6day1(i,1:4)>0)
        M2region6day1(i,6)=1;
    elseif sum(M2region6day1(i,1:4)<0)==sum(M2region6day1(i,1:4)>0)
        if abs(mean(M2region6day1(i,find(M2region6day1(i,1:4)<0))))>abs(mean(M2region6day1(i,find(M2region6day1(i,1:4)>0))))
            M2region6day1(i,6)=-1;
        elseif abs(mean(M2region6day1(i,find(M2region6day1(i,1:4)<0))))<abs(mean(M2region6day1(i,find(M2region6day1(i,1:4)>0))))
            M2region6day1(i,6)=1;
        end
    end
end






%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0610=[];
for i=1:length(M2region6day1)
    if M2region6day1(i,6)==-1
       a=find(s0610==M2region6day1(i,5));
       unbiased_currentoutcome_signerror_0610(a,:)=-unbiased_currentoutcome0610(a,:);
    end
end
unbiased_currentoutcome_signerror_0610(all(unbiased_currentoutcome_signerror_0610==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0610=[];
for i=1:length(M2region6day1)
    if M2region6day1(i,6)==-1
       a=find(s0610==M2region6day1(i,5));
       unbiased_currentoutcome_error_0610(a,:)=unbiased_currentoutcome0610(a,:);
    end
end
unbiased_currentoutcome_error_0610(all(unbiased_currentoutcome_error_0610==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0610=[];
for i=1:length(M2region6day1)
    if M2region6day1(i,6)==1
       a=find(s0610==M2region6day1(i,5));
       unbiased_currentoutcome_signcorrect_0610(a,:)=unbiased_currentoutcome0610(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0610(all(unbiased_currentoutcome_signcorrect_0610==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0610=[];
for i=1:length(M2region6day1)
    if M2region6day1(i,6)==1
       a=find(s0610==M2region6day1(i,5));
       unbiased_currentoutcome_correct_0610(a,:)=unbiased_currentoutcome0610(a,:);
    end
end
unbiased_currentoutcome_correct_0610(all(unbiased_currentoutcome_correct_0610==0,2),:) = [];

%0611
load('L:\Monkey2\region6\20220611\proportions_of_cells_encoding_current_trials_outcome_20220611.mat');
iscell=readNPY('L:\Monkey2\region6\20220611\iscell.npy');
s0611=find(iscell(:,1)==1);


M2_region6_day2_4stages=union(union(union(M2region6stage1day2index,M2region6stage2day2index),M2region6stage3day2index),M2region6stage4day2index);
M2_region6_day2_0stage=setdiff(M2region6stage1day2diff_ratio_deltaF(:,1),M2_region6_day2_4stages);



for cell_num=1:length(M2_region6_day2_4stages)
    M2region6stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))))-mean(M2region6stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))));
    M2region6stage1day2_difference_struct=cell2mat(struct2cell(M2region6stage1day2_difference));
    
    M2region6stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))))-mean(M2region6stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))));
    M2region6stage2day2_difference_struct=cell2mat(struct2cell(M2region6stage2day2_difference));
    
    M2region6stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))))-mean(M2region6stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))));
    M2region6stage3day2_difference_struct=cell2mat(struct2cell(M2region6stage3day2_difference));
    
    M2region6stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))))-mean(M2region6stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day2_4stages(cell_num))));
    M2region6stage4day2_difference_struct=cell2mat(struct2cell(M2region6stage4day2_difference));
end
M2region6day2=[M2region6stage1day2_difference_struct M2region6stage2day2_difference_struct M2region6stage3day2_difference_struct M2region6stage4day2_difference_struct M2_region6_day2_4stages];
for i=1:length(M2region6day2)
    
    if sum(M2region6day2(i,1:4)<0)>sum(M2region6day2(i,1:4)>0)
        M2region6day2(i,6)=-1;
    elseif sum(M2region6day2(i,1:4)<0)<sum(M2region6day2(i,1:4)>0)
        M2region6day2(i,6)=1;
    elseif sum(M2region6day2(i,1:4)<0)==sum(M2region6day2(i,1:4)>0)
        if abs(mean(M2region6day2(i,find(M2region6day2(i,1:4)<0))))>abs(mean(M2region6day2(i,find(M2region6day2(i,1:4)>0))))
            M2region6day2(i,6)=-1;
        elseif abs(mean(M2region6day2(i,find(M2region6day2(i,1:4)<0))))<abs(mean(M2region6day2(i,find(M2region6day2(i,1:4)>0))))
            M2region6day2(i,6)=1;
        end
    end
end






%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0611=[];
for i=1:length(M2region6day2)
    if M2region6day2(i,6)==-1
       a=find(s0611==M2region6day2(i,5));
       unbiased_currentoutcome_signerror_0611(a,:)=-unbiased_currentoutcome0611(a,:);
    end
end
unbiased_currentoutcome_signerror_0611(all(unbiased_currentoutcome_signerror_0611==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0611=[];
for i=1:length(M2region6day2)
    if M2region6day2(i,6)==-1
       a=find(s0611==M2region6day2(i,5));
       unbiased_currentoutcome_error_0611(a,:)=unbiased_currentoutcome0611(a,:);
    end
end
unbiased_currentoutcome_error_0611(all(unbiased_currentoutcome_error_0611==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0611=[];
for i=1:length(M2region6day2)
    if M2region6day2(i,6)==1
       a=find(s0611==M2region6day2(i,5));
       unbiased_currentoutcome_signcorrect_0611(a,:)=unbiased_currentoutcome0611(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0611(all(unbiased_currentoutcome_signcorrect_0611==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0611=[];
for i=1:length(M2region6day2)
    if M2region6day2(i,6)==1
       a=find(s0611==M2region6day2(i,5));
       unbiased_currentoutcome_correct_0611(a,:)=unbiased_currentoutcome0611(a,:);
    end
end
unbiased_currentoutcome_correct_0611(all(unbiased_currentoutcome_correct_0611==0,2),:) = [];

%0612
load('L:\Monkey2\region6\20220612\proportions_of_cells_encoding_current_trials_outcome_20220612.mat');
iscell=readNPY('L:\Monkey2\region6\20220612\iscell.npy');
s0612=find(iscell(:,1)==1);


M2_region6_day3_4stages=union(union(union(M2region6stage1day3index,M2region6stage2day3index),M2region6stage3day3index),M2region6stage4day3index);
M2_region6_day3_0stage=setdiff(M2region6stage1day3diff_ratio_deltaF(:,1),M2_region6_day3_4stages);

for cell_num=1:length(M2_region6_day3_4stages)
    M2region6stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))))-mean(M2region6stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))));
    M2region6stage1day3_difference_struct=cell2mat(struct2cell(M2region6stage1day3_difference));
    
    M2region6stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))))-mean(M2region6stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))));
    M2region6stage2day3_difference_struct=cell2mat(struct2cell(M2region6stage2day3_difference));
    
    M2region6stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))))-mean(M2region6stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))));
    M2region6stage3day3_difference_struct=cell2mat(struct2cell(M2region6stage3day3_difference));
    
    M2region6stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))))-mean(M2region6stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day3_4stages(cell_num))));
    M2region6stage4day3_difference_struct=cell2mat(struct2cell(M2region6stage4day3_difference));
end
M2region6day3=[M2region6stage1day3_difference_struct M2region6stage2day3_difference_struct M2region6stage3day3_difference_struct M2region6stage4day3_difference_struct M2_region6_day3_4stages];
for i=1:length(M2region6day3)
    
    if sum(M2region6day3(i,1:4)<0)>sum(M2region6day3(i,1:4)>0)
        M2region6day3(i,6)=-1;
    elseif sum(M2region6day3(i,1:4)<0)<sum(M2region6day3(i,1:4)>0)
        M2region6day3(i,6)=1;
    elseif sum(M2region6day3(i,1:4)<0)==sum(M2region6day3(i,1:4)>0)
        if abs(mean(M2region6day3(i,find(M2region6day3(i,1:4)<0))))>abs(mean(M2region6day3(i,find(M2region6day3(i,1:4)>0))))
            M2region6day3(i,6)=-1;
        elseif abs(mean(M2region6day3(i,find(M2region6day3(i,1:4)<0))))<abs(mean(M2region6day3(i,find(M2region6day3(i,1:4)>0))))
            M2region6day3(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0612=[];
for i=1:length(M2region6day3)
    if M2region6day3(i,6)==-1
       a=find(s0612==M2region6day3(i,5));
       unbiased_currentoutcome_signerror_0612(a,:)=-unbiased_currentoutcome0612(a,:);
    end
end
unbiased_currentoutcome_signerror_0612(all(unbiased_currentoutcome_signerror_0612==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0612=[];
for i=1:length(M2region6day3)
    if M2region6day3(i,6)==-1
       a=find(s0612==M2region6day3(i,5));
       unbiased_currentoutcome_error_0612(a,:)=unbiased_currentoutcome0612(a,:);
    end
end
unbiased_currentoutcome_error_0612(all(unbiased_currentoutcome_error_0612==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0612=[];
for i=1:length(M2region6day3)
    if M2region6day3(i,6)==1
       a=find(s0612==M2region6day3(i,5));
       unbiased_currentoutcome_signcorrect_0612(a,:)=unbiased_currentoutcome0612(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0612(all(unbiased_currentoutcome_signcorrect_0612==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0612=[];
for i=1:length(M2region6day3)
    if M2region6day3(i,6)==1
       a=find(s0612==M2region6day3(i,5));
       unbiased_currentoutcome_correct_0612(a,:)=unbiased_currentoutcome0612(a,:);
    end
end
unbiased_currentoutcome_correct_0612(all(unbiased_currentoutcome_correct_0612==0,2),:) = [];

%0613

load('L:\Monkey2\region6\20220613\proportions_of_cells_encoding_current_trials_outcome_20220613.mat');
iscell=readNPY('L:\Monkey2\region6\20220613\iscell.npy');
s0613=find(iscell(:,1)==1);

M2_region6_day4_4stages=union(union(union(M2region6stage1day4index,M2region6stage2day4index),M2region6stage3day4index),M2region6stage4day4index);
M2_region6_day4_0stage=setdiff(M2region6stage1day4diff_ratio_deltaF(:,1),M2_region6_day4_4stages);

for cell_num=1:length(M2_region6_day4_4stages)
    M2region6stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))))-mean(M2region6stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))));
    M2region6stage1day4_difference_struct=cell2mat(struct2cell(M2region6stage1day4_difference));
    
    M2region6stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))))-mean(M2region6stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))));
    M2region6stage2day4_difference_struct=cell2mat(struct2cell(M2region6stage2day4_difference));
    
    M2region6stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))))-mean(M2region6stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))));
    M2region6stage3day4_difference_struct=cell2mat(struct2cell(M2region6stage3day4_difference));
    
    M2region6stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region6stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))))-mean(M2region6stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region6_day4_4stages(cell_num))));
    M2region6stage4day4_difference_struct=cell2mat(struct2cell(M2region6stage4day4_difference));
end
M2region6day4=[M2region6stage1day4_difference_struct M2region6stage2day4_difference_struct M2region6stage3day4_difference_struct M2region6stage4day4_difference_struct M2_region6_day4_4stages];
for i=1:length(M2region6day4)
    
    if sum(M2region6day4(i,1:4)<0)>sum(M2region6day4(i,1:4)>0)
        M2region6day4(i,6)=-1;
    elseif sum(M2region6day4(i,1:4)<0)<sum(M2region6day4(i,1:4)>0)
        M2region6day4(i,6)=1;
    elseif sum(M2region6day4(i,1:4)<0)==sum(M2region6day4(i,1:4)>0)
        if abs(mean(M2region6day4(i,find(M2region6day4(i,1:4)<0))))>abs(mean(M2region6day4(i,find(M2region6day4(i,1:4)>0))))
            M2region6day4(i,6)=-1;
        elseif abs(mean(M2region6day4(i,find(M2region6day4(i,1:4)<0))))<abs(mean(M2region6day4(i,find(M2region6day4(i,1:4)>0))))
            M2region6day4(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0613=[];
for i=1:length(M2region6day4)
    if M2region6day4(i,6)==-1
       a=find(s0613==M2region6day4(i,5));
       unbiased_currentoutcome_signerror_0613(a,:)=-unbiased_currentoutcome0613(a,:);
    end
end
unbiased_currentoutcome_signerror_0613(all(unbiased_currentoutcome_signerror_0613==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0613=[];
for i=1:length(M2region6day4)
    if M2region6day4(i,6)==-1
       a=find(s0613==M2region6day4(i,5));
       unbiased_currentoutcome_error_0613(a,:)=unbiased_currentoutcome0613(a,:);
    end
end
unbiased_currentoutcome_error_0613(all(unbiased_currentoutcome_error_0613==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0613=[];
for i=1:length(M2region6day4)
    if M2region6day4(i,6)==1
       a=find(s0613==M2region6day4(i,5));
       unbiased_currentoutcome_signcorrect_0613(a,:)=unbiased_currentoutcome0613(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0613(all(unbiased_currentoutcome_signcorrect_0613==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0613=[];
for i=1:length(M2region6day4)
    if M2region6day4(i,6)==1
       a=find(s0613==M2region6day4(i,5));
       unbiased_currentoutcome_correct_0613(a,:)=unbiased_currentoutcome0613(a,:);
    end
end
unbiased_currentoutcome_correct_0613(all(unbiased_currentoutcome_correct_0613==0,2),:) = [];


%%0618
load('L:\Monkey2\region7\20220618\proportions_of_cells_encoding_current_trials_outcome_20220618.mat');
iscell=readNPY('L:\Monkey2\region7\20220618\iscell.npy');
s0618=find(iscell(:,1)==1);



M2_region7_day1_4stages=union(union(union(M2region7stage1day1index,M2region7stage2day1index),M2region7stage3day1index),M2region7stage4day1index);
M2_region7_day1_0stage=setdiff(M2region7stage1day1diff_ratio_deltaF(:,1),M2_region7_day1_4stages);


for cell_num=1:length(M2_region7_day1_4stages)
    M2region7stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))))-mean(M2region7stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))));
    M2region7stage1day1_difference_struct=cell2mat(struct2cell(M2region7stage1day1_difference));
    
    M2region7stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))))-mean(M2region7stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))));
    M2region7stage2day1_difference_struct=cell2mat(struct2cell(M2region7stage2day1_difference));
    
    M2region7stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))))-mean(M2region7stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))));
    M2region7stage3day1_difference_struct=cell2mat(struct2cell(M2region7stage3day1_difference));
    
    M2region7stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))))-mean(M2region7stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day1_4stages(cell_num))));
    M2region7stage4day1_difference_struct=cell2mat(struct2cell(M2region7stage4day1_difference)); 
end
M2region7day1=[M2region7stage1day1_difference_struct M2region7stage2day1_difference_struct M2region7stage3day1_difference_struct M2region7stage4day1_difference_struct M2_region7_day1_4stages];
for i=1:length(M2region7day1)
    
    if sum(M2region7day1(i,1:4)<0)>sum(M2region7day1(i,1:4)>0)
        M2region7day1(i,6)=-1;
    elseif sum(M2region7day1(i,1:4)<0)<sum(M2region7day1(i,1:4)>0)
        M2region7day1(i,6)=1;
    elseif sum(M2region7day1(i,1:4)<0)==sum(M2region7day1(i,1:4)>0)
        if abs(mean(M2region7day1(i,find(M2region7day1(i,1:4)<0))))>abs(mean(M2region7day1(i,find(M2region7day1(i,1:4)>0))))
            M2region7day1(i,6)=-1;
        elseif abs(mean(M2region7day1(i,find(M2region7day1(i,1:4)<0))))<abs(mean(M2region7day1(i,find(M2region7day1(i,1:4)>0))))
            M2region7day1(i,6)=1;
        end
    end
end





%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0618=[];
for i=1:length(M2region7day1)
    if M2region7day1(i,6)==-1
       a=find(s0618==M2region7day1(i,5));
       unbiased_currentoutcome_signerror_0618(a,:)=-unbiased_currentoutcome0618(a,:);
    end
end
unbiased_currentoutcome_signerror_0618(all(unbiased_currentoutcome_signerror_0618==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0618=[];
for i=1:length(M2region7day1)
    if M2region7day1(i,6)==-1
       a=find(s0618==M2region7day1(i,5));
       unbiased_currentoutcome_error_0618(a,:)=unbiased_currentoutcome0618(a,:);
    end
end
unbiased_currentoutcome_error_0618(all(unbiased_currentoutcome_error_0618==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0618=[];
for i=1:length(M2region7day1)
    if M2region7day1(i,6)==1
       a=find(s0618==M2region7day1(i,5));
       unbiased_currentoutcome_signcorrect_0618(a,:)=unbiased_currentoutcome0618(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0618(all(unbiased_currentoutcome_signcorrect_0618==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0618=[];
for i=1:length(M2region7day1)
    if M2region7day1(i,6)==1
       a=find(s0618==M2region7day1(i,5));
       unbiased_currentoutcome_correct_0618(a,:)=unbiased_currentoutcome0618(a,:);
    end
end
unbiased_currentoutcome_correct_0618(all(unbiased_currentoutcome_correct_0618==0,2),:) = [];

%0619

load('L:\Monkey2\region7\20220619\proportions_of_cells_encoding_current_trials_outcome_20220619.mat');
iscell=readNPY('L:\Monkey2\region7\20220619\iscell.npy');
s0619=find(iscell(:,1)==1);

M2_region7_day2_4stages=union(union(union(M2region7stage1day2index,M2region7stage2day2index),M2region7stage3day2index),M2region7stage4day2index);
M2_region7_day2_0stage=setdiff(M2region7stage1day2diff_ratio_deltaF(:,1),M2_region7_day2_4stages);




for cell_num=1:length(M2_region7_day2_4stages)
    M2region7stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))))-mean(M2region7stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))));
    M2region7stage1day2_difference_struct=cell2mat(struct2cell(M2region7stage1day2_difference));
    
    M2region7stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))))-mean(M2region7stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))));
    M2region7stage2day2_difference_struct=cell2mat(struct2cell(M2region7stage2day2_difference));
    
    M2region7stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))))-mean(M2region7stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))));
    M2region7stage3day2_difference_struct=cell2mat(struct2cell(M2region7stage3day2_difference));
    
    M2region7stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))))-mean(M2region7stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day2_4stages(cell_num))));
    M2region7stage4day2_difference_struct=cell2mat(struct2cell(M2region7stage4day2_difference));
end
M2region7day2=[M2region7stage1day2_difference_struct M2region7stage2day2_difference_struct M2region7stage3day2_difference_struct M2region7stage4day2_difference_struct M2_region7_day2_4stages];
for i=1:length(M2region7day2)
    
    if sum(M2region7day2(i,1:4)<0)>sum(M2region7day2(i,1:4)>0)
        M2region7day2(i,6)=-1;
    elseif sum(M2region7day2(i,1:4)<0)<sum(M2region7day2(i,1:4)>0)
        M2region7day2(i,6)=1;
    elseif sum(M2region7day2(i,1:4)<0)==sum(M2region7day2(i,1:4)>0)
        if abs(mean(M2region7day2(i,find(M2region7day2(i,1:4)<0))))>abs(mean(M2region7day2(i,find(M2region7day2(i,1:4)>0))))
            M2region7day2(i,6)=-1;
        elseif abs(mean(M2region7day2(i,find(M2region7day2(i,1:4)<0))))<abs(mean(M2region7day2(i,find(M2region7day2(i,1:4)>0))))
            M2region7day2(i,6)=1;
        end
    end
end





%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0619=[];
for i=1:length(M2region7day2)
    if M2region7day2(i,6)==-1
       a=find(s0619==M2region7day2(i,5));
       unbiased_currentoutcome_signerror_0619(a,:)=-unbiased_currentoutcome0619(a,:);
    end
end
unbiased_currentoutcome_signerror_0619(all(unbiased_currentoutcome_signerror_0619==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0619=[];
for i=1:length(M2region7day2)
    if M2region7day2(i,6)==-1
       a=find(s0619==M2region7day2(i,5));
       unbiased_currentoutcome_error_0619(a,:)=unbiased_currentoutcome0619(a,:);
    end
end
unbiased_currentoutcome_error_0619(all(unbiased_currentoutcome_error_0619==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0619=[];
for i=1:length(M2region7day2)
    if M2region7day2(i,6)==1
       a=find(s0619==M2region7day2(i,5));
       unbiased_currentoutcome_signcorrect_0619(a,:)=unbiased_currentoutcome0619(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0619(all(unbiased_currentoutcome_signcorrect_0619==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0619=[];
for i=1:length(M2region7day2)
    if M2region7day2(i,6)==1
       a=find(s0619==M2region7day2(i,5));
       unbiased_currentoutcome_correct_0619(a,:)=unbiased_currentoutcome0619(a,:);
    end
end
unbiased_currentoutcome_correct_0619(all(unbiased_currentoutcome_correct_0619==0,2),:) = [];



%0620
load('L:\Monkey2\region7\20220620\proportions_of_cells_encoding_current_trials_outcome_20220620.mat');
iscell=readNPY('L:\Monkey2\region7\20220620\iscell.npy');
s0620=find(iscell(:,1)==1);



M2_region7_day3_4stages=union(union(union(M2region7stage1day3index,M2region7stage2day3index),M2region7stage3day3index),M2region7stage4day3index);
M2_region7_day3_0stage=setdiff(M2region7stage1day3diff_ratio_deltaF(:,1),M2_region7_day3_4stages);



for cell_num=1:length(M2_region7_day3_4stages)
    M2region7stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))))-mean(M2region7stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))));
    M2region7stage1day3_difference_struct=cell2mat(struct2cell(M2region7stage1day3_difference));
    
    M2region7stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))))-mean(M2region7stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))));
    M2region7stage2day3_difference_struct=cell2mat(struct2cell(M2region7stage2day3_difference));
    
    M2region7stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))))-mean(M2region7stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))));
    M2region7stage3day3_difference_struct=cell2mat(struct2cell(M2region7stage3day3_difference));
    
    M2region7stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))))-mean(M2region7stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day3_4stages(cell_num))));
    M2region7stage4day3_difference_struct=cell2mat(struct2cell(M2region7stage4day3_difference));
end
M2region7day3=[M2region7stage1day3_difference_struct M2region7stage2day3_difference_struct M2region7stage3day3_difference_struct M2region7stage4day3_difference_struct M2_region7_day3_4stages];
for i=1:length(M2region7day3)
    
    if sum(M2region7day3(i,1:4)<0)>sum(M2region7day3(i,1:4)>0)
        M2region7day3(i,6)=-1;
    elseif sum(M2region7day3(i,1:4)<0)<sum(M2region7day3(i,1:4)>0)
        M2region7day3(i,6)=1;
    elseif sum(M2region7day3(i,1:4)<0)==sum(M2region7day3(i,1:4)>0)
        if abs(mean(M2region7day3(i,find(M2region7day3(i,1:4)<0))))>abs(mean(M2region7day3(i,find(M2region7day3(i,1:4)>0))))
            M2region7day3(i,6)=-1;
        elseif abs(mean(M2region7day3(i,find(M2region7day3(i,1:4)<0))))<abs(mean(M2region7day3(i,find(M2region7day3(i,1:4)>0))))
            M2region7day3(i,6)=1;
        end
    end
end






%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0620=[];
for i=1:length(M2region7day3)
    if M2region7day3(i,6)==-1
       a=find(s0620==M2region7day3(i,5));
       unbiased_currentoutcome_signerror_0620(a,:)=-unbiased_currentoutcome0620(a,:);
    end
end
unbiased_currentoutcome_signerror_0620(all(unbiased_currentoutcome_signerror_0620==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0620=[];
for i=1:length(M2region7day3)
    if M2region7day3(i,6)==-1
       a=find(s0620==M2region7day3(i,5));
       unbiased_currentoutcome_error_0620(a,:)=unbiased_currentoutcome0620(a,:);
    end
end
unbiased_currentoutcome_error_0620(all(unbiased_currentoutcome_error_0620==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0620=[];
for i=1:length(M2region7day3)
    if M2region7day3(i,6)==1
       a=find(s0620==M2region7day3(i,5));
       unbiased_currentoutcome_signcorrect_0620(a,:)=unbiased_currentoutcome0620(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0620(all(unbiased_currentoutcome_signcorrect_0620==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0620=[];
for i=1:length(M2region7day3)
    if M2region7day3(i,6)==1
       a=find(s0620==M2region7day3(i,5));
       unbiased_currentoutcome_correct_0620(a,:)=unbiased_currentoutcome0620(a,:);
    end
end
unbiased_currentoutcome_correct_0620(all(unbiased_currentoutcome_correct_0620==0,2),:) = [];


%%0621


load('L:\Monkey2\region7\20220621\proportions_of_cells_encoding_current_trials_outcome_20220621.mat');
iscell=readNPY('L:\Monkey2\region7\20220621\iscell.npy');
s0621=find(iscell(:,1)==1);

M2_region7_day4_4stages=union(union(union(M2region7stage1day4index,M2region7stage2day4index),M2region7stage3day4index),M2region7stage4day4index);
M2_region7_day4_0stage=setdiff(M2region7stage1day4diff_ratio_deltaF(:,1),M2_region7_day4_4stages);



for cell_num=1:length(M2_region7_day4_4stages)
    M2region7stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))))-mean(M2region7stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))));
    M2region7stage1day4_difference_struct=cell2mat(struct2cell(M2region7stage1day4_difference));
    
    M2region7stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))))-mean(M2region7stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))));
    M2region7stage2day4_difference_struct=cell2mat(struct2cell(M2region7stage2day4_difference));
    
    M2region7stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))))-mean(M2region7stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))));
    M2region7stage3day4_difference_struct=cell2mat(struct2cell(M2region7stage3day4_difference));
    
    M2region7stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))))-mean(M2region7stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day4_4stages(cell_num))));
    M2region7stage4day4_difference_struct=cell2mat(struct2cell(M2region7stage4day4_difference));
end
M2region7day4=[M2region7stage1day4_difference_struct M2region7stage2day4_difference_struct M2region7stage3day4_difference_struct M2region7stage4day4_difference_struct M2_region7_day4_4stages];
for i=1:length(M2region7day4)
    
    if sum(M2region7day4(i,1:4)<0)>sum(M2region7day4(i,1:4)>0)
        M2region7day4(i,6)=-1;
    elseif sum(M2region7day4(i,1:4)<0)<sum(M2region7day4(i,1:4)>0)
        M2region7day4(i,6)=1;
    elseif sum(M2region7day4(i,1:4)<0)==sum(M2region7day4(i,1:4)>0)
        if abs(mean(M2region7day4(i,find(M2region7day4(i,1:4)<0))))>abs(mean(M2region7day4(i,find(M2region7day4(i,1:4)>0))))
            M2region7day4(i,6)=-1;
        elseif abs(mean(M2region7day4(i,find(M2region7day4(i,1:4)<0))))<abs(mean(M2region7day4(i,find(M2region7day4(i,1:4)>0))))
            M2region7day4(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0621=[];
for i=1:length(M2region7day4)
    if M2region7day4(i,6)==-1
       a=find(s0621==M2region7day4(i,5));
       unbiased_currentoutcome_signerror_0621(a,:)=-unbiased_currentoutcome0621(a,:);
    end
end
unbiased_currentoutcome_signerror_0621(all(unbiased_currentoutcome_signerror_0621==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0621=[];
for i=1:length(M2region7day4)
    if M2region7day4(i,6)==-1
       a=find(s0621==M2region7day4(i,5));
       unbiased_currentoutcome_error_0621(a,:)=unbiased_currentoutcome0621(a,:);
    end
end
unbiased_currentoutcome_error_0621(all(unbiased_currentoutcome_error_0621==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0621=[];
for i=1:length(M2region7day4)
    if M2region7day4(i,6)==1
       a=find(s0621==M2region7day4(i,5));
       unbiased_currentoutcome_signcorrect_0621(a,:)=unbiased_currentoutcome0621(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0621(all(unbiased_currentoutcome_signcorrect_0621==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0621=[];
for i=1:length(M2region7day4)
    if M2region7day4(i,6)==1
       a=find(s0621==M2region7day4(i,5));
       unbiased_currentoutcome_correct_0621(a,:)=unbiased_currentoutcome0621(a,:);
    end
end
unbiased_currentoutcome_correct_0621(all(unbiased_currentoutcome_correct_0621==0,2),:) = [];

%0622

load('L:\Monkey2\region7\20220622\proportions_of_cells_encoding_current_trials_outcome_20220622.mat');
iscell=readNPY('L:\Monkey2\region7\20220622\iscell.npy');
s0622=find(iscell(:,1)==1);
M2_region7_day5_4stages=union(union(union(M2region7stage1day5index,M2region7stage2day5index),M2region7stage3day5index),M2region7stage4day5index);
M2_region7_day5_0stage=setdiff(M2region7stage1day5diff_ratio_deltaF(:,1),M2_region7_day5_4stages);

for cell_num=1:length(M2_region7_day5_4stages)
    M2region7stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))))-mean(M2region7stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))));
    M2region7stage1day5_difference_struct=cell2mat(struct2cell(M2region7stage1day5_difference));
    
    M2region7stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))))-mean(M2region7stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))));
    M2region7stage2day5_difference_struct=cell2mat(struct2cell(M2region7stage2day5_difference));
    
    M2region7stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))))-mean(M2region7stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))));
    M2region7stage3day5_difference_struct=cell2mat(struct2cell(M2region7stage3day5_difference));
    
    M2region7stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))))-mean(M2region7stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day5_4stages(cell_num))));
    M2region7stage4day5_difference_struct=cell2mat(struct2cell(M2region7stage4day5_difference));
end
M2region7day5=[M2region7stage1day5_difference_struct M2region7stage2day5_difference_struct M2region7stage3day5_difference_struct M2region7stage4day5_difference_struct M2_region7_day5_4stages];
for i=1:length(M2region7day5)
    
    if sum(M2region7day5(i,1:4)<0)>sum(M2region7day5(i,1:4)>0)
        M2region7day5(i,6)=-1;
    elseif sum(M2region7day5(i,1:4)<0)<sum(M2region7day5(i,1:4)>0)
        M2region7day5(i,6)=1;
    elseif sum(M2region7day5(i,1:4)<0)==sum(M2region7day5(i,1:4)>0)
        if abs(mean(M2region7day5(i,find(M2region7day5(i,1:4)<0))))>abs(mean(M2region7day5(i,find(M2region7day5(i,1:4)>0))))
            M2region7day5(i,6)=-1;
        elseif abs(mean(M2region7day5(i,find(M2region7day5(i,1:4)<0))))<abs(mean(M2region7day5(i,find(M2region7day5(i,1:4)>0))))
            M2region7day5(i,6)=1;
        end
    end
end
%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0622=[];
for i=1:length(M2region7day5)
    if M2region7day5(i,6)==-1
       a=find(s0622==M2region7day5(i,5));
       unbiased_currentoutcome_signerror_0622(a,:)=-unbiased_currentoutcome0622(a,:);
    end
end
unbiased_currentoutcome_signerror_0622(all(unbiased_currentoutcome_signerror_0622==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0622=[];
for i=1:length(M2region7day5)
    if M2region7day5(i,6)==-1
       a=find(s0622==M2region7day5(i,5));
       unbiased_currentoutcome_error_0622(a,:)=unbiased_currentoutcome0622(a,:);
    end
end
unbiased_currentoutcome_error_0622(all(unbiased_currentoutcome_error_0622==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0622=[];
for i=1:length(M2region7day5)
    if M2region7day5(i,6)==1
       a=find(s0622==M2region7day5(i,5));
       unbiased_currentoutcome_signcorrect_0622(a,:)=unbiased_currentoutcome0622(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0622(all(unbiased_currentoutcome_signcorrect_0622==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0622=[];
for i=1:length(M2region7day5)
    if M2region7day5(i,6)==1
       a=find(s0622==M2region7day5(i,5));
       unbiased_currentoutcome_correct_0622(a,:)=unbiased_currentoutcome0622(a,:);
    end
end
unbiased_currentoutcome_correct_0622(all(unbiased_currentoutcome_correct_0622==0,2),:) = [];

%0623

load('L:\Monkey2\region7\20220623\proportions_of_cells_encoding_current_trials_outcome_20220623.mat');
iscell=readNPY('L:\Monkey2\region7\20220623\iscell.npy');
s0623=find(iscell(:,1)==1);


M2_region7_day6_4stages=union(union(union(M2region7stage1day6index,M2region7stage2day6index),M2region7stage3day6index),M2region7stage4day6index);
M2_region7_day6_0stage=setdiff(M2region7stage1day6diff_ratio_deltaF(:,1),M2_region7_day6_4stages);

for cell_num=1:length(M2_region7_day6_4stages)
    M2region7stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))))-mean(M2region7stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))));
    M2region7stage1day6_difference_struct=cell2mat(struct2cell(M2region7stage1day6_difference));
    
    M2region7stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))))-mean(M2region7stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))));
    M2region7stage2day6_difference_struct=cell2mat(struct2cell(M2region7stage2day6_difference));
    
    M2region7stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))))-mean(M2region7stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))));
    M2region7stage3day6_difference_struct=cell2mat(struct2cell(M2region7stage3day6_difference));
    
    M2region7stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M2region7stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))))-mean(M2region7stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region7_day6_4stages(cell_num))));
    M2region7stage4day6_difference_struct=cell2mat(struct2cell(M2region7stage4day6_difference));
end
M2region7day5=[M2region7stage1day6_difference_struct M2region7stage2day6_difference_struct M2region7stage3day6_difference_struct M2region7stage4day6_difference_struct M2_region7_day6_4stages];
for i=1:length(M2region7day6)
    
    if sum(M2region7day6(i,1:4)<0)>sum(M2region7day6(i,1:4)>0)
        M2region7day6(i,6)=-1;
    elseif sum(M2region7day6(i,1:4)<0)<sum(M2region7day6(i,1:4)>0)
        M2region7day6(i,6)=1;
    elseif sum(M2region7day6(i,1:4)<0)==sum(M2region7day6(i,1:4)>0)
        if abs(mean(M2region7day6(i,find(M2region7day6(i,1:4)<0))))>abs(mean(M2region7day6(i,find(M2region7day6(i,1:4)>0))))
            M2region7day6(i,6)=-1;
        elseif abs(mean(M2region7day6(i,find(M2region7day6(i,1:4)<0))))<abs(mean(M2region7day6(i,find(M2region7day6(i,1:4)>0))))
            M2region7day6(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0623=[];
for i=1:length(M2region7day6)
    if M2region7day6(i,6)==-1
       a=find(s0623==M2region7day6(i,5));
       unbiased_currentoutcome_signerror_0623(a,:)=-unbiased_currentoutcome0623(a,:);
    end
end
unbiased_currentoutcome_signerror_0623(all(unbiased_currentoutcome_signerror_0623==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0623=[];
for i=1:length(M2region7day6)
    if M2region7day6(i,6)==-1
       a=find(s0623==M2region7day6(i,5));
       unbiased_currentoutcome_error_0623(a,:)=unbiased_currentoutcome0623(a,:);
    end
end
unbiased_currentoutcome_error_0623(all(unbiased_currentoutcome_error_0623==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0623=[];
for i=1:length(M2region7day6)
    if M2region7day6(i,6)==1
       a=find(s0623==M2region7day6(i,5));
       unbiased_currentoutcome_signcorrect_0623(a,:)=unbiased_currentoutcome0623(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0623(all(unbiased_currentoutcome_signcorrect_0623==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0623=[];
for i=1:length(M2region7day6)
    if M2region7day6(i,6)==1
       a=find(s0623==M2region7day6(i,5));
       unbiased_currentoutcome_correct_0623(a,:)=unbiased_currentoutcome0623(a,:);
    end
end
unbiased_currentoutcome_correct_0623(all(unbiased_currentoutcome_correct_0623==0,2),:) = [];



%%0624

load('L:\Monkey2\region8\20220624\proportions_of_cells_encoding_current_trials_outcome_20220624.mat');
iscell=readNPY('L:\Monkey2\region8\20220624\iscell.npy');
s0624=find(iscell(:,1)==1);

M2_region8_day1_4stages=union(union(union(M2region8stage1day1index,M2region8stage2day1index),M2region8stage3day1index),M2region8stage4day1index);
M2_region8_day1_0stage=setdiff(M2region8stage1day1diff_ratio_deltaF(:,1),M2_region8_day1_4stages);



for cell_num=1:length(M2_region8_day1_4stages)
    M2region8stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))))-mean(M2region8stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))));
    M2region8stage1day1_difference_struct=cell2mat(struct2cell(M2region8stage1day1_difference));
    
    M2region8stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))))-mean(M2region8stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))));
    M2region8stage2day1_difference_struct=cell2mat(struct2cell(M2region8stage2day1_difference));
    
    M2region8stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))))-mean(M2region8stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))));
    M2region8stage3day1_difference_struct=cell2mat(struct2cell(M2region8stage3day1_difference));
    
    M2region8stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))))-mean(M2region8stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day1_4stages(cell_num))));
    M2region8stage4day1_difference_struct=cell2mat(struct2cell(M2region8stage4day1_difference)); 
end
M2region8day1=[M2region8stage1day1_difference_struct M2region8stage2day1_difference_struct M2region8stage3day1_difference_struct M2region8stage4day1_difference_struct M2_region8_day1_4stages];
for i=1:length(M2region8day1)
    
    if sum(M2region8day1(i,1:4)<0)>sum(M2region8day1(i,1:4)>0)
        M2region8day1(i,6)=-1;
    elseif sum(M2region8day1(i,1:4)<0)<sum(M2region8day1(i,1:4)>0)
        M2region8day1(i,6)=1;
    elseif sum(M2region8day1(i,1:4)<0)==sum(M2region8day1(i,1:4)>0)
        if abs(mean(M2region8day1(i,find(M2region8day1(i,1:4)<0))))>abs(mean(M2region8day1(i,find(M2region8day1(i,1:4)>0))))
            M2region8day1(i,6)=-1;
        elseif abs(mean(M2region8day1(i,find(M2region8day1(i,1:4)<0))))<abs(mean(M2region8day1(i,find(M2region8day1(i,1:4)>0))))
            M2region8day1(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0624=[];
for i=1:length(M2region8day1)
    if M2region8day1(i,6)==-1
       a=find(s0624==M2region8day1(i,5));
       unbiased_currentoutcome_signerror_0624(a,:)=-unbiased_currentoutcome0624(a,:);
    end
end
unbiased_currentoutcome_signerror_0624(all(unbiased_currentoutcome_signerror_0624==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0624=[];
for i=1:length(M2region8day1)
    if M2region8day1(i,6)==-1
       a=find(s0624==M2region8day1(i,5));
       unbiased_currentoutcome_error_0624(a,:)=unbiased_currentoutcome0624(a,:);
    end
end
unbiased_currentoutcome_error_0624(all(unbiased_currentoutcome_error_0624==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0624=[];
for i=1:length(M2region8day1)
    if M2region8day1(i,6)==1
       a=find(s0624==M2region8day1(i,5));
       unbiased_currentoutcome_signcorrect_0624(a,:)=unbiased_currentoutcome0624(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0624(all(unbiased_currentoutcome_signcorrect_0624==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0624=[];
for i=1:length(M2region8day1)
    if M2region8day1(i,6)==1
       a=find(s0624==M2region8day1(i,5));
       unbiased_currentoutcome_correct_0624(a,:)=unbiased_currentoutcome0624(a,:);
    end
end
unbiased_currentoutcome_correct_0624(all(unbiased_currentoutcome_correct_0624==0,2),:) = [];


%%0627

load('L:\Monkey2\region8\20220627\proportions_of_cells_encoding_current_trials_outcome_20220627.mat');
iscell=readNPY('L:\Monkey2\region8\20220627\iscell.npy');
s0627=find(iscell(:,1)==1);

M2_region8_day2_4stages=union(union(union(M2region8stage1day2index,M2region8stage2day2index),M2region8stage3day2index),M2region8stage4day2index);
M2_region8_day2_0stage=setdiff(M2region8stage1day2diff_ratio_deltaF(:,1),M2_region8_day2_4stages);



for cell_num=1:length(M2_region8_day2_4stages)
    M2region8stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))))-mean(M2region8stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))));
    M2region8stage1day2_difference_struct=cell2mat(struct2cell(M2region8stage1day2_difference));
    
    M2region8stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))))-mean(M2region8stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))));
    M2region8stage2day2_difference_struct=cell2mat(struct2cell(M2region8stage2day2_difference));
    
    M2region8stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))))-mean(M2region8stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))));
    M2region8stage3day2_difference_struct=cell2mat(struct2cell(M2region8stage3day2_difference));
    
    M2region8stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))))-mean(M2region8stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day2_4stages(cell_num))));
    M2region8stage4day2_difference_struct=cell2mat(struct2cell(M2region8stage4day2_difference));
end
M2region8day2=[M2region8stage1day2_difference_struct M2region8stage2day2_difference_struct M2region8stage3day2_difference_struct M2region8stage4day2_difference_struct M2_region8_day2_4stages];
for i=1:length(M2region8day2)
    
    if sum(M2region8day2(i,1:4)<0)>sum(M2region8day2(i,1:4)>0)
        M2region8day2(i,6)=-1;
    elseif sum(M2region8day2(i,1:4)<0)<sum(M2region8day2(i,1:4)>0)
        M2region8day2(i,6)=1;
    elseif sum(M2region8day2(i,1:4)<0)==sum(M2region8day2(i,1:4)>0)
        if abs(mean(M2region8day2(i,find(M2region8day2(i,1:4)<0))))>abs(mean(M2region8day2(i,find(M2region8day2(i,1:4)>0))))
            M2region8day2(i,6)=-1;
        elseif abs(mean(M2region8day2(i,find(M2region8day2(i,1:4)<0))))<abs(mean(M2region8day2(i,find(M2region8day2(i,1:4)>0))))
            M2region8day2(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0627=[];
for i=1:length(M2region8day2)
    if M2region8day2(i,6)==-1
       a=find(s0627==M2region8day2(i,5));
       unbiased_currentoutcome_signerror_0627(a,:)=-unbiased_currentoutcome0627(a,:);
    end
end
unbiased_currentoutcome_signerror_0627(all(unbiased_currentoutcome_signerror_0627==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0627=[];
for i=1:length(M2region8day2)
    if M2region8day2(i,6)==-1
       a=find(s0627==M2region8day2(i,5));
       unbiased_currentoutcome_error_0627(a,:)=unbiased_currentoutcome0627(a,:);
    end
end
unbiased_currentoutcome_error_0627(all(unbiased_currentoutcome_error_0627==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0627=[];
for i=1:length(M2region8day2)
    if M2region8day2(i,6)==1
       a=find(s0627==M2region8day2(i,5));
       unbiased_currentoutcome_signcorrect_0627(a,:)=unbiased_currentoutcome0627(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0627(all(unbiased_currentoutcome_signcorrect_0627==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0627=[];
for i=1:length(M2region8day2)
    if M2region8day2(i,6)==1
       a=find(s0627==M2region8day2(i,5));
       unbiased_currentoutcome_correct_0627(a,:)=unbiased_currentoutcome0627(a,:);
    end
end
unbiased_currentoutcome_correct_0627(all(unbiased_currentoutcome_correct_0627==0,2),:) = [];

%%0628

load('L:\Monkey2\region8\20220628\proportions_of_cells_encoding_current_trials_outcome_20220628.mat');
iscell=readNPY('L:\Monkey2\region8\20220628\iscell.npy');
s0628=find(iscell(:,1)==1);

M2_region8_day3_4stages=union(union(union(M2region8stage1day3index,M2region8stage2day3index),M2region8stage3day3index),M2region8stage4day3index);
M2_region8_day3_0stage=setdiff(M2region8stage1day3diff_ratio_deltaF(:,1),M2_region8_day3_4stages);

for cell_num=1:length(M2_region8_day3_4stages)
    M2region8stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))))-mean(M2region8stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))));
    M2region8stage1day3_difference_struct=cell2mat(struct2cell(M2region8stage1day3_difference));
    
    M2region8stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))))-mean(M2region8stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))));
    M2region8stage2day3_difference_struct=cell2mat(struct2cell(M2region8stage2day3_difference));
    
    M2region8stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))))-mean(M2region8stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))));
    M2region8stage3day3_difference_struct=cell2mat(struct2cell(M2region8stage3day3_difference));
    
    M2region8stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))))-mean(M2region8stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day3_4stages(cell_num))));
    M2region8stage4day3_difference_struct=cell2mat(struct2cell(M2region8stage4day3_difference));
end
M2region8day3=[M2region8stage1day3_difference_struct M2region8stage2day3_difference_struct M2region8stage3day3_difference_struct M2region8stage4day3_difference_struct M2_region8_day3_4stages];
for i=1:length(M2region8day3)
    
    if sum(M2region8day3(i,1:4)<0)>sum(M2region8day3(i,1:4)>0)
        M2region8day3(i,6)=-1;
    elseif sum(M2region8day3(i,1:4)<0)<sum(M2region8day3(i,1:4)>0)
        M2region8day3(i,6)=1;
    elseif sum(M2region8day3(i,1:4)<0)==sum(M2region8day3(i,1:4)>0)
        if abs(mean(M2region8day3(i,find(M2region8day3(i,1:4)<0))))>abs(mean(M2region8day3(i,find(M2region8day3(i,1:4)>0))))
            M2region8day3(i,6)=-1;
        elseif abs(mean(M2region8day3(i,find(M2region8day3(i,1:4)<0))))<abs(mean(M2region8day3(i,find(M2region8day3(i,1:4)>0))))
            M2region8day3(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0628=[];
for i=1:length(M2region8day3)
    if M2region8day3(i,6)==-1
       a=find(s0628==M2region8day3(i,5));
       unbiased_currentoutcome_signerror_0628(a,:)=-unbiased_currentoutcome0628(a,:);
    end
end
unbiased_currentoutcome_signerror_0628(all(unbiased_currentoutcome_signerror_0628==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0628=[];
for i=1:length(M2region8day3)
    if M2region8day3(i,6)==-1
       a=find(s0628==M2region8day3(i,5));
       unbiased_currentoutcome_error_0628(a,:)=unbiased_currentoutcome0628(a,:);
    end
end
unbiased_currentoutcome_error_0628(all(unbiased_currentoutcome_error_0628==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0628=[];
for i=1:length(M2region8day3)
    if M2region8day3(i,6)==1
       a=find(s0628==M2region8day3(i,5));
       unbiased_currentoutcome_signcorrect_0628(a,:)=unbiased_currentoutcome0628(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0628(all(unbiased_currentoutcome_signcorrect_0628==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0628=[];
for i=1:length(M2region8day3)
    if M2region8day3(i,6)==1
       a=find(s0628==M2region8day3(i,5));
       unbiased_currentoutcome_correct_0628(a,:)=unbiased_currentoutcome0628(a,:);
    end
end
unbiased_currentoutcome_correct_0628(all(unbiased_currentoutcome_correct_0628==0,2),:) = [];


%%0629
load('L:\Monkey2\region8\20220629\proportions_of_cells_encoding_current_trials_outcome_20220629.mat');
iscell=readNPY('L:\Monkey2\region8\20220629\iscell.npy');
s0629=find(iscell(:,1)==1);


M2_region8_day4_4stages=union(union(union(M2region8stage1day4index,M2region8stage2day4index),M2region8stage3day4index),M2region8stage4day4index);
M2_region8_day4_0stage=setdiff(M2region8stage1day4diff_ratio_deltaF(:,1),M2_region8_day4_4stages);


for cell_num=1:length(M2_region8_day4_4stages)
    M2region8stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))))-mean(M2region8stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))));
    M2region8stage1day4_difference_struct=cell2mat(struct2cell(M2region8stage1day4_difference));
    
    M2region8stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))))-mean(M2region8stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))));
    M2region8stage2day4_difference_struct=cell2mat(struct2cell(M2region8stage2day4_difference));
    
    M2region8stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))))-mean(M2region8stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))));
    M2region8stage3day4_difference_struct=cell2mat(struct2cell(M2region8stage3day4_difference));
    
    M2region8stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))))-mean(M2region8stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day4_4stages(cell_num))));
    M2region8stage4day4_difference_struct=cell2mat(struct2cell(M2region8stage4day4_difference));
end
M2region8day4=[M2region8stage1day4_difference_struct M2region8stage2day4_difference_struct M2region8stage3day4_difference_struct M2region8stage4day4_difference_struct M2_region8_day4_4stages];
for i=1:length(M2region8day4)
    
    if sum(M2region8day4(i,1:4)<0)>sum(M2region8day4(i,1:4)>0)
        M2region8day4(i,6)=-1;
    elseif sum(M2region8day4(i,1:4)<0)<sum(M2region8day4(i,1:4)>0)
        M2region8day4(i,6)=1;
    elseif sum(M2region8day4(i,1:4)<0)==sum(M2region8day4(i,1:4)>0)
        if abs(mean(M2region8day4(i,find(M2region8day4(i,1:4)<0))))>abs(mean(M2region8day4(i,find(M2region8day4(i,1:4)>0))))
            M2region8day4(i,6)=-1;
        elseif abs(mean(M2region8day4(i,find(M2region8day4(i,1:4)<0))))<abs(mean(M2region8day4(i,find(M2region8day4(i,1:4)>0))))
            M2region8day4(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0629=[];
for i=1:length(M2region8day4)
    if M2region8day4(i,6)==-1
       a=find(s0629==M2region8day4(i,5));
       unbiased_currentoutcome_signerror_0629(a,:)=-unbiased_currentoutcome0629(a,:);
    end
end
unbiased_currentoutcome_signerror_0629(all(unbiased_currentoutcome_signerror_0629==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0629=[];
for i=1:length(M2region8day4)
    if M2region8day4(i,6)==-1
       a=find(s0629==M2region8day4(i,5));
       unbiased_currentoutcome_error_0629(a,:)=unbiased_currentoutcome0629(a,:);
    end
end
unbiased_currentoutcome_error_0629(all(unbiased_currentoutcome_error_0629==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0629=[];
for i=1:length(M2region8day4)
    if M2region8day4(i,6)==1
       a=find(s0629==M2region8day4(i,5));
       unbiased_currentoutcome_signcorrect_0629(a,:)=unbiased_currentoutcome0629(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0629(all(unbiased_currentoutcome_signcorrect_0629==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0629=[];
for i=1:length(M2region8day4)
    if M2region8day4(i,6)==1
       a=find(s0629==M2region8day4(i,5));
       unbiased_currentoutcome_correct_0629(a,:)=unbiased_currentoutcome0629(a,:);
    end
end
unbiased_currentoutcome_correct_0629(all(unbiased_currentoutcome_correct_0629==0,2),:) = [];


%%0630
load('L:\Monkey2\region8\20220630\proportions_of_cells_encoding_current_trials_outcome_20220630.mat');
iscell=readNPY('L:\Monkey2\region8\20220630\iscell.npy');
s0630=find(iscell(:,1)==1);
M2_region8_day5_4stages=union(union(union(M2region8stage1day5index,M2region8stage2day5index),M2region8stage3day5index),M2region8stage4day5index);
M2_region8_day5_0stage=setdiff(M2region8stage1day5diff_ratio_deltaF(:,1),M2_region8_day5_4stages);

for cell_num=1:length(M2_region8_day5_4stages)
    M2region8stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))))-mean(M2region8stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))));
    M2region8stage1day5_difference_struct=cell2mat(struct2cell(M2region8stage1day5_difference));
    
    M2region8stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))))-mean(M2region8stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))));
    M2region8stage2day5_difference_struct=cell2mat(struct2cell(M2region8stage2day5_difference));
    
    M2region8stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))))-mean(M2region8stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))));
    M2region8stage3day5_difference_struct=cell2mat(struct2cell(M2region8stage3day5_difference));
    
    M2region8stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M2region8stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))))-mean(M2region8stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M2_region8_day5_4stages(cell_num))));
    M2region8stage4day5_difference_struct=cell2mat(struct2cell(M2region8stage4day5_difference));
end
M2region8day5=[M2region8stage1day5_difference_struct M2region8stage2day5_difference_struct M2region8stage3day5_difference_struct M2region8stage4day5_difference_struct M2_region8_day5_4stages];
for i=1:length(M2region8day5)
    
    if sum(M2region8day5(i,1:4)<0)>sum(M2region8day5(i,1:4)>0)
        M2region8day5(i,6)=-1;
    elseif sum(M2region8day5(i,1:4)<0)<sum(M2region8day5(i,1:4)>0)
        M2region8day5(i,6)=1;
    elseif sum(M2region8day5(i,1:4)<0)==sum(M2region8day5(i,1:4)>0)
        if abs(mean(M2region8day5(i,find(M2region8day5(i,1:4)<0))))>abs(mean(M2region8day5(i,find(M2region8day5(i,1:4)>0))))
            M2region8day5(i,6)=-1;
        elseif abs(mean(M2region8day5(i,find(M2region8day5(i,1:4)<0))))<abs(mean(M2region8day5(i,find(M2region8day5(i,1:4)>0))))
            M2region8day5(i,6)=1;
        end
    end
end






%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0630=[];
for i=1:length(M2region8day5)
    if M2region8day5(i,6)==-1
       a=find(s0630==M2region8day5(i,5));
       unbiased_currentoutcome_signerror_0630(a,:)=-unbiased_currentoutcome0630(a,:);
    end
end
unbiased_currentoutcome_signerror_0630(all(unbiased_currentoutcome_signerror_0630==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0630=[];
for i=1:length(M2region8day5)
    if M2region8day5(i,6)==-1
       a=find(s0630==M2region8day5(i,5));
       unbiased_currentoutcome_error_0630(a,:)=unbiased_currentoutcome0630(a,:);
    end
end
unbiased_currentoutcome_error_0630(all(unbiased_currentoutcome_error_0630==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0630=[];
for i=1:length(M2region8day5)
    if M2region8day5(i,6)==1
       a=find(s0630==M2region8day5(i,5));
       unbiased_currentoutcome_signcorrect_0630(a,:)=unbiased_currentoutcome0630(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0630(all(unbiased_currentoutcome_signcorrect_0630==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0630=[];
for i=1:length(M2region8day5)
    if M2region8day5(i,6)==1
       a=find(s0630==M2region8day5(i,5));
       unbiased_currentoutcome_correct_0630(a,:)=unbiased_currentoutcome0630(a,:);
    end
end
unbiased_currentoutcome_correct_0630(all(unbiased_currentoutcome_correct_0630==0,2),:) = [];

unbiased_currentoutcome_wrong=[unbiased_currentoutcome_error_0426;unbiased_currentoutcome_error_0427;unbiased_currentoutcome_error_0428;unbiased_currentoutcome_error_0429;unbiased_currentoutcome_error_0430;unbiased_currentoutcome_error_0501;unbiased_currentoutcome_error_0502;unbiased_currentoutcome_error_0503;unbiased_currentoutcome_error_0504;unbiased_currentoutcome_error_0505;unbiased_currentoutcome_error_0506;unbiased_currentoutcome_error_0507;unbiased_currentoutcome_error_0508;unbiased_currentoutcome_error_0509;unbiased_currentoutcome_error_0510;unbiased_currentoutcome_error_0511;unbiased_currentoutcome_error_0512;unbiased_currentoutcome_error_0513;unbiased_currentoutcome_error_0517;unbiased_currentoutcome_error_0518;unbiased_currentoutcome_error_0519;unbiased_currentoutcome_error_0524;unbiased_currentoutcome_error_0526;unbiased_currentoutcome_error_0527;unbiased_currentoutcome_error_0528;unbiased_currentoutcome_error_0529;unbiased_currentoutcome_error_0530;unbiased_currentoutcome_error_0610;unbiased_currentoutcome_error_0611;unbiased_currentoutcome_error_0612;unbiased_currentoutcome_error_0613;unbiased_currentoutcome_error_0618;unbiased_currentoutcome_error_0619;unbiased_currentoutcome_error_0620;unbiased_currentoutcome_error_0621;unbiased_currentoutcome_error_0622;unbiased_currentoutcome_error_0623;unbiased_currentoutcome_error_0624;unbiased_currentoutcome_error_0627;unbiased_currentoutcome_error_0628;unbiased_currentoutcome_error_0629;unbiased_currentoutcome_error_0630];

unbiased_currentoutcome_correct=[unbiased_currentoutcome_correct_0426;unbiased_currentoutcome_correct_0427;unbiased_currentoutcome_correct_0428;unbiased_currentoutcome_correct_0429;unbiased_currentoutcome_correct_0430;unbiased_currentoutcome_correct_0501;unbiased_currentoutcome_correct_0502;unbiased_currentoutcome_correct_0503;unbiased_currentoutcome_correct_0504;unbiased_currentoutcome_correct_0505;unbiased_currentoutcome_correct_0506;unbiased_currentoutcome_correct_0507;unbiased_currentoutcome_correct_0508;unbiased_currentoutcome_correct_0509;unbiased_currentoutcome_correct_0510;unbiased_currentoutcome_correct_0511;unbiased_currentoutcome_correct_0512;unbiased_currentoutcome_correct_0513;unbiased_currentoutcome_correct_0517;unbiased_currentoutcome_correct_0518;unbiased_currentoutcome_correct_0519;unbiased_currentoutcome_correct_0524;unbiased_currentoutcome_correct_0526;unbiased_currentoutcome_correct_0527;unbiased_currentoutcome_correct_0528;unbiased_currentoutcome_correct_0529;unbiased_currentoutcome_correct_0530;unbiased_currentoutcome_correct_0610;unbiased_currentoutcome_correct_0611;unbiased_currentoutcome_correct_0612;unbiased_currentoutcome_correct_0613;unbiased_currentoutcome_correct_0618;unbiased_currentoutcome_correct_0619;unbiased_currentoutcome_correct_0620;unbiased_currentoutcome_correct_0621;unbiased_currentoutcome_correct_0622;unbiased_currentoutcome_correct_0623;unbiased_currentoutcome_correct_0624;unbiased_currentoutcome_correct_0627;unbiased_currentoutcome_correct_0628;unbiased_currentoutcome_correct_0629;unbiased_currentoutcome_correct_0630];

shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome_wrong(:,2:20),1),std(unbiased_currentoutcome_wrong(:,2:20),1)./sqrt(length(unbiased_currentoutcome_wrong(:,2:20))),'lineProps','r');
xline(0);
hold on
shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome_correct(:,2:20),1),std(unbiased_currentoutcome_correct(:,2:20),1)./sqrt(length(unbiased_currentoutcome_correct(:,2:20))),'lineProps','g');
ylim([0 0.03]);


for i=1:length(unbiased_currentoutcome_wrong)
    for j=1:size(unbiased_currentoutcome_wrong,2)
        new(i,j)=abs(unbiased_currentoutcome_wrong(i,j));
        
    end
end

aa=sum(sum(new))/length(unbiased_currentoutcome_wrong);




for i=1:length(unbiased_currentoutcome_correct)
    for j=1:size(unbiased_currentoutcome_correct,2)
        new_correct(i,j)=abs(unbiased_currentoutcome_correct(i,j));
        
    end
end

bb=sum(sum(new_correct))/length(unbiased_currentoutcome_correct);







for i=2:20
  [p,h]=ranksum(unbiased_currentoutcome_wrong(:,i),unbiased_currentoutcome_correct(:,i),'alpha',0.0000625);
  results(1,i-1)=p;
  results(2,i-1)=h;
end