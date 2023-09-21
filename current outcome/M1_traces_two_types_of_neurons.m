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





%%20211108
load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_current_trials_outcome_20211108.mat');
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s1108=find(iscell(:,1)==1);

M1_region1_day1_4stages=union(union(union(M1region1stage1day1index,M1region1stage2day1index),M1region1stage3day1index),M1region1stage4day1index);
M1_region1_day1_0stage=setdiff(M1region1stage1day1diff_ratio_deltaF(:,1),M1_region1_day1_4stages);

for cell_num=1:length(M1_region1_day1_4stages)
    M1region1stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))))-mean(M1region1stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))));
    M1region1stage1day1_difference_struct=cell2mat(struct2cell(M1region1stage1day1_difference));
    
    M1region1stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))))-mean(M1region1stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))));
    M1region1stage2day1_difference_struct=cell2mat(struct2cell(M1region1stage2day1_difference));
    
    M1region1stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))))-mean(M1region1stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))));
    M1region1stage3day1_difference_struct=cell2mat(struct2cell(M1region1stage3day1_difference));
    
    M1region1stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))))-mean(M1region1stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_4stages(cell_num))));
    M1region1stage4day1_difference_struct=cell2mat(struct2cell(M1region1stage4day1_difference)); 
end
M1region1day1=[M1region1stage1day1_difference_struct M1region1stage2day1_difference_struct M1region1stage3day1_difference_struct M1region1stage4day1_difference_struct M1_region1_day1_4stages];
for i=1:length(M1region1day1)
    
    if sum(M1region1day1(i,1:4)<0)>sum(M1region1day1(i,1:4)>0)
        M1region1day1(i,6)=-1;
    elseif sum(M1region1day1(i,1:4)<0)<sum(M1region1day1(i,1:4)>0)
        M1region1day1(i,6)=1;
    elseif sum(M1region1day1(i,1:4)<0)==sum(M1region1day1(i,1:4)>0)
        if abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)<0))))>abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)>0))))
            M1region1day1(i,6)=-1;
        elseif abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)<0))))<abs(mean(M1region1day1(i,find(M1region1day1(i,1:4)>0))))
            M1region1day1(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,6)==-1
       a=find(s1108==M1region1day1(i,5));
       unbiased_currentoutcome_signerror_1108(a,:)=-unbiased_currentoutcome1108(a,:);
    end
end
unbiased_currentoutcome_signerror_1108(all(unbiased_currentoutcome_signerror_1108==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,6)==-1
       a=find(s1108==M1region1day1(i,5));
       unbiased_currentoutcome_error_1108(a,:)=unbiased_currentoutcome1108(a,:);
    end
end
unbiased_currentoutcome_error_1108(all(unbiased_currentoutcome_error_1108==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,6)==1
       a=find(s1108==M1region1day1(i,5));
       unbiased_currentoutcome_signcorrect_1108(a,:)=unbiased_currentoutcome1108(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1108(all(unbiased_currentoutcome_signcorrect_1108==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,6)==1
       a=find(s1108==M1region1day1(i,5));
       unbiased_currentoutcome_correct_1108(a,:)=unbiased_currentoutcome1108(a,:);
    end
end
unbiased_currentoutcome_correct_1108(all(unbiased_currentoutcome_correct_1108==0,2),:) = [];



%%1109

load('L:\Monkey1\region1\20211109\proportions_of_cells_encoding_current_trials_outcome_20211109.mat');
iscell=readNPY('L:\Monkey1\region1\20211109\iscell.npy');
s1109=find(iscell(:,1)==1);

M1_region1_day2_4stages=union(union(union(M1region1stage1day2index,M1region1stage2day2index),M1region1stage3day2index),M1region1stage4day2index);
M1_region1_day2_0stage=setdiff(M1region1stage1day2diff_ratio_deltaF(:,1),M1_region1_day2_4stages);

for cell_num=1:length(M1_region1_day2_4stages)
    M1region1stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))))-mean(M1region1stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))));
    M1region1stage1day2_difference_struct=cell2mat(struct2cell(M1region1stage1day2_difference));
    
    M1region1stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))))-mean(M1region1stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))));
    M1region1stage2day2_difference_struct=cell2mat(struct2cell(M1region1stage2day2_difference));
    
    M1region1stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))))-mean(M1region1stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))));
    M1region1stage3day2_difference_struct=cell2mat(struct2cell(M1region1stage3day2_difference));
    
    M1region1stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))))-mean(M1region1stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day2_4stages(cell_num))));
    M1region1stage4day2_difference_struct=cell2mat(struct2cell(M1region1stage4day2_difference));
end
M1region1day2=[M1region1stage1day2_difference_struct M1region1stage2day2_difference_struct M1region1stage3day2_difference_struct M1region1stage4day2_difference_struct M1_region1_day2_4stages];
for i=1:length(M1region1day2)
    
    if sum(M1region1day2(i,1:4)<0)>sum(M1region1day2(i,1:4)>0)
        M1region1day2(i,6)=-1;
    elseif sum(M1region1day2(i,1:4)<0)<sum(M1region1day2(i,1:4)>0)
        M1region1day2(i,6)=1;
    elseif sum(M1region1day2(i,1:4)<0)==sum(M1region1day2(i,1:4)>0)
        if abs(mean(M1region1day2(i,find(M1region1day2(i,1:4)<0))))>abs(mean(M1region1day2(i,find(M1region1day2(i,1:4)>0))))
            M1region1day2(i,6)=-1;
        elseif abs(mean(M1region1day2(i,find(M1region1day2(i,1:4)<0))))<abs(mean(M1region1day2(i,find(M1region1day2(i,1:4)>0))))
            M1region1day2(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1109=[];
for i=1:length(M1region1day2)
    if M1region1day2(i,6)==-1
       a=find(s1109==M1region1day2(i,5));
       unbiased_currentoutcome_signerror_1109(a,:)=-unbiased_currentoutcome1109(a,:);
    end
end
unbiased_currentoutcome_signerror_1109(all(unbiased_currentoutcome_signerror_1109==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1109=[];
for i=1:length(M1region1day2)
    if M1region1day2(i,6)==-1
       a=find(s1109==M1region1day2(i,5));
       unbiased_currentoutcome_error_1109(a,:)=unbiased_currentoutcome1109(a,:);
    end
end
unbiased_currentoutcome_error_1109(all(unbiased_currentoutcome_error_1109==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1109=[];
for i=1:length(M1region1day2)
    if M1region1day2(i,6)==1
       a=find(s1109==M1region1day2(i,5));
       unbiased_currentoutcome_signcorrect_1109(a,:)=unbiased_currentoutcome1109(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1109(all(unbiased_currentoutcome_signcorrect_1109==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1109=[];
for i=1:length(M1region1day2)
    if M1region1day2(i,6)==1
       a=find(s1109==M1region1day2(i,5));
       unbiased_currentoutcome_correct_1109(a,:)=unbiased_currentoutcome1109(a,:);
    end
end
unbiased_currentoutcome_correct_1109(all(unbiased_currentoutcome_correct_1109==0,2),:) = [];

%%1110
load('L:\Monkey1\region1\20211110\proportions_of_cells_encoding_current_trials_outcome_20211110.mat');
iscell=readNPY('L:\Monkey1\region1\20211110\iscell.npy');
s1110=find(iscell(:,1)==1);


M1_region1_day3_4stages=union(union(union(M1region1stage1day3index,M1region1stage2day3index),M1region1stage3day3index),M1region1stage4day3index);
M1_region1_day3_0stage=setdiff(M1region1stage1day3diff_ratio_deltaF(:,1),M1_region1_day3_4stages);

for cell_num=1:length(M1_region1_day3_4stages)
    M1region1stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))))-mean(M1region1stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))));
    M1region1stage1day3_difference_struct=cell2mat(struct2cell(M1region1stage1day3_difference));
    
    M1region1stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))))-mean(M1region1stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))));
    M1region1stage2day3_difference_struct=cell2mat(struct2cell(M1region1stage2day3_difference));
    
    M1region1stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))))-mean(M1region1stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))));
    M1region1stage3day3_difference_struct=cell2mat(struct2cell(M1region1stage3day3_difference));
    
    M1region1stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))))-mean(M1region1stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day3_4stages(cell_num))));
    M1region1stage4day3_difference_struct=cell2mat(struct2cell(M1region1stage4day3_difference));
end
M1region1day3=[M1region1stage1day3_difference_struct M1region1stage2day3_difference_struct M1region1stage3day3_difference_struct M1region1stage4day3_difference_struct M1_region1_day3_4stages];
for i=1:length(M1region1day3)
    
    if sum(M1region1day3(i,1:4)<0)>sum(M1region1day3(i,1:4)>0)
        M1region1day3(i,6)=-1;
    elseif sum(M1region1day3(i,1:4)<0)<sum(M1region1day3(i,1:4)>0)
        M1region1day3(i,6)=1;
    elseif sum(M1region1day3(i,1:4)<0)==sum(M1region1day3(i,1:4)>0)
        if abs(mean(M1region1day3(i,find(M1region1day3(i,1:4)<0))))>abs(mean(M1region1day3(i,find(M1region1day3(i,1:4)>0))))
            M1region1day3(i,6)=-1;
        elseif abs(mean(M1region1day3(i,find(M1region1day3(i,1:4)<0))))<abs(mean(M1region1day3(i,find(M1region1day3(i,1:4)>0))))
            M1region1day3(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1110=[];
for i=1:length(M1region1day3)
    if M1region1day3(i,6)==-1
       a=find(s1110==M1region1day3(i,5));
       unbiased_currentoutcome_signerror_1110(a,:)=-unbiased_currentoutcome1110(a,:);
    end
end
unbiased_currentoutcome_signerror_1110(all(unbiased_currentoutcome_signerror_1110==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1110=[];
for i=1:length(M1region1day3)
    if M1region1day3(i,6)==-1
       a=find(s1110==M1region1day3(i,5));
       unbiased_currentoutcome_error_1110(a,:)=unbiased_currentoutcome1110(a,:);
    end
end
unbiased_currentoutcome_error_1110(all(unbiased_currentoutcome_error_1110==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1110=[];
for i=1:length(M1region1day3)
    if M1region1day3(i,6)==1
       a=find(s1110==M1region1day3(i,5));
       unbiased_currentoutcome_signcorrect_1110(a,:)=unbiased_currentoutcome1110(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1110(all(unbiased_currentoutcome_signcorrect_1110==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1110=[];
for i=1:length(M1region1day3)
    if M1region1day3(i,6)==1
       a=find(s1110==M1region1day3(i,5));
       unbiased_currentoutcome_correct_1110(a,:)=unbiased_currentoutcome1110(a,:);
    end
end
unbiased_currentoutcome_correct_1110(all(unbiased_currentoutcome_correct_1110==0,2),:) = [];

%%1111
load('L:\Monkey1\region1\20211111\proportions_of_cells_encoding_current_trials_outcome_20211111.mat');
iscell=readNPY('L:\Monkey1\region1\20211111\iscell.npy');
s1111=find(iscell(:,1)==1);

M1_region1_day4_4stages=union(union(union(M1region1stage1day4index,M1region1stage2day4index),M1region1stage3day4index),M1region1stage4day4index);
M1_region1_day4_0stage=setdiff(M1region1stage1day4diff_ratio_deltaF(:,1),M1_region1_day4_4stages);


for cell_num=1:length(M1_region1_day4_4stages)
    M1region1stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))))-mean(M1region1stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))));
    M1region1stage1day4_difference_struct=cell2mat(struct2cell(M1region1stage1day4_difference));
    
    M1region1stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))))-mean(M1region1stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))));
    M1region1stage2day4_difference_struct=cell2mat(struct2cell(M1region1stage2day4_difference));
    
    M1region1stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))))-mean(M1region1stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))));
    M1region1stage3day4_difference_struct=cell2mat(struct2cell(M1region1stage3day4_difference));
    
    M1region1stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))))-mean(M1region1stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day4_4stages(cell_num))));
    M1region1stage4day4_difference_struct=cell2mat(struct2cell(M1region1stage4day4_difference));
end
M1region1day4=[M1region1stage1day4_difference_struct M1region1stage2day4_difference_struct M1region1stage3day4_difference_struct M1region1stage4day4_difference_struct M1_region1_day4_4stages];
for i=1:length(M1region1day4)
    
    if sum(M1region1day4(i,1:4)<0)>sum(M1region1day4(i,1:4)>0)
        M1region1day4(i,6)=-1;
    elseif sum(M1region1day4(i,1:4)<0)<sum(M1region1day4(i,1:4)>0)
        M1region1day4(i,6)=1;
    elseif sum(M1region1day4(i,1:4)<0)==sum(M1region1day4(i,1:4)>0)
        if abs(mean(M1region1day4(i,find(M1region1day4(i,1:4)<0))))>abs(mean(M1region1day4(i,find(M1region1day4(i,1:4)>0))))
            M1region1day4(i,6)=-1;
        elseif abs(mean(M1region1day4(i,find(M1region1day4(i,1:4)<0))))<abs(mean(M1region1day4(i,find(M1region1day4(i,1:4)>0))))
            M1region1day4(i,6)=1;
        end
    end
end





%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1111=[];
for i=1:length(M1region1day4)
    if M1region1day4(i,6)==-1
       a=find(s1111==M1region1day4(i,5));
       unbiased_currentoutcome_signerror_1111(a,:)=-unbiased_currentoutcome1111(a,:);
    end
end
unbiased_currentoutcome_signerror_1111(all(unbiased_currentoutcome_signerror_1111==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1111=[];
for i=1:length(M1region1day4)
    if M1region1day4(i,6)==-1
       a=find(s1111==M1region1day4(i,5));
       unbiased_currentoutcome_error_1111(a,:)=unbiased_currentoutcome1111(a,:);
    end
end
unbiased_currentoutcome_error_1111(all(unbiased_currentoutcome_error_1111==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1111=[];
for i=1:length(M1region1day4)
    if M1region1day4(i,6)==1
       a=find(s1111==M1region1day4(i,5));
       unbiased_currentoutcome_signcorrect_1111(a,:)=unbiased_currentoutcome1111(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1111(all(unbiased_currentoutcome_signcorrect_1111==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1111=[];
for i=1:length(M1region1day4)
    if M1region1day4(i,6)==1
       a=find(s1111==M1region1day4(i,5));
       unbiased_currentoutcome_correct_1111(a,:)=unbiased_currentoutcome1111(a,:);
    end
end
unbiased_currentoutcome_correct_1111(all(unbiased_currentoutcome_correct_1111==0,2),:) = [];

%%1112
load('L:\Monkey1\region1\20211112\proportions_of_cells_encoding_current_trials_outcome_20211112.mat');
iscell=readNPY('L:\Monkey1\region1\20211112\iscell.npy');
s1112=find(iscell(:,1)==1);


M1_region1_day5_4stages=union(union(union(M1region1stage1day5index,M1region1stage2day5index),M1region1stage3day5index),M1region1stage4day5index);
M1_region1_day5_0stage=setdiff(M1region1stage1day5diff_ratio_deltaF(:,1),M1_region1_day5_4stages);



for cell_num=1:length(M1_region1_day5_4stages)
    M1region1stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))))-mean(M1region1stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))));
    M1region1stage1day5_difference_struct=cell2mat(struct2cell(M1region1stage1day5_difference));
    
    M1region1stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))))-mean(M1region1stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))));
    M1region1stage2day5_difference_struct=cell2mat(struct2cell(M1region1stage2day5_difference));
    
    M1region1stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))))-mean(M1region1stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))));
    M1region1stage3day5_difference_struct=cell2mat(struct2cell(M1region1stage3day5_difference));
    
    M1region1stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))))-mean(M1region1stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day5_4stages(cell_num))));
    M1region1stage4day5_difference_struct=cell2mat(struct2cell(M1region1stage4day5_difference));
end
M1region1day5=[M1region1stage1day5_difference_struct M1region1stage2day5_difference_struct M1region1stage3day5_difference_struct M1region1stage4day5_difference_struct M1_region1_day5_4stages];
for i=1:length(M1region1day5)
    
    if sum(M1region1day5(i,1:4)<0)>sum(M1region1day5(i,1:4)>0)
        M1region1day5(i,6)=-1;
    elseif sum(M1region1day5(i,1:4)<0)<sum(M1region1day5(i,1:4)>0)
        M1region1day5(i,6)=1;
    elseif sum(M1region1day5(i,1:4)<0)==sum(M1region1day5(i,1:4)>0)
        if abs(mean(M1region1day5(i,find(M1region1day5(i,1:4)<0))))>abs(mean(M1region1day5(i,find(M1region1day5(i,1:4)>0))))
            M1region1day5(i,6)=-1;
        elseif abs(mean(M1region1day5(i,find(M1region1day5(i,1:4)<0))))<abs(mean(M1region1day5(i,find(M1region1day5(i,1:4)>0))))
            M1region1day5(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1112=[];
for i=1:length(M1region1day5)
    if M1region1day5(i,6)==-1
       a=find(s1112==M1region1day5(i,5));
       unbiased_currentoutcome_signerror_1112(a,:)=-unbiased_currentoutcome1112(a,:);
    end
end
unbiased_currentoutcome_signerror_1112(all(unbiased_currentoutcome_signerror_1112==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1112=[];
for i=1:length(M1region1day5)
    if M1region1day5(i,6)==-1
       a=find(s1112==M1region1day5(i,5));
       unbiased_currentoutcome_error_1112(a,:)=unbiased_currentoutcome1112(a,:);
    end
end
unbiased_currentoutcome_error_1112(all(unbiased_currentoutcome_error_1112==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1112=[];
for i=1:length(M1region1day5)
    if M1region1day5(i,6)==1
       a=find(s1112==M1region1day5(i,5));
       unbiased_currentoutcome_signcorrect_1112(a,:)=unbiased_currentoutcome1112(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1112(all(unbiased_currentoutcome_signcorrect_1112==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1112=[];
for i=1:length(M1region1day5)
    if M1region1day5(i,6)==1
       a=find(s1112==M1region1day5(i,5));
       unbiased_currentoutcome_correct_1112(a,:)=unbiased_currentoutcome1112(a,:);
    end
end
unbiased_currentoutcome_correct_1112(all(unbiased_currentoutcome_correct_1112==0,2),:) = [];


%%1113
load('L:\Monkey1\region1\20211113\proportions_of_cells_encoding_current_trials_outcome_20211113.mat');
iscell=readNPY('L:\Monkey1\region1\20211113\iscell.npy');
s1113=find(iscell(:,1)==1);

M1_region1_day6_4stages=union(union(union(M1region1stage1day6index,M1region1stage2day6index),M1region1stage3day6index),M1region1stage4day6index);
M1_region1_day6_0stage=setdiff(M1region1stage1day6diff_ratio_deltaF(:,1),M1_region1_day6_4stages);


for cell_num=1:length(M1_region1_day6_4stages)
    M1region1stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))))-mean(M1region1stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))));
    M1region1stage1day6_difference_struct=cell2mat(struct2cell(M1region1stage1day6_difference));
    
    M1region1stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))))-mean(M1region1stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))));
    M1region1stage2day6_difference_struct=cell2mat(struct2cell(M1region1stage2day6_difference));
    
    M1region1stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))))-mean(M1region1stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))));
    M1region1stage3day6_difference_struct=cell2mat(struct2cell(M1region1stage3day6_difference));
    
    M1region1stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))))-mean(M1region1stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day6_4stages(cell_num))));
    M1region1stage4day6_difference_struct=cell2mat(struct2cell(M1region1stage4day6_difference));
end
M1region1day6=[M1region1stage1day6_difference_struct M1region1stage2day6_difference_struct M1region1stage3day6_difference_struct M1region1stage4day6_difference_struct M1_region1_day6_4stages];
for i=1:length(M1region1day6)
    
    if sum(M1region1day6(i,1:4)<0)>sum(M1region1day6(i,1:4)>0)
        M1region1day6(i,6)=-1;
    elseif sum(M1region1day6(i,1:4)<0)<sum(M1region1day6(i,1:4)>0)
        M1region1day6(i,6)=1;
    elseif sum(M1region1day6(i,1:4)<0)==sum(M1region1day6(i,1:4)>0)
        if abs(mean(M1region1day6(i,find(M1region1day6(i,1:4)<0))))>abs(mean(M1region1day6(i,find(M1region1day6(i,1:4)>0))))
            M1region1day6(i,6)=-1;
        elseif abs(mean(M1region1day6(i,find(M1region1day6(i,1:4)<0))))<abs(mean(M1region1day6(i,find(M1region1day6(i,1:4)>0))))
            M1region1day6(i,6)=1;
        end
    end
end





%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1113=[];
for i=1:length(M1region1day6)
    if M1region1day6(i,6)==-1
       a=find(s1113==M1region1day6(i,5));
       unbiased_currentoutcome_signerror_1113(a,:)=-unbiased_currentoutcome1113(a,:);
    end
end
unbiased_currentoutcome_signerror_1113(all(unbiased_currentoutcome_signerror_1113==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1113=[];
for i=1:length(M1region1day6)
    if M1region1day6(i,6)==-1
       a=find(s1113==M1region1day6(i,5));
       unbiased_currentoutcome_error_1113(a,:)=unbiased_currentoutcome1113(a,:);
    end
end
unbiased_currentoutcome_error_1113(all(unbiased_currentoutcome_error_1113==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1113=[];
for i=1:length(M1region1day6)
    if M1region1day6(i,6)==1
       a=find(s1113==M1region1day6(i,5));
       unbiased_currentoutcome_signcorrect_1113(a,:)=unbiased_currentoutcome1113(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1113(all(unbiased_currentoutcome_signcorrect_1113==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1113=[];
for i=1:length(M1region1day6)
    if M1region1day6(i,6)==1
       a=find(s1113==M1region1day6(i,5));
       unbiased_currentoutcome_correct_1113(a,:)=unbiased_currentoutcome1113(a,:);
    end
end
unbiased_currentoutcome_correct_1113(all(unbiased_currentoutcome_correct_1113==0,2),:) = [];
%1115
load('L:\Monkey1\region1\20211115\proportions_of_cells_encoding_current_trials_outcome_20211115.mat');
iscell=readNPY('L:\Monkey1\region1\20211115\iscell.npy');
s1115=find(iscell(:,1)==1);

M1_region1_day7_4stages=union(union(union(M1region1stage1day7index,M1region1stage2day7index),M1region1stage3day7index),M1region1stage4day7index);
M1_region1_day7_0stage=setdiff(M1region1stage1day7diff_ratio_deltaF(:,1),M1_region1_day7_4stages);


for cell_num=1:length(M1_region1_day7_4stages)
    M1region1stage1day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))))-mean(M1region1stage1day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))));
    M1region1stage1day7_difference_struct=cell2mat(struct2cell(M1region1stage1day7_difference));
    
    M1region1stage2day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))))-mean(M1region1stage2day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))));
    M1region1stage2day7_difference_struct=cell2mat(struct2cell(M1region1stage2day7_difference));
    
    M1region1stage3day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))))-mean(M1region1stage3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))));
    M1region1stage3day7_difference_struct=cell2mat(struct2cell(M1region1stage3day7_difference));
    
    M1region1stage4day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))))-mean(M1region1stage4day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day7_4stages(cell_num))));
    M1region1stage4day7_difference_struct=cell2mat(struct2cell(M1region1stage4day7_difference));
end
M1region1day7=[M1region1stage1day7_difference_struct M1region1stage2day7_difference_struct M1region1stage3day7_difference_struct M1region1stage4day7_difference_struct M1_region1_day7_4stages];
for i=1:length(M1region1day7)
    
    if sum(M1region1day7(i,1:4)<0)>sum(M1region1day7(i,1:4)>0)
        M1region1day7(i,6)=-1;
    elseif sum(M1region1day7(i,1:4)<0)<sum(M1region1day7(i,1:4)>0)
        M1region1day7(i,6)=1;
    elseif sum(M1region1day7(i,1:4)<0)==sum(M1region1day7(i,1:4)>0)
        if abs(mean(M1region1day7(i,find(M1region1day7(i,1:4)<0))))>abs(mean(M1region1day7(i,find(M1region1day7(i,1:4)>0))))
            M1region1day7(i,6)=-1;
        elseif abs(mean(M1region1day7(i,find(M1region1day7(i,1:4)<0))))<abs(mean(M1region1day7(i,find(M1region1day7(i,1:4)>0))))
            M1region1day7(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1115=[];
for i=1:length(M1region1day7)
    if M1region1day7(i,6)==-1
       a=find(s1115==M1region1day7(i,5));
       unbiased_currentoutcome_signerror_1115(a,:)=-unbiased_currentoutcome1115(a,:);
    end
end
unbiased_currentoutcome_signerror_1115(all(unbiased_currentoutcome_signerror_1115==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1115=[];
for i=1:length(M1region1day7)
    if M1region1day7(i,6)==-1
       a=find(s1115==M1region1day7(i,5));
       unbiased_currentoutcome_error_1115(a,:)=unbiased_currentoutcome1115(a,:);
    end
end
unbiased_currentoutcome_error_1115(all(unbiased_currentoutcome_error_1115==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1115=[];
for i=1:length(M1region1day7)
    if M1region1day7(i,6)==1
       a=find(s1115==M1region1day7(i,5));
       unbiased_currentoutcome_signcorrect_1115(a,:)=unbiased_currentoutcome1115(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1115(all(unbiased_currentoutcome_signcorrect_1115==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1115=[];
for i=1:length(M1region1day7)
    if M1region1day7(i,6)==1
       a=find(s1115==M1region1day7(i,5));
       unbiased_currentoutcome_correct_1115(a,:)=unbiased_currentoutcome1115(a,:);
    end
end
unbiased_currentoutcome_correct_1115(all(unbiased_currentoutcome_correct_1115==0,2),:) = [];

%%1116
load('L:\Monkey1\region1\20211116\proportions_of_cells_encoding_current_trials_outcome_20211116.mat');
iscell=readNPY('L:\Monkey1\region1\20211116\iscell.npy');
s1116=find(iscell(:,1)==1);

M1_region1_day8_4stages=union(union(union(M1region1stage1day8index,M1region1stage2day8index),M1region1stage3day8index),M1region1stage4day8index);
M1_region1_day8_0stage=setdiff(M1region1stage1day8diff_ratio_deltaF(:,1),M1_region1_day8_4stages);


for cell_num=1:length(M1_region1_day8_4stages)
    M1region1stage1day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))))-mean(M1region1stage1day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))));
    M1region1stage1day8_difference_struct=cell2mat(struct2cell(M1region1stage1day8_difference));
    
    M1region1stage2day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))))-mean(M1region1stage2day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))));
    M1region1stage2day8_difference_struct=cell2mat(struct2cell(M1region1stage2day8_difference));
    
    M1region1stage3day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))))-mean(M1region1stage3day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))));
    M1region1stage3day8_difference_struct=cell2mat(struct2cell(M1region1stage3day8_difference));
    
    M1region1stage4day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))))-mean(M1region1stage4day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day8_4stages(cell_num))));
    M1region1stage4day8_difference_struct=cell2mat(struct2cell(M1region1stage4day8_difference));
end
M1region1day8=[M1region1stage1day8_difference_struct M1region1stage2day8_difference_struct M1region1stage3day8_difference_struct M1region1stage4day8_difference_struct M1_region1_day8_4stages];
for i=1:length(M1region1day8)
    
    if sum(M1region1day8(i,1:4)<0)>sum(M1region1day8(i,1:4)>0)
        M1region1day8(i,6)=-1;
    elseif sum(M1region1day8(i,1:4)<0)<sum(M1region1day8(i,1:4)>0)
        M1region1day8(i,6)=1;
    elseif sum(M1region1day8(i,1:4)<0)==sum(M1region1day8(i,1:4)>0)
        if abs(mean(M1region1day8(i,find(M1region1day8(i,1:4)<0))))>abs(mean(M1region1day8(i,find(M1region1day8(i,1:4)>0))))
            M1region1day8(i,6)=-1;
        elseif abs(mean(M1region1day8(i,find(M1region1day8(i,1:4)<0))))<abs(mean(M1region1day8(i,find(M1region1day8(i,1:4)>0))))
            M1region1day8(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1116=[];
for i=1:length(M1region1day8)
    if M1region1day8(i,6)==-1
       a=find(s1116==M1region1day8(i,5));
       unbiased_currentoutcome_signerror_1116(a,:)=-unbiased_currentoutcome1116(a,:);
    end
end
unbiased_currentoutcome_signerror_1116(all(unbiased_currentoutcome_signerror_1116==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1116=[];
for i=1:length(M1region1day8)
    if M1region1day8(i,6)==-1
       a=find(s1116==M1region1day8(i,5));
       unbiased_currentoutcome_error_1116(a,:)=unbiased_currentoutcome1116(a,:);
    end
end
unbiased_currentoutcome_error_1116(all(unbiased_currentoutcome_error_1116==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1116=[];
for i=1:length(M1region1day8)
    if M1region1day8(i,6)==1
       a=find(s1116==M1region1day8(i,5));
       unbiased_currentoutcome_signcorrect_1116(a,:)=unbiased_currentoutcome1116(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1116(all(unbiased_currentoutcome_signcorrect_1116==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1116=[];
for i=1:length(M1region1day8)
    if M1region1day8(i,6)==1
       a=find(s1116==M1region1day8(i,5));
       unbiased_currentoutcome_correct_1116(a,:)=unbiased_currentoutcome1116(a,:);
    end
end
unbiased_currentoutcome_correct_1116(all(unbiased_currentoutcome_correct_1116==0,2),:) = [];


%1117
load('L:\Monkey1\region1\20211117\proportions_of_cells_encoding_current_trials_outcome_20211117.mat');
iscell=readNPY('L:\Monkey1\region1\20211117\iscell.npy');
s1117=find(iscell(:,1)==1);



M1_region1_day9_4stages=union(union(union(M1region1stage1day9index,M1region1stage2day9index),M1region1stage3day9index),M1region1stage4day9index);
M1_region1_day9_0stage=setdiff(M1region1stage1day9diff_ratio_deltaF(:,1),M1_region1_day9_4stages);

for cell_num=1:length(M1_region1_day9_4stages)
    M1region1stage1day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))))-mean(M1region1stage1day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))));
    M1region1stage1day9_difference_struct=cell2mat(struct2cell(M1region1stage1day9_difference));
    
    M1region1stage2day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))))-mean(M1region1stage2day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))));
    M1region1stage2day9_difference_struct=cell2mat(struct2cell(M1region1stage2day9_difference));
    
    M1region1stage3day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))))-mean(M1region1stage3day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))));
    M1region1stage3day9_difference_struct=cell2mat(struct2cell(M1region1stage3day9_difference));
    
    M1region1stage4day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))))-mean(M1region1stage4day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day9_4stages(cell_num))));
    M1region1stage4day9_difference_struct=cell2mat(struct2cell(M1region1stage4day9_difference));
end
M1region1day9=[M1region1stage1day9_difference_struct M1region1stage2day9_difference_struct M1region1stage3day9_difference_struct M1region1stage4day9_difference_struct M1_region1_day9_4stages];
for i=1:length(M1region1day9)
    
    if sum(M1region1day9(i,1:4)<0)>sum(M1region1day9(i,1:4)>0)
        M1region1day9(i,6)=-1;
    elseif sum(M1region1day9(i,1:4)<0)<sum(M1region1day9(i,1:4)>0)
        M1region1day9(i,6)=1;
    elseif sum(M1region1day9(i,1:4)<0)==sum(M1region1day9(i,1:4)>0)
        if abs(mean(M1region1day9(i,find(M1region1day9(i,1:4)<0))))>abs(mean(M1region1day9(i,find(M1region1day9(i,1:4)>0))))
            M1region1day9(i,6)=-1;
        elseif abs(mean(M1region1day9(i,find(M1region1day9(i,1:4)<0))))<abs(mean(M1region1day9(i,find(M1region1day9(i,1:4)>0))))
            M1region1day9(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1117=[];
for i=1:length(M1region1day9)
    if M1region1day9(i,6)==-1
       a=find(s1117==M1region1day9(i,5));
       unbiased_currentoutcome_signerror_1117(a,:)=-unbiased_currentoutcome1117(a,:);
    end
end
unbiased_currentoutcome_signerror_1117(all(unbiased_currentoutcome_signerror_1117==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1117=[];
for i=1:length(M1region1day9)
    if M1region1day9(i,6)==-1
       a=find(s1117==M1region1day9(i,5));
       unbiased_currentoutcome_error_1117(a,:)=unbiased_currentoutcome1117(a,:);
    end
end
unbiased_currentoutcome_error_1117(all(unbiased_currentoutcome_error_1117==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1117=[];
for i=1:length(M1region1day9)
    if M1region1day9(i,6)==1
       a=find(s1117==M1region1day9(i,5));
       unbiased_currentoutcome_signcorrect_1117(a,:)=unbiased_currentoutcome1117(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1117(all(unbiased_currentoutcome_signcorrect_1117==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1117=[];
for i=1:length(M1region1day9)
    if M1region1day9(i,6)==1
       a=find(s1117==M1region1day9(i,5));
       unbiased_currentoutcome_correct_1117(a,:)=unbiased_currentoutcome1117(a,:);
    end
end
unbiased_currentoutcome_correct_1117(all(unbiased_currentoutcome_correct_1117==0,2),:) = [];

%%1118

load('L:\Monkey1\region1\20211118\proportions_of_cells_encoding_current_trials_outcome_20211118.mat');
iscell=readNPY('L:\Monkey1\region1\20211118\iscell.npy');
s1118=find(iscell(:,1)==1);



M1_region1_day10_4stages=union(union(union(M1region1stage1day10index,M1region1stage2day10index),M1region1stage3day10index),M1region1stage4day10index);
M1_region1_day10_0stage=setdiff(M1region1stage1day10diff_ratio_deltaF(:,1),M1_region1_day10_4stages);




for cell_num=1:length(M1_region1_day10_4stages)
    M1region1stage1day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))))-mean(M1region1stage1day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))));
    M1region1stage1day10_difference_struct=cell2mat(struct2cell(M1region1stage1day10_difference));
    
    M1region1stage2day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))))-mean(M1region1stage2day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))));
    M1region1stage2day10_difference_struct=cell2mat(struct2cell(M1region1stage2day10_difference));
    
    M1region1stage3day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))))-mean(M1region1stage3day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))));
    M1region1stage3day10_difference_struct=cell2mat(struct2cell(M1region1stage3day10_difference));
    
    M1region1stage4day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))))-mean(M1region1stage4day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day10_4stages(cell_num))));
    M1region1stage4day10_difference_struct=cell2mat(struct2cell(M1region1stage4day10_difference));
end
M1region1day10=[M1region1stage1day10_difference_struct M1region1stage2day10_difference_struct M1region1stage3day10_difference_struct M1region1stage4day10_difference_struct M1_region1_day10_4stages];
for i=1:length(M1region1day10)
    
    if sum(M1region1day10(i,1:4)<0)>sum(M1region1day10(i,1:4)>0)
        M1region1day10(i,6)=-1;
    elseif sum(M1region1day10(i,1:4)<0)<sum(M1region1day10(i,1:4)>0)
        M1region1day10(i,6)=1;
    elseif sum(M1region1day10(i,1:4)<0)==sum(M1region1day10(i,1:4)>0)
        if abs(mean(M1region1day10(i,find(M1region1day10(i,1:4)<0))))>abs(mean(M1region1day10(i,find(M1region1day10(i,1:4)>0))))
            M1region1day10(i,6)=-1;
        elseif abs(mean(M1region1day10(i,find(M1region1day10(i,1:4)<0))))<abs(mean(M1region1day10(i,find(M1region1day10(i,1:4)>0))))
            M1region1day10(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1118=[];
for i=1:length(M1region1day10)
    if M1region1day10(i,6)==-1
       a=find(s1118==M1region1day10(i,5));
       unbiased_currentoutcome_signerror_1118(a,:)=-unbiased_currentoutcome1118(a,:);
    end
end
unbiased_currentoutcome_signerror_1118(all(unbiased_currentoutcome_signerror_1118==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1118=[];
for i=1:length(M1region1day10)
    if M1region1day10(i,6)==-1
       a=find(s1118==M1region1day10(i,5));
       unbiased_currentoutcome_error_1118(a,:)=unbiased_currentoutcome1118(a,:);
    end
end
unbiased_currentoutcome_error_1118(all(unbiased_currentoutcome_error_1118==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1118=[];
for i=1:length(M1region1day10)
    if M1region1day10(i,6)==1
       a=find(s1118==M1region1day10(i,5));
       unbiased_currentoutcome_signcorrect_1118(a,:)=unbiased_currentoutcome1118(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1118(all(unbiased_currentoutcome_signcorrect_1118==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1118=[];
for i=1:length(M1region1day10)
    if M1region1day10(i,6)==1
       a=find(s1118==M1region1day10(i,5));
       unbiased_currentoutcome_correct_1118(a,:)=unbiased_currentoutcome1118(a,:);
    end
end
unbiased_currentoutcome_correct_1118(all(unbiased_currentoutcome_correct_1118==0,2),:) = [];



%%1119
load('L:\Monkey1\region1\20211119\proportions_of_cells_encoding_current_trials_outcome_20211119.mat');
iscell=readNPY('L:\Monkey1\region1\20211119\iscell.npy');
s1119=find(iscell(:,1)==1);



M1_region1_day11_4stages=union(union(union(M1region1stage1day11index,M1region1stage2day11index),M1region1stage3day11index),M1region1stage4day11index);
M1_region1_day11_0stage=setdiff(M1region1stage1day11diff_ratio_deltaF(:,1),M1_region1_day11_4stages);



for cell_num=1:length(M1_region1_day11_4stages)
    M1region1stage1day11_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day11_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))))-mean(M1region1stage1day11_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))));
    M1region1stage1day11_difference_struct=cell2mat(struct2cell(M1region1stage1day11_difference));
    
    M1region1stage2day11_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day11_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))))-mean(M1region1stage2day11_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))));
    M1region1stage2day11_difference_struct=cell2mat(struct2cell(M1region1stage2day11_difference));
    
    M1region1stage3day11_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day11_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))))-mean(M1region1stage3day11_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))));
    M1region1stage3day11_difference_struct=cell2mat(struct2cell(M1region1stage3day11_difference));
    
    M1region1stage4day11_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day11_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))))-mean(M1region1stage4day11_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day11_4stages(cell_num))));
    M1region1stage4day11_difference_struct=cell2mat(struct2cell(M1region1stage4day11_difference));
end
M1region1day11=[M1region1stage1day11_difference_struct M1region1stage2day11_difference_struct M1region1stage3day11_difference_struct M1region1stage4day11_difference_struct M1_region1_day11_4stages];
for i=1:length(M1region1day11)
    
    if sum(M1region1day11(i,1:4)<0)>sum(M1region1day11(i,1:4)>0)
        M1region1day11(i,6)=-1;
    elseif sum(M1region1day11(i,1:4)<0)<sum(M1region1day11(i,1:4)>0)
        M1region1day11(i,6)=1;
    elseif sum(M1region1day11(i,1:4)<0)==sum(M1region1day11(i,1:4)>0)
        if abs(mean(M1region1day11(i,find(M1region1day11(i,1:4)<0))))>abs(mean(M1region1day11(i,find(M1region1day11(i,1:4)>0))))
            M1region1day11(i,6)=-1;
        elseif abs(mean(M1region1day11(i,find(M1region1day11(i,1:4)<0))))<abs(mean(M1region1day11(i,find(M1region1day11(i,1:4)>0))))
            M1region1day11(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1119=[];
for i=1:length(M1region1day11)
    if M1region1day11(i,6)==-1
       a=find(s1119==M1region1day11(i,5));
       unbiased_currentoutcome_signerror_1119(a,:)=-unbiased_currentoutcome1119(a,:);
    end
end
unbiased_currentoutcome_signerror_1119(all(unbiased_currentoutcome_signerror_1119==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1119=[];
for i=1:length(M1region1day11)
    if M1region1day11(i,6)==-1
       a=find(s1119==M1region1day11(i,5));
       unbiased_currentoutcome_error_1119(a,:)=unbiased_currentoutcome1119(a,:);
    end
end
unbiased_currentoutcome_error_1119(all(unbiased_currentoutcome_error_1119==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1119=[];
for i=1:length(M1region1day11)
    if M1region1day11(i,6)==1
       a=find(s1119==M1region1day11(i,5));
       unbiased_currentoutcome_signcorrect_1119(a,:)=unbiased_currentoutcome1119(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1119(all(unbiased_currentoutcome_signcorrect_1119==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1119=[];
for i=1:length(M1region1day11)
    if M1region1day11(i,6)==1
       a=find(s1119==M1region1day11(i,5));
       unbiased_currentoutcome_correct_1119(a,:)=unbiased_currentoutcome1119(a,:);
    end
end
unbiased_currentoutcome_correct_1119(all(unbiased_currentoutcome_correct_1119==0,2),:) = [];

%1122
load('L:\Monkey1\region1\20211122\proportions_of_cells_encoding_current_trials_outcome_20211122.mat');
iscell=readNPY('L:\Monkey1\region1\20211122\iscell.npy');
s1122=find(iscell(:,1)==1);

M1_region1_day12_4stages=union(union(union(M1region1stage1day12index,M1region1stage2day12index),M1region1stage3day12index),M1region1stage4day12index);
M1_region1_day12_0stage=setdiff(M1region1stage1day12diff_ratio_deltaF(:,1),M1_region1_day12_4stages);


for cell_num=1:length(M1_region1_day12_4stages)
    M1region1stage1day12_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day12_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))))-mean(M1region1stage1day12_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))));
    M1region1stage1day12_difference_struct=cell2mat(struct2cell(M1region1stage1day12_difference));
    
    M1region1stage2day12_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day12_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))))-mean(M1region1stage2day12_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))));
    M1region1stage2day12_difference_struct=cell2mat(struct2cell(M1region1stage2day12_difference));
    
    M1region1stage3day12_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day12_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))))-mean(M1region1stage3day12_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))));
    M1region1stage3day12_difference_struct=cell2mat(struct2cell(M1region1stage3day12_difference));
    
    M1region1stage4day12_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day12_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))))-mean(M1region1stage4day12_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day12_4stages(cell_num))));
    M1region1stage4day12_difference_struct=cell2mat(struct2cell(M1region1stage4day12_difference));
end
M1region1day12=[M1region1stage1day12_difference_struct M1region1stage2day12_difference_struct M1region1stage3day12_difference_struct M1region1stage4day12_difference_struct M1_region1_day12_4stages];
for i=1:length(M1region1day12)
    
    if sum(M1region1day12(i,1:4)<0)>sum(M1region1day12(i,1:4)>0)
        M1region1day12(i,6)=-1;
    elseif sum(M1region1day12(i,1:4)<0)<sum(M1region1day12(i,1:4)>0)
        M1region1day12(i,6)=1;
    elseif sum(M1region1day12(i,1:4)<0)==sum(M1region1day12(i,1:4)>0)
        if abs(mean(M1region1day12(i,find(M1region1day12(i,1:4)<0))))>abs(mean(M1region1day12(i,find(M1region1day12(i,1:4)>0))))
            M1region1day12(i,6)=-1;
        elseif abs(mean(M1region1day12(i,find(M1region1day12(i,1:4)<0))))<abs(mean(M1region1day12(i,find(M1region1day12(i,1:4)>0))))
            M1region1day12(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1122=[];
for i=1:length(M1region1day12)
    if M1region1day12(i,6)==-1
       a=find(s1122==M1region1day12(i,5));
       unbiased_currentoutcome_signerror_1122(a,:)=-unbiased_currentoutcome1122(a,:);
    end
end
unbiased_currentoutcome_signerror_1122(all(unbiased_currentoutcome_signerror_1122==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1122=[];
for i=1:length(M1region1day12)
    if M1region1day12(i,6)==-1
       a=find(s1122==M1region1day12(i,5));
       unbiased_currentoutcome_error_1122(a,:)=unbiased_currentoutcome1122(a,:);
    end
end
unbiased_currentoutcome_error_1122(all(unbiased_currentoutcome_error_1122==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1122=[];
for i=1:length(M1region1day12)
    if M1region1day12(i,6)==1
       a=find(s1122==M1region1day12(i,5));
       unbiased_currentoutcome_signcorrect_1122(a,:)=unbiased_currentoutcome1122(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1122(all(unbiased_currentoutcome_signcorrect_1122==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1122=[];
for i=1:length(M1region1day12)
    if M1region1day12(i,6)==1
       a=find(s1122==M1region1day12(i,5));
       unbiased_currentoutcome_correct_1122(a,:)=unbiased_currentoutcome1122(a,:);
    end
end
unbiased_currentoutcome_correct_1122(all(unbiased_currentoutcome_correct_1122==0,2),:) = [];



%%Monkey1 region2 1120


load('L:\Monkey1\region2\20211120\proportions_of_cells_encoding_current_trials_outcome_20211120.mat');
iscell=readNPY('L:\Monkey1\region2\20211120\iscell.npy');
s1120=find(iscell(:,1)==1);

M1_region2_day1_4stages=union(union(union(M1region2stage1day1index,M1region2stage2day1index),M1region2stage3day1index),M1region2stage4day1index);
M1_region2_day1_0stage=setdiff(M1region2stage1day1diff_ratio_deltaF(:,1),M1_region2_day1_4stages);

for cell_num=1:length(M1_region2_day1_4stages)
    M1region2stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))))-mean(M1region2stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))));
    M1region2stage1day1_difference_struct=cell2mat(struct2cell(M1region2stage1day1_difference));
    
    M1region2stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))))-mean(M1region2stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))));
    M1region2stage2day1_difference_struct=cell2mat(struct2cell(M1region2stage2day1_difference));
    
    M1region2stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))))-mean(M1region2stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))));
    M1region2stage3day1_difference_struct=cell2mat(struct2cell(M1region2stage3day1_difference));
    
    M1region2stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))))-mean(M1region2stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day1_4stages(cell_num))));
    M1region2stage4day1_difference_struct=cell2mat(struct2cell(M1region2stage4day1_difference)); 
end
M1region2day1=[M1region2stage1day1_difference_struct M1region2stage2day1_difference_struct M1region2stage3day1_difference_struct M1region2stage4day1_difference_struct M1_region2_day1_4stages];
for i=1:length(M1region2day1)
    
    if sum(M1region2day1(i,1:4)<0)>sum(M1region2day1(i,1:4)>0)
        M1region2day1(i,6)=-1;
    elseif sum(M1region2day1(i,1:4)<0)<sum(M1region2day1(i,1:4)>0)
        M1region2day1(i,6)=1;
    elseif sum(M1region2day1(i,1:4)<0)==sum(M1region2day1(i,1:4)>0)
        if abs(mean(M1region2day1(i,find(M1region2day1(i,1:4)<0))))>abs(mean(M1region2day1(i,find(M1region2day1(i,1:4)>0))))
            M1region2day1(i,6)=-1;
        elseif abs(mean(M1region2day1(i,find(M1region2day1(i,1:4)<0))))<abs(mean(M1region2day1(i,find(M1region2day1(i,1:4)>0))))
            M1region2day1(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1120=[];
for i=1:length(M1region2day1)
    if M1region2day1(i,6)==-1
       a=find(s1120==M1region2day1(i,5));
       unbiased_currentoutcome_signerror_1120(a,:)=-unbiased_currentoutcome1120(a,:);
    end
end
unbiased_currentoutcome_signerror_1120(all(unbiased_currentoutcome_signerror_1120==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1120=[];
for i=1:length(M1region2day1)
    if M1region2day1(i,6)==-1
       a=find(s1120==M1region2day1(i,5));
       unbiased_currentoutcome_error_1120(a,:)=unbiased_currentoutcome1120(a,:);
    end
end
unbiased_currentoutcome_error_1120(all(unbiased_currentoutcome_error_1120==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1120=[];
for i=1:length(M1region2day1)
    if M1region2day1(i,6)==1
       a=find(s1120==M1region2day1(i,5));
       unbiased_currentoutcome_signcorrect_1120(a,:)=unbiased_currentoutcome1120(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1120(all(unbiased_currentoutcome_signcorrect_1120==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1120=[];
for i=1:length(M1region2day1)
    if M1region2day1(i,6)==1
       a=find(s1120==M1region2day1(i,5));
       unbiased_currentoutcome_correct_1120(a,:)=unbiased_currentoutcome1120(a,:);
    end
end
unbiased_currentoutcome_correct_1120(all(unbiased_currentoutcome_correct_1120==0,2),:) = [];


%%1121
load('L:\Monkey1\region2\20211121\proportions_of_cells_encoding_current_trials_outcome_20211121.mat');
iscell=readNPY('L:\Monkey1\region2\20211121\iscell.npy');
s1121=find(iscell(:,1)==1);

M1_region2_day2_4stages=union(union(union(M1region2stage1day2index,M1region2stage2day2index),M1region2stage3day2index),M1region2stage4day2index);
M1_region2_day2_0stage=setdiff(M1region2stage1day2diff_ratio_deltaF(:,1),M1_region2_day2_4stages);

for cell_num=1:length(M1_region2_day2_4stages)
    M1region2stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))))-mean(M1region2stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))));
    M1region2stage1day2_difference_struct=cell2mat(struct2cell(M1region2stage1day2_difference));
    
    M1region2stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))))-mean(M1region2stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))));
    M1region2stage2day2_difference_struct=cell2mat(struct2cell(M1region2stage2day2_difference));
    
    M1region2stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))))-mean(M1region2stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))));
    M1region2stage3day2_difference_struct=cell2mat(struct2cell(M1region2stage3day2_difference));
    
    M1region2stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))))-mean(M1region2stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day2_4stages(cell_num))));
    M1region2stage4day2_difference_struct=cell2mat(struct2cell(M1region2stage4day2_difference));
end
M1region2day2=[M1region2stage1day2_difference_struct M1region2stage2day2_difference_struct M1region2stage3day2_difference_struct M1region2stage4day2_difference_struct M1_region2_day2_4stages];
for i=1:length(M1region2day2)
    
    if sum(M1region2day2(i,1:4)<0)>sum(M1region2day2(i,1:4)>0)
        M1region2day2(i,6)=-1;
    elseif sum(M1region2day2(i,1:4)<0)<sum(M1region2day2(i,1:4)>0)
        M1region2day2(i,6)=1;
    elseif sum(M1region2day2(i,1:4)<0)==sum(M1region2day2(i,1:4)>0)
        if abs(mean(M1region2day2(i,find(M1region2day2(i,1:4)<0))))>abs(mean(M1region2day2(i,find(M1region2day2(i,1:4)>0))))
            M1region2day2(i,6)=-1;
        elseif abs(mean(M1region2day2(i,find(M1region2day2(i,1:4)<0))))<abs(mean(M1region2day2(i,find(M1region2day2(i,1:4)>0))))
            M1region2day2(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1121=[];
for i=1:length(M1region2day2)
    if M1region2day2(i,6)==-1
       a=find(s1121==M1region2day2(i,5));
       unbiased_currentoutcome_signerror_1121(a,:)=-unbiased_currentoutcome1121(a,:);
    end
end
unbiased_currentoutcome_signerror_1121(all(unbiased_currentoutcome_signerror_1121==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1121=[];
for i=1:length(M1region2day2)
    if M1region2day2(i,6)==-1
       a=find(s1121==M1region2day2(i,5));
       unbiased_currentoutcome_error_1121(a,:)=unbiased_currentoutcome1121(a,:);
    end
end
unbiased_currentoutcome_error_1121(all(unbiased_currentoutcome_error_1121==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1121=[];
for i=1:length(M1region2day2)
    if M1region2day2(i,6)==1
       a=find(s1121==M1region2day2(i,5));
       unbiased_currentoutcome_signcorrect_1121(a,:)=unbiased_currentoutcome1121(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1121(all(unbiased_currentoutcome_signcorrect_1121==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1121=[];
for i=1:length(M1region2day2)
    if M1region2day2(i,6)==1
       a=find(s1121==M1region2day2(i,5));
       unbiased_currentoutcome_correct_1121(a,:)=unbiased_currentoutcome1121(a,:);
    end
end
unbiased_currentoutcome_correct_1121(all(unbiased_currentoutcome_correct_1121==0,2),:) = [];


%%1123
load('L:\Monkey1\region2\20211123\proportions_of_cells_encoding_current_trials_outcome_20211123.mat');
iscell=readNPY('L:\Monkey1\region2\20211123\iscell.npy');
s1123=find(iscell(:,1)==1);

M1_region2_day3_4stages=union(union(union(M1region2stage1day3index,M1region2stage2day3index),M1region2stage3day3index),M1region2stage4day3index);
M1_region2_day3_0stage=setdiff(M1region2stage1day3diff_ratio_deltaF(:,1),M1_region2_day3_4stages);


for cell_num=1:length(M1_region2_day3_4stages)
    M1region2stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))))-mean(M1region2stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))));
    M1region2stage1day3_difference_struct=cell2mat(struct2cell(M1region2stage1day3_difference));
    
    M1region2stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))))-mean(M1region2stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))));
    M1region2stage2day3_difference_struct=cell2mat(struct2cell(M1region2stage2day3_difference));
    
    M1region2stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))))-mean(M1region2stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))));
    M1region2stage3day3_difference_struct=cell2mat(struct2cell(M1region2stage3day3_difference));
    
    M1region2stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))))-mean(M1region2stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day3_4stages(cell_num))));
    M1region2stage4day3_difference_struct=cell2mat(struct2cell(M1region2stage4day3_difference));
end
M1region2day3=[M1region2stage1day3_difference_struct M1region2stage2day3_difference_struct M1region2stage3day3_difference_struct M1region2stage4day3_difference_struct M1_region2_day3_4stages];
for i=1:length(M1region2day3)
    
    if sum(M1region2day3(i,1:4)<0)>sum(M1region2day3(i,1:4)>0)
        M1region2day3(i,6)=-1;
    elseif sum(M1region2day3(i,1:4)<0)<sum(M1region2day3(i,1:4)>0)
        M1region2day3(i,6)=1;
    elseif sum(M1region2day3(i,1:4)<0)==sum(M1region2day3(i,1:4)>0)
        if abs(mean(M1region2day3(i,find(M1region2day3(i,1:4)<0))))>abs(mean(M1region2day3(i,find(M1region2day3(i,1:4)>0))))
            M1region2day3(i,6)=-1;
        elseif abs(mean(M1region2day3(i,find(M1region2day3(i,1:4)<0))))<abs(mean(M1region2day3(i,find(M1region2day3(i,1:4)>0))))
            M1region2day3(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1123=[];
for i=1:length(M1region2day3)
    if M1region2day3(i,6)==-1
       a=find(s1123==M1region2day3(i,5));
       unbiased_currentoutcome_signerror_1123(a,:)=-unbiased_currentoutcome1123(a,:);
    end
end
unbiased_currentoutcome_signerror_1123(all(unbiased_currentoutcome_signerror_1123==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1123=[];
for i=1:length(M1region2day3)
    if M1region2day3(i,6)==-1
       a=find(s1123==M1region2day3(i,5));
       unbiased_currentoutcome_error_1123(a,:)=unbiased_currentoutcome1123(a,:);
    end
end
unbiased_currentoutcome_error_1123(all(unbiased_currentoutcome_error_1123==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1123=[];
for i=1:length(M1region2day3)
    if M1region2day3(i,6)==1
       a=find(s1123==M1region2day3(i,5));
       unbiased_currentoutcome_signcorrect_1123(a,:)=unbiased_currentoutcome1123(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1123(all(unbiased_currentoutcome_signcorrect_1123==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1123=[];
for i=1:length(M1region2day3)
    if M1region2day3(i,6)==1
       a=find(s1123==M1region2day3(i,5));
       unbiased_currentoutcome_correct_1123(a,:)=unbiased_currentoutcome1123(a,:);
    end
end
unbiased_currentoutcome_correct_1123(all(unbiased_currentoutcome_correct_1123==0,2),:) = [];


%%1124
load('L:\Monkey1\region2\20211124\proportions_of_cells_encoding_current_trials_outcome_20211124.mat');
iscell=readNPY('L:\Monkey1\region2\20211124\iscell.npy');
s1124=find(iscell(:,1)==1);

M1_region2_day4_4stages=union(union(union(M1region2stage1day4index,M1region2stage2day4index),M1region2stage3day4index),M1region2stage4day4index);
M1_region2_day4_0stage=setdiff(M1region2stage1day4diff_ratio_deltaF(:,1),M1_region2_day4_4stages);


for cell_num=1:length(M1_region2_day4_4stages)
    M1region2stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))))-mean(M1region2stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))));
    M1region2stage1day4_difference_struct=cell2mat(struct2cell(M1region2stage1day4_difference));
    
    M1region2stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))))-mean(M1region2stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))));
    M1region2stage2day4_difference_struct=cell2mat(struct2cell(M1region2stage2day4_difference));
    
    M1region2stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))))-mean(M1region2stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))));
    M1region2stage3day4_difference_struct=cell2mat(struct2cell(M1region2stage3day4_difference));
    
    M1region2stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region2stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))))-mean(M1region2stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region2_day4_4stages(cell_num))));
    M1region2stage4day4_difference_struct=cell2mat(struct2cell(M1region2stage4day4_difference));
end
M1region2day4=[M1region2stage1day4_difference_struct M1region2stage2day4_difference_struct M1region2stage3day4_difference_struct M1region2stage4day4_difference_struct M1_region2_day4_4stages];
for i=1:length(M1region2day4)
    
    if sum(M1region2day4(i,1:4)<0)>sum(M1region2day4(i,1:4)>0)
        M1region2day4(i,6)=-1;
    elseif sum(M1region2day4(i,1:4)<0)<sum(M1region2day4(i,1:4)>0)
        M1region2day4(i,6)=1;
    elseif sum(M1region2day4(i,1:4)<0)==sum(M1region2day4(i,1:4)>0)
        if abs(mean(M1region2day4(i,find(M1region2day4(i,1:4)<0))))>abs(mean(M1region2day4(i,find(M1region2day4(i,1:4)>0))))
            M1region2day4(i,6)=-1;
        elseif abs(mean(M1region2day4(i,find(M1region2day4(i,1:4)<0))))<abs(mean(M1region2day4(i,find(M1region2day4(i,1:4)>0))))
            M1region2day4(i,6)=1;
        end
    end
end






%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1124=[];
for i=1:length(M1region2day4)
    if M1region2day4(i,6)==-1
       a=find(s1124==M1region2day4(i,5));
       unbiased_currentoutcome_signerror_1124(a,:)=-unbiased_currentoutcome1124(a,:);
    end
end
unbiased_currentoutcome_signerror_1124(all(unbiased_currentoutcome_signerror_1124==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1124=[];
for i=1:length(M1region2day4)
    if M1region2day4(i,6)==-1
       a=find(s1124==M1region2day4(i,5));
       unbiased_currentoutcome_error_1124(a,:)=unbiased_currentoutcome1124(a,:);
    end
end
unbiased_currentoutcome_error_1124(all(unbiased_currentoutcome_error_1124==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1124=[];
for i=1:length(M1region2day4)
    if M1region2day4(i,6)==1
       a=find(s1124==M1region2day4(i,5));
       unbiased_currentoutcome_signcorrect_1124(a,:)=unbiased_currentoutcome1124(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1124(all(unbiased_currentoutcome_signcorrect_1124==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1124=[];
for i=1:length(M1region2day4)
    if M1region2day4(i,6)==1
       a=find(s1124==M1region2day4(i,5));
       unbiased_currentoutcome_correct_1124(a,:)=unbiased_currentoutcome1124(a,:);
    end
end
unbiased_currentoutcome_correct_1124(all(unbiased_currentoutcome_correct_1124==0,2),:) = [];

%%Monkey1 region3 


load('L:\Monkey1\region3\20211125\proportions_of_cells_encoding_current_trials_outcome_20211125.mat');
iscell=readNPY('L:\Monkey1\region3\20211125\iscell.npy');
s1125=find(iscell(:,1)==1);


M1_region3_day1_4stages=union(union(union(M1region3stage1day1index,M1region3stage2day1index),M1region3stage3day1index),M1region3stage4day1index);
M1_region3_day1_0stage=setdiff(M1region3stage1day1diff_ratio_deltaF(:,1),M1_region3_day1_4stages);

for cell_num=1:length(M1_region3_day1_4stages)
    M1region3stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))))-mean(M1region3stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))));
    M1region3stage1day1_difference_struct=cell2mat(struct2cell(M1region3stage1day1_difference));
    
    M1region3stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))))-mean(M1region3stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))));
    M1region3stage2day1_difference_struct=cell2mat(struct2cell(M1region3stage2day1_difference));
    
    M1region3stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))))-mean(M1region3stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))));
    M1region3stage3day1_difference_struct=cell2mat(struct2cell(M1region3stage3day1_difference));
    
    M1region3stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))))-mean(M1region3stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day1_4stages(cell_num))));
    M1region3stage4day1_difference_struct=cell2mat(struct2cell(M1region3stage4day1_difference)); 
end
M1region3day1=[M1region3stage1day1_difference_struct M1region3stage2day1_difference_struct M1region3stage3day1_difference_struct M1region3stage4day1_difference_struct M1_region3_day1_4stages];
for i=1:length(M1region3day1)
    
    if sum(M1region3day1(i,1:4)<0)>sum(M1region3day1(i,1:4)>0)
        M1region3day1(i,6)=-1;
    elseif sum(M1region3day1(i,1:4)<0)<sum(M1region3day1(i,1:4)>0)
        M1region3day1(i,6)=1;
    elseif sum(M1region3day1(i,1:4)<0)==sum(M1region3day1(i,1:4)>0)
        if abs(mean(M1region3day1(i,find(M1region3day1(i,1:4)<0))))>abs(mean(M1region3day1(i,find(M1region3day1(i,1:4)>0))))
            M1region3day1(i,6)=-1;
        elseif abs(mean(M1region3day1(i,find(M1region3day1(i,1:4)<0))))<abs(mean(M1region3day1(i,find(M1region3day1(i,1:4)>0))))
            M1region3day1(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1125=[];
for i=1:length(M1region3day1)
    if M1region3day1(i,6)==-1
       a=find(s1125==M1region3day1(i,5));
       unbiased_currentoutcome_signerror_1125(a,:)=-unbiased_currentoutcome1125(a,:);
    end
end
unbiased_currentoutcome_signerror_1125(all(unbiased_currentoutcome_signerror_1125==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1125=[];
for i=1:length(M1region3day1)
    if M1region3day1(i,6)==-1
       a=find(s1125==M1region3day1(i,5));
       unbiased_currentoutcome_error_1125(a,:)=unbiased_currentoutcome1125(a,:);
    end
end
unbiased_currentoutcome_error_1125(all(unbiased_currentoutcome_error_1125==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1125=[];
for i=1:length(M1region3day1)
    if M1region3day1(i,6)==1
       a=find(s1125==M1region3day1(i,5));
       unbiased_currentoutcome_signcorrect_1125(a,:)=unbiased_currentoutcome1125(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1125(all(unbiased_currentoutcome_signcorrect_1125==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1125=[];
for i=1:length(M1region3day1)
    if M1region3day1(i,6)==1
       a=find(s1125==M1region3day1(i,5));
       unbiased_currentoutcome_correct_1125(a,:)=unbiased_currentoutcome1125(a,:);
    end
end
unbiased_currentoutcome_correct_1125(all(unbiased_currentoutcome_correct_1125==0,2),:) = [];


%%1126


load('L:\Monkey1\region3\20211126\proportions_of_cells_encoding_current_trials_outcome_20211126.mat');
iscell=readNPY('L:\Monkey1\region3\20211126\iscell.npy');
s1126=find(iscell(:,1)==1);
M1_region3_day2_4stages=union(union(union(M1region3stage1day2index,M1region3stage2day2index),M1region3stage3day2index),M1region3stage4day2index);
M1_region3_day2_0stage=setdiff(M1region3stage1day2diff_ratio_deltaF(:,1),M1_region3_day2_4stages);

for cell_num=1:length(M1_region3_day2_4stages)
    M1region3stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))))-mean(M1region3stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))));
    M1region3stage1day2_difference_struct=cell2mat(struct2cell(M1region3stage1day2_difference));
    
    M1region3stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))))-mean(M1region3stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))));
    M1region3stage2day2_difference_struct=cell2mat(struct2cell(M1region3stage2day2_difference));
    
    M1region3stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))))-mean(M1region3stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))));
    M1region3stage3day2_difference_struct=cell2mat(struct2cell(M1region3stage3day2_difference));
    
    M1region3stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))))-mean(M1region3stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day2_4stages(cell_num))));
    M1region3stage4day2_difference_struct=cell2mat(struct2cell(M1region3stage4day2_difference));
end
M1region3day2=[M1region3stage1day2_difference_struct M1region3stage2day2_difference_struct M1region3stage3day2_difference_struct M1region3stage4day2_difference_struct M1_region3_day2_4stages];
for i=1:length(M1region3day2)
    
    if sum(M1region3day2(i,1:4)<0)>sum(M1region3day2(i,1:4)>0)
        M1region3day2(i,6)=-1;
    elseif sum(M1region3day2(i,1:4)<0)<sum(M1region3day2(i,1:4)>0)
        M1region3day2(i,6)=1;
    elseif sum(M1region3day2(i,1:4)<0)==sum(M1region3day2(i,1:4)>0)
        if abs(mean(M1region3day2(i,find(M1region3day2(i,1:4)<0))))>abs(mean(M1region3day2(i,find(M1region3day2(i,1:4)>0))))
            M1region3day2(i,6)=-1;
        elseif abs(mean(M1region3day2(i,find(M1region3day2(i,1:4)<0))))<abs(mean(M1region3day2(i,find(M1region3day2(i,1:4)>0))))
            M1region3day2(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1126=[];
for i=1:length(M1region3day2)
    if M1region3day2(i,6)==-1
       a=find(s1126==M1region3day2(i,5));
       unbiased_currentoutcome_signerror_1126(a,:)=-unbiased_currentoutcome1126(a,:);
    end
end
unbiased_currentoutcome_signerror_1126(all(unbiased_currentoutcome_signerror_1126==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1126=[];
for i=1:length(M1region3day2)
    if M1region3day2(i,6)==-1
       a=find(s1126==M1region3day2(i,5));
       unbiased_currentoutcome_error_1126(a,:)=unbiased_currentoutcome1126(a,:);
    end
end
unbiased_currentoutcome_error_1126(all(unbiased_currentoutcome_error_1126==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1126=[];
for i=1:length(M1region3day2)
    if M1region3day2(i,6)==1
       a=find(s1126==M1region3day2(i,5));
       unbiased_currentoutcome_signcorrect_1126(a,:)=unbiased_currentoutcome1126(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1126(all(unbiased_currentoutcome_signcorrect_1126==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1126=[];
for i=1:length(M1region3day2)
    if M1region3day2(i,6)==1
       a=find(s1126==M1region3day2(i,5));
       unbiased_currentoutcome_correct_1126(a,:)=unbiased_currentoutcome1126(a,:);
    end
end
unbiased_currentoutcome_correct_1126(all(unbiased_currentoutcome_correct_1126==0,2),:) = [];

%%1127

load('L:\Monkey1\region3\20211127\proportions_of_cells_encoding_current_trials_outcome_20211127.mat');
iscell=readNPY('L:\Monkey1\region3\20211127\iscell.npy');
s1127=find(iscell(:,1)==1);



M1_region3_day3_4stages=union(union(union(M1region3stage1day3index,M1region3stage2day3index),M1region3stage3day3index),M1region3stage4day3index);
M1_region3_day3_0stage=setdiff(M1region3stage1day3diff_ratio_deltaF(:,1),M1_region3_day3_4stages);

for cell_num=1:length(M1_region3_day3_4stages)
    M1region3stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))))-mean(M1region3stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))));
    M1region3stage1day3_difference_struct=cell2mat(struct2cell(M1region3stage1day3_difference));
    
    M1region3stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))))-mean(M1region3stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))));
    M1region3stage2day3_difference_struct=cell2mat(struct2cell(M1region3stage2day3_difference));
    
    M1region3stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))))-mean(M1region3stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))));
    M1region3stage3day3_difference_struct=cell2mat(struct2cell(M1region3stage3day3_difference));
    
    M1region3stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region3stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))))-mean(M1region3stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region3_day3_4stages(cell_num))));
    M1region3stage4day3_difference_struct=cell2mat(struct2cell(M1region3stage4day3_difference));
end
M1region3day3=[M1region3stage1day3_difference_struct M1region3stage2day3_difference_struct M1region3stage3day3_difference_struct M1region3stage4day3_difference_struct M1_region3_day3_4stages];
for i=1:length(M1region3day3)
    
    if sum(M1region3day3(i,1:4)<0)>sum(M1region3day3(i,1:4)>0)
        M1region3day3(i,6)=-1;
    elseif sum(M1region3day3(i,1:4)<0)<sum(M1region3day3(i,1:4)>0)
        M1region3day3(i,6)=1;
    elseif sum(M1region3day3(i,1:4)<0)==sum(M1region3day3(i,1:4)>0)
        if abs(mean(M1region3day3(i,find(M1region3day3(i,1:4)<0))))>abs(mean(M1region3day3(i,find(M1region3day3(i,1:4)>0))))
            M1region3day3(i,6)=-1;
        elseif abs(mean(M1region3day3(i,find(M1region3day3(i,1:4)<0))))<abs(mean(M1region3day3(i,find(M1region3day3(i,1:4)>0))))
            M1region3day3(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1127=[];
for i=1:length(M1region3day3)
    if M1region3day3(i,6)==-1
       a=find(s1127==M1region3day3(i,5));
       unbiased_currentoutcome_signerror_1127(a,:)=-unbiased_currentoutcome1127(a,:);
    end
end
unbiased_currentoutcome_signerror_1127(all(unbiased_currentoutcome_signerror_1127==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1127=[];
for i=1:length(M1region3day3)
    if M1region3day3(i,6)==-1
       a=find(s1127==M1region3day3(i,5));
       unbiased_currentoutcome_error_1127(a,:)=unbiased_currentoutcome1127(a,:);
    end
end
unbiased_currentoutcome_error_1127(all(unbiased_currentoutcome_error_1127==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1127=[];
for i=1:length(M1region3day3)
    if M1region3day3(i,6)==1
       a=find(s1127==M1region3day3(i,5));
       unbiased_currentoutcome_signcorrect_1127(a,:)=unbiased_currentoutcome1127(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1127(all(unbiased_currentoutcome_signcorrect_1127==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1127=[];
for i=1:length(M1region3day3)
    if M1region3day3(i,6)==1
       a=find(s1127==M1region3day3(i,5));
       unbiased_currentoutcome_correct_1127(a,:)=unbiased_currentoutcome1127(a,:);
    end
end
unbiased_currentoutcome_correct_1127(all(unbiased_currentoutcome_correct_1127==0,2),:) = [];

%%1129

load('L:\Monkey1\region4\20211129\proportions_of_cells_encoding_current_trials_outcome_20211129.mat');
iscell=readNPY('L:\Monkey1\region4\20211129\iscell.npy');
s1129=find(iscell(:,1)==1);



M1_region4_day1_4stages=union(union(union(M1region4stage1day1index,M1region4stage2day1index),M1region4stage3day1index),M1region4stage4day1index);
M1_region4_day1_0stage=setdiff(M1region4stage1day1diff_ratio_deltaF(:,1),M1_region4_day1_4stages);

for cell_num=1:length(M1_region4_day1_4stages)
    M1region4stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))))-mean(M1region4stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))));
    M1region4stage1day1_difference_struct=cell2mat(struct2cell(M1region4stage1day1_difference));
    
    M1region4stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))))-mean(M1region4stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))));
    M1region4stage2day1_difference_struct=cell2mat(struct2cell(M1region4stage2day1_difference));
    
    M1region4stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))))-mean(M1region4stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))));
    M1region4stage3day1_difference_struct=cell2mat(struct2cell(M1region4stage3day1_difference));
    
    M1region4stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))))-mean(M1region4stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day1_4stages(cell_num))));
    M1region4stage4day1_difference_struct=cell2mat(struct2cell(M1region4stage4day1_difference)); 
end
M1region4day1=[M1region4stage1day1_difference_struct M1region4stage2day1_difference_struct M1region4stage3day1_difference_struct M1region4stage4day1_difference_struct M1_region4_day1_4stages];
for i=1:length(M1region4day1)
    
    if sum(M1region4day1(i,1:4)<0)>sum(M1region4day1(i,1:4)>0)
        M1region4day1(i,6)=-1;
    elseif sum(M1region4day1(i,1:4)<0)<sum(M1region4day1(i,1:4)>0)
        M1region4day1(i,6)=1;
    elseif sum(M1region4day1(i,1:4)<0)==sum(M1region4day1(i,1:4)>0)
        if abs(mean(M1region4day1(i,find(M1region4day1(i,1:4)<0))))>abs(mean(M1region4day1(i,find(M1region4day1(i,1:4)>0))))
            M1region4day1(i,6)=-1;
        elseif abs(mean(M1region4day1(i,find(M1region4day1(i,1:4)<0))))<abs(mean(M1region4day1(i,find(M1region4day1(i,1:4)>0))))
            M1region4day1(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1129=[];
for i=1:length(M1region4day1)
    if M1region4day1(i,6)==-1
       a=find(s1129==M1region4day1(i,5));
       unbiased_currentoutcome_signerror_1129(a,:)=-unbiased_currentoutcome1129(a,:);
    end
end
unbiased_currentoutcome_signerror_1129(all(unbiased_currentoutcome_signerror_1129==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1129=[];
for i=1:length(M1region4day1)
    if M1region4day1(i,6)==-1
       a=find(s1129==M1region4day1(i,5));
       unbiased_currentoutcome_error_1129(a,:)=unbiased_currentoutcome1129(a,:);
    end
end
unbiased_currentoutcome_error_1129(all(unbiased_currentoutcome_error_1129==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1129=[];
for i=1:length(M1region4day1)
    if M1region4day1(i,6)==1
       a=find(s1129==M1region4day1(i,5));
       unbiased_currentoutcome_signcorrect_1129(a,:)=unbiased_currentoutcome1129(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1129(all(unbiased_currentoutcome_signcorrect_1129==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1129=[];
for i=1:length(M1region4day1)
    if M1region4day1(i,6)==1
       a=find(s1129==M1region4day1(i,5));
       unbiased_currentoutcome_correct_1129(a,:)=unbiased_currentoutcome1129(a,:);
    end
end
unbiased_currentoutcome_correct_1129(all(unbiased_currentoutcome_correct_1129==0,2),:) = [];

%%1201
load('L:\Monkey1\region4\20211201\proportions_of_cells_encoding_current_trials_outcome_20211201.mat');
iscell=readNPY('L:\Monkey1\region4\20211201\iscell.npy');
s1201=find(iscell(:,1)==1);


M1_region4_day2_4stages=union(union(union(M1region4stage1day2index,M1region4stage2day2index),M1region4stage3day2index),M1region4stage4day2index);
M1_region4_day2_0stage=setdiff(M1region4stage1day2diff_ratio_deltaF(:,1),M1_region4_day2_4stages);


for cell_num=1:length(M1_region4_day2_4stages)
    M1region4stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))))-mean(M1region4stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))));
    M1region4stage1day2_difference_struct=cell2mat(struct2cell(M1region4stage1day2_difference));
    
    M1region4stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))))-mean(M1region4stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))));
    M1region4stage2day2_difference_struct=cell2mat(struct2cell(M1region4stage2day2_difference));
    
    M1region4stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))))-mean(M1region4stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))));
    M1region4stage3day2_difference_struct=cell2mat(struct2cell(M1region4stage3day2_difference));
    
    M1region4stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))))-mean(M1region4stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day2_4stages(cell_num))));
    M1region4stage4day2_difference_struct=cell2mat(struct2cell(M1region4stage4day2_difference));
end
M1region4day2=[M1region4stage1day2_difference_struct M1region4stage2day2_difference_struct M1region4stage3day2_difference_struct M1region4stage4day2_difference_struct M1_region4_day2_4stages];
for i=1:length(M1region4day2)
    
    if sum(M1region4day2(i,1:4)<0)>sum(M1region4day2(i,1:4)>0)
        M1region4day2(i,6)=-1;
    elseif sum(M1region4day2(i,1:4)<0)<sum(M1region4day2(i,1:4)>0)
        M1region4day2(i,6)=1;
    elseif sum(M1region4day2(i,1:4)<0)==sum(M1region4day2(i,1:4)>0)
        if abs(mean(M1region4day2(i,find(M1region4day2(i,1:4)<0))))>abs(mean(M1region4day2(i,find(M1region4day2(i,1:4)>0))))
            M1region4day2(i,6)=-1;
        elseif abs(mean(M1region4day2(i,find(M1region4day2(i,1:4)<0))))<abs(mean(M1region4day2(i,find(M1region4day2(i,1:4)>0))))
            M1region4day2(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1201=[];
for i=1:length(M1region4day2)
    if M1region4day2(i,6)==-1
       a=find(s1201==M1region4day2(i,5));
       unbiased_currentoutcome_signerror_1201(a,:)=-unbiased_currentoutcome1201(a,:);
    end
end
unbiased_currentoutcome_signerror_1201(all(unbiased_currentoutcome_signerror_1201==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1201=[];
for i=1:length(M1region4day2)
    if M1region4day2(i,6)==-1
       a=find(s1201==M1region4day2(i,5));
       unbiased_currentoutcome_error_1201(a,:)=unbiased_currentoutcome1201(a,:);
    end
end
unbiased_currentoutcome_error_1201(all(unbiased_currentoutcome_error_1201==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1201=[];
for i=1:length(M1region4day2)
    if M1region4day2(i,6)==1
       a=find(s1201==M1region4day2(i,5));
       unbiased_currentoutcome_signcorrect_1201(a,:)=unbiased_currentoutcome1201(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1201(all(unbiased_currentoutcome_signcorrect_1201==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1201=[];
for i=1:length(M1region4day2)
    if M1region4day2(i,6)==1
       a=find(s1201==M1region4day2(i,5));
       unbiased_currentoutcome_correct_1201(a,:)=unbiased_currentoutcome1201(a,:);
    end
end
unbiased_currentoutcome_correct_1201(all(unbiased_currentoutcome_correct_1201==0,2),:) = [];



%1202
load('L:\Monkey1\region4\20211202\proportions_of_cells_encoding_current_trials_outcome_20211202.mat');
iscell=readNPY('L:\Monkey1\region4\20211202\iscell.npy');
s1202=find(iscell(:,1)==1);


M1_region4_day3_4stages=union(union(union(M1region4stage1day3index,M1region4stage2day3index),M1region4stage3day3index),M1region4stage4day3index);
M1_region4_day3_0stage=setdiff(M1region4stage1day3diff_ratio_deltaF(:,1),M1_region4_day3_4stages);

for cell_num=1:length(M1_region4_day3_4stages)
    M1region4stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))))-mean(M1region4stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))));
    M1region4stage1day3_difference_struct=cell2mat(struct2cell(M1region4stage1day3_difference));
    
    M1region4stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))))-mean(M1region4stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))));
    M1region4stage2day3_difference_struct=cell2mat(struct2cell(M1region4stage2day3_difference));
    
    M1region4stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))))-mean(M1region4stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))));
    M1region4stage3day3_difference_struct=cell2mat(struct2cell(M1region4stage3day3_difference));
    
    M1region4stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region4stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))))-mean(M1region4stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region4_day3_4stages(cell_num))));
    M1region4stage4day3_difference_struct=cell2mat(struct2cell(M1region4stage4day3_difference));
end
M1region4day3=[M1region4stage1day3_difference_struct M1region4stage2day3_difference_struct M1region4stage3day3_difference_struct M1region4stage4day3_difference_struct M1_region4_day3_4stages];
for i=1:length(M1region4day3)
    
    if sum(M1region4day3(i,1:4)<0)>sum(M1region4day3(i,1:4)>0)
        M1region4day3(i,6)=-1;
    elseif sum(M1region4day3(i,1:4)<0)<sum(M1region4day3(i,1:4)>0)
        M1region4day3(i,6)=1;
    elseif sum(M1region4day3(i,1:4)<0)==sum(M1region4day3(i,1:4)>0)
        if abs(mean(M1region4day3(i,find(M1region4day3(i,1:4)<0))))>abs(mean(M1region4day3(i,find(M1region4day3(i,1:4)>0))))
            M1region4day3(i,6)=-1;
        elseif abs(mean(M1region4day3(i,find(M1region4day3(i,1:4)<0))))<abs(mean(M1region4day3(i,find(M1region4day3(i,1:4)>0))))
            M1region4day3(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1202=[];
for i=1:length(M1region4day3)
    if M1region4day3(i,6)==-1
       a=find(s1202==M1region4day3(i,5));
       unbiased_currentoutcome_signerror_1202(a,:)=-unbiased_currentoutcome1202(a,:);
    end
end
unbiased_currentoutcome_signerror_1202(all(unbiased_currentoutcome_signerror_1202==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1202=[];
for i=1:length(M1region4day3)
    if M1region4day3(i,6)==-1
       a=find(s1202==M1region4day3(i,5));
       unbiased_currentoutcome_error_1202(a,:)=unbiased_currentoutcome1202(a,:);
    end
end
unbiased_currentoutcome_error_1202(all(unbiased_currentoutcome_error_1202==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1202=[];
for i=1:length(M1region4day3)
    if M1region4day3(i,6)==1
       a=find(s1202==M1region4day3(i,5));
       unbiased_currentoutcome_signcorrect_1202(a,:)=unbiased_currentoutcome1202(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1202(all(unbiased_currentoutcome_signcorrect_1202==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1202=[];
for i=1:length(M1region4day3)
    if M1region4day3(i,6)==1
       a=find(s1202==M1region4day3(i,5));
       unbiased_currentoutcome_correct_1202(a,:)=unbiased_currentoutcome1202(a,:);
    end
end
unbiased_currentoutcome_correct_1202(all(unbiased_currentoutcome_correct_1202==0,2),:) = [];


%1203
load('L:\Monkey1\region5\20211203\proportions_of_cells_encoding_current_trials_outcome_20211203.mat');
iscell=readNPY('L:\Monkey1\region5\20211203\iscell.npy');
s1203=find(iscell(:,1)==1);


M1_region5_day1_4stages=union(union(union(M1region5stage1day1index,M1region5stage2day1index),M1region5stage3day1index),M1region5stage4day1index);
M1_region5_day1_0stage=setdiff(M1region5stage1day1diff_ratio_deltaF(:,1),M1_region5_day1_4stages);




for cell_num=1:length(M1_region5_day1_4stages)
    M1region5stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))))-mean(M1region5stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))));
    M1region5stage1day1_difference_struct=cell2mat(struct2cell(M1region5stage1day1_difference));
    
    M1region5stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))))-mean(M1region5stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))));
    M1region5stage2day1_difference_struct=cell2mat(struct2cell(M1region5stage2day1_difference));
    
    M1region5stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))))-mean(M1region5stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))));
    M1region5stage3day1_difference_struct=cell2mat(struct2cell(M1region5stage3day1_difference));
    
    M1region5stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))))-mean(M1region5stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day1_4stages(cell_num))));
    M1region5stage4day1_difference_struct=cell2mat(struct2cell(M1region5stage4day1_difference)); 
end
M1region5day1=[M1region5stage1day1_difference_struct M1region5stage2day1_difference_struct M1region5stage3day1_difference_struct M1region5stage4day1_difference_struct M1_region5_day1_4stages];
for i=1:length(M1region5day1)
    
    if sum(M1region5day1(i,1:4)<0)>sum(M1region5day1(i,1:4)>0)
        M1region5day1(i,6)=-1;
    elseif sum(M1region5day1(i,1:4)<0)<sum(M1region5day1(i,1:4)>0)
        M1region5day1(i,6)=1;
    elseif sum(M1region5day1(i,1:4)<0)==sum(M1region5day1(i,1:4)>0)
        if abs(mean(M1region5day1(i,find(M1region5day1(i,1:4)<0))))>abs(mean(M1region5day1(i,find(M1region5day1(i,1:4)>0))))
            M1region5day1(i,6)=-1;
        elseif abs(mean(M1region5day1(i,find(M1region5day1(i,1:4)<0))))<abs(mean(M1region5day1(i,find(M1region5day1(i,1:4)>0))))
            M1region5day1(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1203=[];
for i=1:length(M1region5day1)
    if M1region5day1(i,6)==-1
       a=find(s1203==M1region5day1(i,5));
       unbiased_currentoutcome_signerror_1203(a,:)=-unbiased_currentoutcome1203(a,:);
    end
end
unbiased_currentoutcome_signerror_1203(all(unbiased_currentoutcome_signerror_1203==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1203=[];
for i=1:length(M1region5day1)
    if M1region5day1(i,6)==-1
       a=find(s1203==M1region5day1(i,5));
       unbiased_currentoutcome_error_1203(a,:)=unbiased_currentoutcome1203(a,:);
    end
end
unbiased_currentoutcome_error_1203(all(unbiased_currentoutcome_error_1203==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1203=[];
for i=1:length(M1region5day1)
    if M1region5day1(i,6)==1
       a=find(s1203==M1region5day1(i,5));
       unbiased_currentoutcome_signcorrect_1203(a,:)=unbiased_currentoutcome1203(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1203(all(unbiased_currentoutcome_signcorrect_1203==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1203=[];
for i=1:length(M1region5day1)
    if M1region5day1(i,6)==1
       a=find(s1203==M1region5day1(i,5));
       unbiased_currentoutcome_correct_1203(a,:)=unbiased_currentoutcome1203(a,:);
    end
end
unbiased_currentoutcome_correct_1203(all(unbiased_currentoutcome_correct_1203==0,2),:) = [];

%1204
load('L:\Monkey1\region5\20211204\proportions_of_cells_encoding_current_trials_outcome_20211204.mat');
iscell=readNPY('L:\Monkey1\region5\20211204\iscell.npy');
s1204=find(iscell(:,1)==1);
M1_region5_day2_4stages=union(union(union(M1region5stage1day2index,M1region5stage2day2index),M1region5stage3day2index),M1region5stage4day2index);
M1_region5_day2_0stage=setdiff(M1region5stage1day2diff_ratio_deltaF(:,1),M1_region5_day2_4stages);
for cell_num=1:length(M1_region5_day2_4stages)
    M1region5stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))))-mean(M1region5stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))));
    M1region5stage1day2_difference_struct=cell2mat(struct2cell(M1region5stage1day2_difference));
    
    M1region5stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))))-mean(M1region5stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))));
    M1region5stage2day2_difference_struct=cell2mat(struct2cell(M1region5stage2day2_difference));
    
    M1region5stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))))-mean(M1region5stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))));
    M1region5stage3day2_difference_struct=cell2mat(struct2cell(M1region5stage3day2_difference));
    
    M1region5stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region5stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))))-mean(M1region5stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region5_day2_4stages(cell_num))));
    M1region5stage4day2_difference_struct=cell2mat(struct2cell(M1region5stage4day2_difference));
end
M1region5day2=[M1region5stage1day2_difference_struct M1region5stage2day2_difference_struct M1region5stage3day2_difference_struct M1region5stage4day2_difference_struct M1_region5_day2_4stages];
for i=1:length(M1region5day2)
    
    if sum(M1region5day2(i,1:4)<0)>sum(M1region5day2(i,1:4)>0)
        M1region5day2(i,6)=-1;
    elseif sum(M1region5day2(i,1:4)<0)<sum(M1region5day2(i,1:4)>0)
        M1region5day2(i,6)=1;
    elseif sum(M1region5day2(i,1:4)<0)==sum(M1region5day2(i,1:4)>0)
        if abs(mean(M1region5day2(i,find(M1region5day2(i,1:4)<0))))>abs(mean(M1region5day2(i,find(M1region5day2(i,1:4)>0))))
            M1region5day2(i,6)=-1;
        elseif abs(mean(M1region5day2(i,find(M1region5day2(i,1:4)<0))))<abs(mean(M1region5day2(i,find(M1region5day2(i,1:4)>0))))
            M1region5day2(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1204=[];
for i=1:length(M1region5day2)
    if M1region5day2(i,6)==-1
       a=find(s1204==M1region5day2(i,5));
       unbiased_currentoutcome_signerror_1204(a,:)=-unbiased_currentoutcome1204(a,:);
    end
end
unbiased_currentoutcome_signerror_1204(all(unbiased_currentoutcome_signerror_1204==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1204=[];
for i=1:length(M1region5day2)
    if M1region5day2(i,6)==-1
       a=find(s1204==M1region5day2(i,5));
       unbiased_currentoutcome_error_1204(a,:)=unbiased_currentoutcome1204(a,:);
    end
end
unbiased_currentoutcome_error_1204(all(unbiased_currentoutcome_error_1204==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1204=[];
for i=1:length(M1region5day2)
    if M1region5day2(i,6)==1
       a=find(s1204==M1region5day2(i,5));
       unbiased_currentoutcome_signcorrect_1204(a,:)=unbiased_currentoutcome1204(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1204(all(unbiased_currentoutcome_signcorrect_1204==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1204=[];
for i=1:length(M1region5day2)
    if M1region5day2(i,6)==1
       a=find(s1204==M1region5day2(i,5));
       unbiased_currentoutcome_correct_1204(a,:)=unbiased_currentoutcome1204(a,:);
    end
end
unbiased_currentoutcome_correct_1204(all(unbiased_currentoutcome_correct_1204==0,2),:) = [];


%%region6
load('L:\Monkey1\region6\20211217\proportions_of_cells_encoding_current_trials_outcome_20211217.mat');
iscell=readNPY('L:\Monkey1\region6\20211217\iscell.npy');
s1217=find(iscell(:,1)==1);

M1_region6_day1_4stages=union(union(union(M1region6stage1day1index,M1region6stage2day1index),M1region6stage3day1index),M1region6stage4day1index);
M1_region6_day1_0stage=setdiff(M1region6stage1day1diff_ratio_deltaF(:,1),M1_region6_day1_4stages);

for cell_num=1:length(M1_region6_day1_4stages)
    M1region6stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))))-mean(M1region6stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))));
    M1region6stage1day1_difference_struct=cell2mat(struct2cell(M1region6stage1day1_difference));
    
    M1region6stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))))-mean(M1region6stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))));
    M1region6stage2day1_difference_struct=cell2mat(struct2cell(M1region6stage2day1_difference));
    
    M1region6stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))))-mean(M1region6stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))));
    M1region6stage3day1_difference_struct=cell2mat(struct2cell(M1region6stage3day1_difference));
    
    M1region6stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))))-mean(M1region6stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day1_4stages(cell_num))));
    M1region6stage4day1_difference_struct=cell2mat(struct2cell(M1region6stage4day1_difference)); 
end
M1region6day1=[M1region6stage1day1_difference_struct M1region6stage2day1_difference_struct M1region6stage3day1_difference_struct M1region6stage4day1_difference_struct M1_region6_day1_4stages];
for i=1:length(M1region6day1)
    
    if sum(M1region6day1(i,1:4)<0)>sum(M1region6day1(i,1:4)>0)
        M1region6day1(i,6)=-1;
    elseif sum(M1region6day1(i,1:4)<0)<sum(M1region6day1(i,1:4)>0)
        M1region6day1(i,6)=1;
    elseif sum(M1region6day1(i,1:4)<0)==sum(M1region6day1(i,1:4)>0)
        if abs(mean(M1region6day1(i,find(M1region6day1(i,1:4)<0))))>abs(mean(M1region6day1(i,find(M1region6day1(i,1:4)>0))))
            M1region6day1(i,6)=-1;
        elseif abs(mean(M1region6day1(i,find(M1region6day1(i,1:4)<0))))<abs(mean(M1region6day1(i,find(M1region6day1(i,1:4)>0))))
            M1region6day1(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1217=[];
for i=1:length(M1region6day1)
    if M1region6day1(i,6)==-1
       a=find(s1217==M1region6day1(i,5));
       unbiased_currentoutcome_signerror_1217(a,:)=-unbiased_currentoutcome1217(a,:);
    end
end
unbiased_currentoutcome_signerror_1217(all(unbiased_currentoutcome_signerror_1217==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1217=[];
for i=1:length(M1region6day1)
    if M1region6day1(i,6)==-1
       a=find(s1217==M1region6day1(i,5));
       unbiased_currentoutcome_error_1217(a,:)=unbiased_currentoutcome1217(a,:);
    end
end
unbiased_currentoutcome_error_1217(all(unbiased_currentoutcome_error_1217==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1217=[];
for i=1:length(M1region6day1)
    if M1region6day1(i,6)==1
       a=find(s1217==M1region6day1(i,5));
       unbiased_currentoutcome_signcorrect_1217(a,:)=unbiased_currentoutcome1217(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1217(all(unbiased_currentoutcome_signcorrect_1217==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1217=[];
for i=1:length(M1region6day1)
    if M1region6day1(i,6)==1
       a=find(s1217==M1region6day1(i,5));
       unbiased_currentoutcome_correct_1217(a,:)=unbiased_currentoutcome1217(a,:);
    end
end
unbiased_currentoutcome_correct_1217(all(unbiased_currentoutcome_correct_1217==0,2),:) = [];


%1218
load('L:\Monkey1\region6\20211218\proportions_of_cells_encoding_current_trials_outcome_20211218.mat');
iscell=readNPY('L:\Monkey1\region6\20211218\iscell.npy');
s1218=find(iscell(:,1)==1);


M1_region6_day2_4stages=union(union(union(M1region6stage1day2index,M1region6stage2day2index),M1region6stage3day2index),M1region6stage4day2index);
M1_region6_day2_0stage=setdiff(M1region6stage1day2diff_ratio_deltaF(:,1),M1_region6_day2_4stages);





for cell_num=1:length(M1_region6_day2_4stages)
    M1region6stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))))-mean(M1region6stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))));
    M1region6stage1day2_difference_struct=cell2mat(struct2cell(M1region6stage1day2_difference));
    
    M1region6stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))))-mean(M1region6stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))));
    M1region6stage2day2_difference_struct=cell2mat(struct2cell(M1region6stage2day2_difference));
    
    M1region6stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))))-mean(M1region6stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))));
    M1region6stage3day2_difference_struct=cell2mat(struct2cell(M1region6stage3day2_difference));
    
    M1region6stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))))-mean(M1region6stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day2_4stages(cell_num))));
    M1region6stage4day2_difference_struct=cell2mat(struct2cell(M1region6stage4day2_difference));
end
M1region6day2=[M1region6stage1day2_difference_struct M1region6stage2day2_difference_struct M1region6stage3day2_difference_struct M1region6stage4day2_difference_struct M1_region6_day2_4stages];
for i=1:length(M1region6day2)
    
    if sum(M1region6day2(i,1:4)<0)>sum(M1region6day2(i,1:4)>0)
        M1region6day2(i,6)=-1;
    elseif sum(M1region6day2(i,1:4)<0)<sum(M1region6day2(i,1:4)>0)
        M1region6day2(i,6)=1;
    elseif sum(M1region6day2(i,1:4)<0)==sum(M1region6day2(i,1:4)>0)
        if abs(mean(M1region6day2(i,find(M1region6day2(i,1:4)<0))))>abs(mean(M1region6day2(i,find(M1region6day2(i,1:4)>0))))
            M1region6day2(i,6)=-1;
        elseif abs(mean(M1region6day2(i,find(M1region6day2(i,1:4)<0))))<abs(mean(M1region6day2(i,find(M1region6day2(i,1:4)>0))))
            M1region6day2(i,6)=1;
        end
    end
end






%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1218=[];
for i=1:length(M1region6day2)
    if M1region6day2(i,6)==-1
       a=find(s1218==M1region6day2(i,5));
       unbiased_currentoutcome_signerror_1218(a,:)=-unbiased_currentoutcome1218(a,:);
    end
end
unbiased_currentoutcome_signerror_1218(all(unbiased_currentoutcome_signerror_1218==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1218=[];
for i=1:length(M1region6day2)
    if M1region6day2(i,6)==-1
       a=find(s1218==M1region6day2(i,5));
       unbiased_currentoutcome_error_1218(a,:)=unbiased_currentoutcome1218(a,:);
    end
end
unbiased_currentoutcome_error_1218(all(unbiased_currentoutcome_error_1218==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1218=[];
for i=1:length(M1region6day2)
    if M1region6day2(i,6)==1
       a=find(s1218==M1region6day2(i,5));
       unbiased_currentoutcome_signcorrect_1218(a,:)=unbiased_currentoutcome1218(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1218(all(unbiased_currentoutcome_signcorrect_1218==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1218=[];
for i=1:length(M1region6day2)
    if M1region6day2(i,6)==1
       a=find(s1218==M1region6day2(i,5));
       unbiased_currentoutcome_correct_1218(a,:)=unbiased_currentoutcome1218(a,:);
    end
end
unbiased_currentoutcome_correct_1218(all(unbiased_currentoutcome_correct_1218==0,2),:) = [];

%1219
load('L:\Monkey1\region6\20211219\proportions_of_cells_encoding_current_trials_outcome_20211219.mat');

iscell=readNPY('L:\Monkey1\region6\20211219\iscell.npy');
s1219=find(iscell(:,1)==1);


M1_region6_day3_4stages=union(union(union(M1region6stage1day3index,M1region6stage2day3index),M1region6stage3day3index),M1region6stage4day3index);
M1_region6_day3_0stage=setdiff(M1region6stage1day3diff_ratio_deltaF(:,1),M1_region6_day3_4stages);

for cell_num=1:length(M1_region6_day3_4stages)
    M1region6stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))))-mean(M1region6stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))));
    M1region6stage1day3_difference_struct=cell2mat(struct2cell(M1region6stage1day3_difference));
    
    M1region6stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))))-mean(M1region6stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))));
    M1region6stage2day3_difference_struct=cell2mat(struct2cell(M1region6stage2day3_difference));
    
    M1region6stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))))-mean(M1region6stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))));
    M1region6stage3day3_difference_struct=cell2mat(struct2cell(M1region6stage3day3_difference));
    
    M1region6stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))))-mean(M1region6stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day3_4stages(cell_num))));
    M1region6stage4day3_difference_struct=cell2mat(struct2cell(M1region6stage4day3_difference));
end
M1region6day3=[M1region6stage1day3_difference_struct M1region6stage2day3_difference_struct M1region6stage3day3_difference_struct M1region6stage4day3_difference_struct M1_region6_day3_4stages];
for i=1:length(M1region6day3)
    
    if sum(M1region6day3(i,1:4)<0)>sum(M1region6day3(i,1:4)>0)
        M1region6day3(i,6)=-1;
    elseif sum(M1region6day3(i,1:4)<0)<sum(M1region6day3(i,1:4)>0)
        M1region6day3(i,6)=1;
    elseif sum(M1region6day3(i,1:4)<0)==sum(M1region6day3(i,1:4)>0)
        if abs(mean(M1region6day3(i,find(M1region6day3(i,1:4)<0))))>abs(mean(M1region6day3(i,find(M1region6day3(i,1:4)>0))))
            M1region6day3(i,6)=-1;
        elseif abs(mean(M1region6day3(i,find(M1region6day3(i,1:4)<0))))<abs(mean(M1region6day3(i,find(M1region6day3(i,1:4)>0))))
            M1region6day3(i,6)=1;
        end
    end
end



%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1219=[];
for i=1:length(M1region6day3)
    if M1region6day3(i,6)==-1
       a=find(s1219==M1region6day3(i,5));
       unbiased_currentoutcome_signerror_1219(a,:)=-unbiased_currentoutcome1219(a,:);
    end
end
unbiased_currentoutcome_signerror_1219(all(unbiased_currentoutcome_signerror_1219==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1219=[];
for i=1:length(M1region6day3)
    if M1region6day3(i,6)==-1
       a=find(s1219==M1region6day3(i,5));
       unbiased_currentoutcome_error_1219(a,:)=unbiased_currentoutcome1219(a,:);
    end
end
unbiased_currentoutcome_error_1219(all(unbiased_currentoutcome_error_1219==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1219=[];
for i=1:length(M1region6day3)
    if M1region6day3(i,6)==1
       a=find(s1219==M1region6day3(i,5));
       unbiased_currentoutcome_signcorrect_1219(a,:)=unbiased_currentoutcome1219(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1219(all(unbiased_currentoutcome_signcorrect_1219==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1219=[];
for i=1:length(M1region6day3)
    if M1region6day3(i,6)==1
       a=find(s1219==M1region6day3(i,5));
       unbiased_currentoutcome_correct_1219(a,:)=unbiased_currentoutcome1219(a,:);
    end
end
unbiased_currentoutcome_correct_1219(all(unbiased_currentoutcome_correct_1219==0,2),:) = [];


%%1220
load('L:\Monkey1\region6\20211220\proportions_of_cells_encoding_current_trials_outcome_20211220.mat');
iscell=readNPY('L:\Monkey1\region6\20211220\iscell.npy');
s1220=find(iscell(:,1)==1);
M1_region6_day4_4stages=union(union(union(M1region6stage1day4index,M1region6stage2day4index),M1region6stage3day4index),M1region6stage4day4index);
M1_region6_day4_0stage=setdiff(M1region6stage1day4diff_ratio_deltaF(:,1),M1_region6_day4_4stages);



for cell_num=1:length(M1_region6_day4_4stages)
    M1region6stage1day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))))-mean(M1region6stage1day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))));
    M1region6stage1day4_difference_struct=cell2mat(struct2cell(M1region6stage1day4_difference));
    
    M1region6stage2day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))))-mean(M1region6stage2day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))));
    M1region6stage2day4_difference_struct=cell2mat(struct2cell(M1region6stage2day4_difference));
    
    M1region6stage3day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))))-mean(M1region6stage3day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))));
    M1region6stage3day4_difference_struct=cell2mat(struct2cell(M1region6stage3day4_difference));
    
    M1region6stage4day4_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day4_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))))-mean(M1region6stage4day4_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day4_4stages(cell_num))));
    M1region6stage4day4_difference_struct=cell2mat(struct2cell(M1region6stage4day4_difference));
end
M1region6day4=[M1region6stage1day4_difference_struct M1region6stage2day4_difference_struct M1region6stage3day4_difference_struct M1region6stage4day4_difference_struct M1_region6_day4_4stages];
for i=1:length(M1region6day4)
    
    if sum(M1region6day4(i,1:4)<0)>sum(M1region6day4(i,1:4)>0)
        M1region6day4(i,6)=-1;
    elseif sum(M1region6day4(i,1:4)<0)<sum(M1region6day4(i,1:4)>0)
        M1region6day4(i,6)=1;
    elseif sum(M1region6day4(i,1:4)<0)==sum(M1region6day4(i,1:4)>0)
        if abs(mean(M1region6day4(i,find(M1region6day4(i,1:4)<0))))>abs(mean(M1region6day4(i,find(M1region6day4(i,1:4)>0))))
            M1region6day4(i,6)=-1;
        elseif abs(mean(M1region6day4(i,find(M1region6day4(i,1:4)<0))))<abs(mean(M1region6day4(i,find(M1region6day4(i,1:4)>0))))
            M1region6day4(i,6)=1;
        end
    end
end


%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1220=[];
for i=1:length(M1region6day4)
    if M1region6day4(i,6)==-1
       a=find(s1220==M1region6day4(i,5));
       unbiased_currentoutcome_signerror_1220(a,:)=-unbiased_currentoutcome1220(a,:);
    end
end
unbiased_currentoutcome_signerror_1220(all(unbiased_currentoutcome_signerror_1220==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1220=[];
for i=1:length(M1region6day4)
    if M1region6day4(i,6)==-1
       a=find(s1220==M1region6day4(i,5));
       unbiased_currentoutcome_error_1220(a,:)=unbiased_currentoutcome1220(a,:);
    end
end
unbiased_currentoutcome_error_1220(all(unbiased_currentoutcome_error_1220==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1220=[];
for i=1:length(M1region6day4)
    if M1region6day4(i,6)==1
       a=find(s1220==M1region6day4(i,5));
       unbiased_currentoutcome_signcorrect_1220(a,:)=unbiased_currentoutcome1220(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1220(all(unbiased_currentoutcome_signcorrect_1220==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1220=[];
for i=1:length(M1region6day4)
    if M1region6day4(i,6)==1
       a=find(s1220==M1region6day4(i,5));
       unbiased_currentoutcome_correct_1220(a,:)=unbiased_currentoutcome1220(a,:);
    end
end
unbiased_currentoutcome_correct_1220(all(unbiased_currentoutcome_correct_1220==0,2),:) = [];

%%1221
load('L:\Monkey1\region6\20211221\proportions_of_cells_encoding_current_trials_outcome_20211221.mat');
iscell=readNPY('L:\Monkey1\region6\20211221\iscell.npy');
s1221=find(iscell(:,1)==1);

M1_region6_day5_4stages=union(union(union(M1region6stage1day5index,M1region6stage2day5index),M1region6stage3day5index),M1region6stage4day5index);
M1_region6_day5_0stage=setdiff(M1region6stage1day5diff_ratio_deltaF(:,1),M1_region6_day5_4stages);
for cell_num=1:length(M1_region6_day5_4stages)
    M1region6stage1day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))))-mean(M1region6stage1day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))));
    M1region6stage1day5_difference_struct=cell2mat(struct2cell(M1region6stage1day5_difference));
    
    M1region6stage2day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))))-mean(M1region6stage2day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))));
    M1region6stage2day5_difference_struct=cell2mat(struct2cell(M1region6stage2day5_difference));
    
    M1region6stage3day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))))-mean(M1region6stage3day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))));
    M1region6stage3day5_difference_struct=cell2mat(struct2cell(M1region6stage3day5_difference));
    
    M1region6stage4day5_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day5_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))))-mean(M1region6stage4day5_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day5_4stages(cell_num))));
    M1region6stage4day5_difference_struct=cell2mat(struct2cell(M1region6stage4day5_difference));
end
M1region6day5=[M1region6stage1day5_difference_struct M1region6stage2day5_difference_struct M1region6stage3day5_difference_struct M1region6stage4day5_difference_struct M1_region6_day5_4stages];
for i=1:length(M1region6day5)
    
    if sum(M1region6day5(i,1:4)<0)>sum(M1region6day5(i,1:4)>0)
        M1region6day5(i,6)=-1;
    elseif sum(M1region6day5(i,1:4)<0)<sum(M1region6day5(i,1:4)>0)
        M1region6day5(i,6)=1;
    elseif sum(M1region6day5(i,1:4)<0)==sum(M1region6day5(i,1:4)>0)
        if abs(mean(M1region6day5(i,find(M1region6day5(i,1:4)<0))))>abs(mean(M1region6day5(i,find(M1region6day5(i,1:4)>0))))
            M1region6day5(i,6)=-1;
        elseif abs(mean(M1region6day5(i,find(M1region6day5(i,1:4)<0))))<abs(mean(M1region6day5(i,find(M1region6day5(i,1:4)>0))))
            M1region6day5(i,6)=1;
        end
    end
end





%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1221=[];
for i=1:length(M1region6day5)
    if M1region6day5(i,6)==-1
       a=find(s1221==M1region6day5(i,5));
       unbiased_currentoutcome_signerror_1221(a,:)=-unbiased_currentoutcome1221(a,:);
    end
end
unbiased_currentoutcome_signerror_1221(all(unbiased_currentoutcome_signerror_1221==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1221=[];
for i=1:length(M1region6day5)
    if M1region6day5(i,6)==-1
       a=find(s1221==M1region6day5(i,5));
       unbiased_currentoutcome_error_1221(a,:)=unbiased_currentoutcome1221(a,:);
    end
end
unbiased_currentoutcome_error_1221(all(unbiased_currentoutcome_error_1221==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1221=[];
for i=1:length(M1region6day5)
    if M1region6day5(i,6)==1
       a=find(s1221==M1region6day5(i,5));
       unbiased_currentoutcome_signcorrect_1221(a,:)=unbiased_currentoutcome1221(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1221(all(unbiased_currentoutcome_signcorrect_1221==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1221=[];
for i=1:length(M1region6day5)
    if M1region6day5(i,6)==1
       a=find(s1221==M1region6day5(i,5));
       unbiased_currentoutcome_correct_1221(a,:)=unbiased_currentoutcome1221(a,:);
    end
end
unbiased_currentoutcome_correct_1221(all(unbiased_currentoutcome_correct_1221==0,2),:) = [];


%%1222


load('L:\Monkey1\region6\20211222\proportions_of_cells_encoding_current_trials_outcome_20211222.mat');
iscell=readNPY('L:\Monkey1\region6\20211222\iscell.npy');
s1222=find(iscell(:,1)==1);

M1_region6_day6_4stages=union(union(union(M1region6stage1day6index,M1region6stage2day6index),M1region6stage3day6index),M1region6stage4day6index);
M1_region6_day6_0stage=setdiff(M1region6stage1day6diff_ratio_deltaF(:,1),M1_region6_day6_4stages);

for cell_num=1:length(M1_region6_day6_4stages)
    M1region6stage1day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))))-mean(M1region6stage1day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))));
    M1region6stage1day6_difference_struct=cell2mat(struct2cell(M1region6stage1day6_difference));
    
    M1region6stage2day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))))-mean(M1region6stage2day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))));
    M1region6stage2day6_difference_struct=cell2mat(struct2cell(M1region6stage2day6_difference));
    
    M1region6stage3day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))))-mean(M1region6stage3day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))));
    M1region6stage3day6_difference_struct=cell2mat(struct2cell(M1region6stage3day6_difference));
    
    M1region6stage4day6_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day6_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))))-mean(M1region6stage4day6_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day6_4stages(cell_num))));
    M1region6stage4day6_difference_struct=cell2mat(struct2cell(M1region6stage4day6_difference));
end
M1region6day6=[M1region6stage1day6_difference_struct M1region6stage2day6_difference_struct M1region6stage3day6_difference_struct M1region6stage4day6_difference_struct M1_region6_day6_4stages];
for i=1:length(M1region6day6)
    
    if sum(M1region6day6(i,1:4)<0)>sum(M1region6day6(i,1:4)>0)
        M1region6day6(i,6)=-1;
    elseif sum(M1region6day6(i,1:4)<0)<sum(M1region6day6(i,1:4)>0)
        M1region6day6(i,6)=1;
    elseif sum(M1region6day6(i,1:4)<0)==sum(M1region6day6(i,1:4)>0)
        if abs(mean(M1region6day6(i,find(M1region6day6(i,1:4)<0))))>abs(mean(M1region6day6(i,find(M1region6day6(i,1:4)>0))))
            M1region6day6(i,6)=-1;
        elseif abs(mean(M1region6day6(i,find(M1region6day6(i,1:4)<0))))<abs(mean(M1region6day6(i,find(M1region6day6(i,1:4)>0))))
            M1region6day6(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1222=[];
for i=1:length(M1region6day6)
    if M1region6day6(i,6)==-1
       a=find(s1222==M1region6day6(i,5));
       unbiased_currentoutcome_signerror_1222(a,:)=-unbiased_currentoutcome1222(a,:);
    end
end
unbiased_currentoutcome_signerror_1222(all(unbiased_currentoutcome_signerror_1222==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1222=[];
for i=1:length(M1region6day6)
    if M1region6day6(i,6)==-1
       a=find(s1222==M1region6day6(i,5));
       unbiased_currentoutcome_error_1222(a,:)=unbiased_currentoutcome1222(a,:);
    end
end
unbiased_currentoutcome_error_1222(all(unbiased_currentoutcome_error_1222==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1222=[];
for i=1:length(M1region6day6)
    if M1region6day6(i,6)==1
       a=find(s1222==M1region6day6(i,5));
       unbiased_currentoutcome_signcorrect_1222(a,:)=unbiased_currentoutcome1222(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1222(all(unbiased_currentoutcome_signcorrect_1222==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1222=[];
for i=1:length(M1region6day6)
    if M1region6day6(i,6)==1
       a=find(s1222==M1region6day6(i,5));
       unbiased_currentoutcome_correct_1222(a,:)=unbiased_currentoutcome1222(a,:);
    end
end
unbiased_currentoutcome_correct_1222(all(unbiased_currentoutcome_correct_1222==0,2),:) = [];

%%1223
load('L:\Monkey1\region6\20211223\proportions_of_cells_encoding_current_trials_outcome_20211223.mat');
iscell=readNPY('L:\Monkey1\region6\20211223\iscell.npy');
s1223=find(iscell(:,1)==1);
M1_region6_day7_4stages=union(union(union(M1region6stage1day7index,M1region6stage2day7index),M1region6stage3day7index),M1region6stage4day7index);
M1_region6_day7_0stage=setdiff(M1region6stage1day7diff_ratio_deltaF(:,1),M1_region6_day7_4stages);

for cell_num=1:length(M1_region6_day7_4stages)
    M1region6stage1day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))))-mean(M1region6stage1day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))));
    M1region6stage1day7_difference_struct=cell2mat(struct2cell(M1region6stage1day7_difference));
    
    M1region6stage2day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))))-mean(M1region6stage2day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))));
    M1region6stage2day7_difference_struct=cell2mat(struct2cell(M1region6stage2day7_difference));
    
    M1region6stage3day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))))-mean(M1region6stage3day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))));
    M1region6stage3day7_difference_struct=cell2mat(struct2cell(M1region6stage3day7_difference));
    
    M1region6stage4day7_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day7_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))))-mean(M1region6stage4day7_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day7_4stages(cell_num))));
    M1region6stage4day7_difference_struct=cell2mat(struct2cell(M1region6stage4day7_difference));
end
M1region6day7=[M1region6stage1day7_difference_struct M1region6stage2day7_difference_struct M1region6stage3day7_difference_struct M1region6stage4day7_difference_struct M1_region6_day7_4stages];
for i=1:length(M1region6day7)
    
    if sum(M1region6day7(i,1:4)<0)>sum(M1region6day7(i,1:4)>0)
        M1region6day7(i,6)=-1;
    elseif sum(M1region6day7(i,1:4)<0)<sum(M1region6day7(i,1:4)>0)
        M1region6day7(i,6)=1;
    elseif sum(M1region6day7(i,1:4)<0)==sum(M1region6day7(i,1:4)>0)
        if abs(mean(M1region6day7(i,find(M1region6day7(i,1:4)<0))))>abs(mean(M1region6day7(i,find(M1region6day7(i,1:4)>0))))
            M1region6day7(i,6)=-1;
        elseif abs(mean(M1region6day7(i,find(M1region6day7(i,1:4)<0))))<abs(mean(M1region6day7(i,find(M1region6day7(i,1:4)>0))))
            M1region6day7(i,6)=1;
        end
    end
end
%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1223=[];
for i=1:length(M1region6day7)
    if M1region6day7(i,6)==-1
       a=find(s1223==M1region6day7(i,5));
       unbiased_currentoutcome_signerror_1223(a,:)=-unbiased_currentoutcome1223(a,:);
    end
end
unbiased_currentoutcome_signerror_1223(all(unbiased_currentoutcome_signerror_1223==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1223=[];
for i=1:length(M1region6day7)
    if M1region6day7(i,6)==-1
       a=find(s1223==M1region6day7(i,5));
       unbiased_currentoutcome_error_1223(a,:)=unbiased_currentoutcome1223(a,:);
    end
end
unbiased_currentoutcome_error_1223(all(unbiased_currentoutcome_error_1223==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1223=[];
for i=1:length(M1region6day7)
    if M1region6day7(i,6)==1
       a=find(s1223==M1region6day7(i,5));
       unbiased_currentoutcome_signcorrect_1223(a,:)=unbiased_currentoutcome1223(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1223(all(unbiased_currentoutcome_signcorrect_1223==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1223=[];
for i=1:length(M1region6day7)
    if M1region6day7(i,6)==1
       a=find(s1223==M1region6day7(i,5));
       unbiased_currentoutcome_correct_1223(a,:)=unbiased_currentoutcome1223(a,:);
    end
end
unbiased_currentoutcome_correct_1223(all(unbiased_currentoutcome_correct_1223==0,2),:) = [];

%%1224


load('L:\Monkey1\region6\20211224\proportions_of_cells_encoding_current_trials_outcome_20211224.mat');
iscell=readNPY('L:\Monkey1\region6\20211224\iscell.npy');
s1224=find(iscell(:,1)==1);
M1_region6_day8_4stages=union(union(union(M1region6stage1day8index,M1region6stage2day8index),M1region6stage3day8index),M1region6stage4day8index);
M1_region6_day8_0stage=setdiff(M1region6stage1day8diff_ratio_deltaF(:,1),M1_region6_day8_4stages);

for cell_num=1:length(M1_region6_day8_4stages)
    M1region6stage1day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))))-mean(M1region6stage1day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))));
    M1region6stage1day8_difference_struct=cell2mat(struct2cell(M1region6stage1day8_difference));
    
    M1region6stage2day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))))-mean(M1region6stage2day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))));
    M1region6stage2day8_difference_struct=cell2mat(struct2cell(M1region6stage2day8_difference));
    
    M1region6stage3day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))))-mean(M1region6stage3day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))));
    M1region6stage3day8_difference_struct=cell2mat(struct2cell(M1region6stage3day8_difference));
    
    M1region6stage4day8_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day8_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))))-mean(M1region6stage4day8_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day8_4stages(cell_num))));
    M1region6stage4day8_difference_struct=cell2mat(struct2cell(M1region6stage4day8_difference));
end
M1region6day8=[M1region6stage1day8_difference_struct M1region6stage2day8_difference_struct M1region6stage3day8_difference_struct M1region6stage4day8_difference_struct M1_region6_day8_4stages];
for i=1:length(M1region6day8)
    
    if sum(M1region6day8(i,1:4)<0)>sum(M1region6day8(i,1:4)>0)
        M1region6day8(i,6)=-1;
    elseif sum(M1region6day8(i,1:4)<0)<sum(M1region6day8(i,1:4)>0)
        M1region6day8(i,6)=1;
    elseif sum(M1region6day8(i,1:4)<0)==sum(M1region6day8(i,1:4)>0)
        if abs(mean(M1region6day8(i,find(M1region6day8(i,1:4)<0))))>abs(mean(M1region6day8(i,find(M1region6day8(i,1:4)>0))))
            M1region6day8(i,6)=-1;
        elseif abs(mean(M1region6day8(i,find(M1region6day8(i,1:4)<0))))<abs(mean(M1region6day8(i,find(M1region6day8(i,1:4)>0))))
            M1region6day8(i,6)=1;
        end
    end
end




%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1224=[];
for i=1:length(M1region6day8)
    if M1region6day8(i,6)==-1
       a=find(s1224==M1region6day8(i,5));
       unbiased_currentoutcome_signerror_1224(a,:)=-unbiased_currentoutcome1224(a,:);
    end
end
unbiased_currentoutcome_signerror_1224(all(unbiased_currentoutcome_signerror_1224==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1224=[];
for i=1:length(M1region6day8)
    if M1region6day8(i,6)==-1
       a=find(s1224==M1region6day8(i,5));
       unbiased_currentoutcome_error_1224(a,:)=unbiased_currentoutcome1224(a,:);
    end
end
unbiased_currentoutcome_error_1224(all(unbiased_currentoutcome_error_1224==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1224=[];
for i=1:length(M1region6day8)
    if M1region6day8(i,6)==1
       a=find(s1224==M1region6day8(i,5));
       unbiased_currentoutcome_signcorrect_1224(a,:)=unbiased_currentoutcome1224(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1224(all(unbiased_currentoutcome_signcorrect_1224==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1224=[];
for i=1:length(M1region6day8)
    if M1region6day8(i,6)==1
       a=find(s1224==M1region6day8(i,5));
       unbiased_currentoutcome_correct_1224(a,:)=unbiased_currentoutcome1224(a,:);
    end
end
unbiased_currentoutcome_correct_1224(all(unbiased_currentoutcome_correct_1224==0,2),:) = [];


%%1225
load('L:\Monkey1\region6\20211225\proportions_of_cells_encoding_current_trials_outcome_20211225.mat');
iscell=readNPY('L:\Monkey1\region6\20211225\iscell.npy');
s1225=find(iscell(:,1)==1);
M1_region6_day9_4stages=union(union(union(M1region6stage1day9index,M1region6stage2day9index),M1region6stage3day9index),M1region6stage4day9index);
M1_region6_day9_0stage=setdiff(M1region6stage1day9diff_ratio_deltaF(:,1),M1_region6_day9_4stages);


for cell_num=1:length(M1_region6_day9_4stages)
    M1region6stage1day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))))-mean(M1region6stage1day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))));
    M1region6stage1day9_difference_struct=cell2mat(struct2cell(M1region6stage1day9_difference));
    
    M1region6stage2day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))))-mean(M1region6stage2day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))));
    M1region6stage2day9_difference_struct=cell2mat(struct2cell(M1region6stage2day9_difference));
    
    M1region6stage3day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))))-mean(M1region6stage3day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))));
    M1region6stage3day9_difference_struct=cell2mat(struct2cell(M1region6stage3day9_difference));
    
    M1region6stage4day9_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day9_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))))-mean(M1region6stage4day9_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day9_4stages(cell_num))));
    M1region6stage4day9_difference_struct=cell2mat(struct2cell(M1region6stage4day9_difference));
end
M1region6day9=[M1region6stage1day9_difference_struct M1region6stage2day9_difference_struct M1region6stage3day9_difference_struct M1region6stage4day9_difference_struct M1_region6_day9_4stages];
for i=1:length(M1region6day9)
    
    if sum(M1region6day9(i,1:4)<0)>sum(M1region6day9(i,1:4)>0)
        M1region6day9(i,6)=-1;
    elseif sum(M1region6day9(i,1:4)<0)<sum(M1region6day9(i,1:4)>0)
        M1region6day9(i,6)=1;
    elseif sum(M1region6day9(i,1:4)<0)==sum(M1region6day9(i,1:4)>0)
        if abs(mean(M1region6day9(i,find(M1region6day9(i,1:4)<0))))>abs(mean(M1region6day9(i,find(M1region6day9(i,1:4)>0))))
            M1region6day9(i,6)=-1;
        elseif abs(mean(M1region6day9(i,find(M1region6day9(i,1:4)<0))))<abs(mean(M1region6day9(i,find(M1region6day9(i,1:4)>0))))
            M1region6day9(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1225=[];
for i=1:length(M1region6day9)
    if M1region6day9(i,6)==-1
       a=find(s1225==M1region6day9(i,5));
       unbiased_currentoutcome_signerror_1225(a,:)=-unbiased_currentoutcome1225(a,:);
    end
end
unbiased_currentoutcome_signerror_1225(all(unbiased_currentoutcome_signerror_1225==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1225=[];
for i=1:length(M1region6day9)
    if M1region6day9(i,6)==-1
       a=find(s1225==M1region6day9(i,5));
       unbiased_currentoutcome_error_1225(a,:)=unbiased_currentoutcome1225(a,:);
    end
end
unbiased_currentoutcome_error_1225(all(unbiased_currentoutcome_error_1225==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1225=[];
for i=1:length(M1region6day9)
    if M1region6day9(i,6)==1
       a=find(s1225==M1region6day9(i,5));
       unbiased_currentoutcome_signcorrect_1225(a,:)=unbiased_currentoutcome1225(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1225(all(unbiased_currentoutcome_signcorrect_1225==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1225=[];
for i=1:length(M1region6day9)
    if M1region6day9(i,6)==1
       a=find(s1225==M1region6day9(i,5));
       unbiased_currentoutcome_correct_1225(a,:)=unbiased_currentoutcome1225(a,:);
    end
end
unbiased_currentoutcome_correct_1225(all(unbiased_currentoutcome_correct_1225==0,2),:) = [];


%%1226

load('L:\Monkey1\region6\20211226\proportions_of_cells_encoding_current_trials_outcome_20211226.mat');
iscell=readNPY('L:\Monkey1\region6\20211226\iscell.npy');
s1226=find(iscell(:,1)==1);
M1_region6_day10_4stages=union(union(union(M1region6stage1day10index,M1region6stage2day10index),M1region6stage3day10index),M1region6stage4day10index);
M1_region6_day10_0stage=setdiff(M1region6stage1day10diff_ratio_deltaF(:,1),M1_region6_day10_4stages);

for cell_num=1:length(M1_region6_day10_4stages)
    M1region6stage1day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage1day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))))-mean(M1region6stage1day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))));
    M1region6stage1day10_difference_struct=cell2mat(struct2cell(M1region6stage1day10_difference));
    
    M1region6stage2day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage2day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))))-mean(M1region6stage2day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))));
    M1region6stage2day10_difference_struct=cell2mat(struct2cell(M1region6stage2day10_difference));
    
    M1region6stage3day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage3day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))))-mean(M1region6stage3day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))));
    M1region6stage3day10_difference_struct=cell2mat(struct2cell(M1region6stage3day10_difference));
    
    M1region6stage4day10_difference.(sprintf('cell_%d',cell_num))=mean(M1region6stage4day10_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))))-mean(M1region6stage4day10_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region6_day10_4stages(cell_num))));
    M1region6stage4day10_difference_struct=cell2mat(struct2cell(M1region6stage4day10_difference));
end
M1region6day10=[M1region6stage1day10_difference_struct M1region6stage2day10_difference_struct M1region6stage3day10_difference_struct M1region6stage4day10_difference_struct M1_region6_day10_4stages];
for i=1:length(M1region6day10)
    
    if sum(M1region6day10(i,1:4)<0)>sum(M1region6day10(i,1:4)>0)
        M1region6day10(i,6)=-1;
    elseif sum(M1region6day10(i,1:4)<0)<sum(M1region6day10(i,1:4)>0)
        M1region6day10(i,6)=1;
    elseif sum(M1region6day10(i,1:4)<0)==sum(M1region6day10(i,1:4)>0)
        if abs(mean(M1region6day10(i,find(M1region6day10(i,1:4)<0))))>abs(mean(M1region6day10(i,find(M1region6day10(i,1:4)>0))))
            M1region6day10(i,6)=-1;
        elseif abs(mean(M1region6day10(i,find(M1region6day10(i,1:4)<0))))<abs(mean(M1region6day10(i,find(M1region6day10(i,1:4)>0))))
            M1region6day10(i,6)=1;
        end
    end
end
%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_1226=[];
for i=1:length(M1region6day10)
    if M1region6day10(i,6)==-1
       a=find(s1226==M1region6day10(i,5));
       unbiased_currentoutcome_signerror_1226(a,:)=-unbiased_currentoutcome1226(a,:);
    end
end
unbiased_currentoutcome_signerror_1226(all(unbiased_currentoutcome_signerror_1226==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_1226=[];
for i=1:length(M1region6day10)
    if M1region6day10(i,6)==-1
       a=find(s1226==M1region6day10(i,5));
       unbiased_currentoutcome_error_1226(a,:)=unbiased_currentoutcome1226(a,:);
    end
end
unbiased_currentoutcome_error_1226(all(unbiased_currentoutcome_error_1226==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_1226=[];
for i=1:length(M1region6day10)
    if M1region6day10(i,6)==1
       a=find(s1226==M1region6day10(i,5));
       unbiased_currentoutcome_signcorrect_1226(a,:)=unbiased_currentoutcome1226(a,:);
    end
end
unbiased_currentoutcome_signcorrect_1226(all(unbiased_currentoutcome_signcorrect_1226==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_1226=[];
for i=1:length(M1region6day10)
    if M1region6day10(i,6)==1
       a=find(s1226==M1region6day10(i,5));
       unbiased_currentoutcome_correct_1226(a,:)=unbiased_currentoutcome1226(a,:);
    end
end
unbiased_currentoutcome_correct_1226(all(unbiased_currentoutcome_correct_1226==0,2),:) = [];



%Monkey1_region7_day1

load('L:\Monkey1\region7\20220115\proportions_of_cells_encoding_current_trials_outcome_20220115.mat');
iscell=readNPY('L:\Monkey1\region7\20220115\iscell.npy');
s0115=find(iscell(:,1)==1);


M1_region7_day1_4stages=union(union(union(M1region7stage1day1index,M1region7stage2day1index),M1region7stage3day1index),M1region7stage4day1index);
M1_region7_day1_0stage=setdiff(M1region7stage1day1diff_ratio_deltaF(:,1),M1_region7_day1_4stages);


for cell_num=1:length(M1_region7_day1_4stages)
    M1region7stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))))-mean(M1region7stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))));
    M1region7stage1day1_difference_struct=cell2mat(struct2cell(M1region7stage1day1_difference));
    
    M1region7stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))))-mean(M1region7stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))));
    M1region7stage2day1_difference_struct=cell2mat(struct2cell(M1region7stage2day1_difference));
    
    M1region7stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))))-mean(M1region7stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))));
    M1region7stage3day1_difference_struct=cell2mat(struct2cell(M1region7stage3day1_difference));
    
    M1region7stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))))-mean(M1region7stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day1_4stages(cell_num))));
    M1region7stage4day1_difference_struct=cell2mat(struct2cell(M1region7stage4day1_difference)); 
end
M1region7day1=[M1region7stage1day1_difference_struct M1region7stage2day1_difference_struct M1region7stage3day1_difference_struct M1region7stage4day1_difference_struct M1_region7_day1_4stages];
for i=1:length(M1region7day1)
    
    if sum(M1region7day1(i,1:4)<0)>sum(M1region7day1(i,1:4)>0)
        M1region7day1(i,6)=-1;
    elseif sum(M1region7day1(i,1:4)<0)<sum(M1region7day1(i,1:4)>0)
        M1region7day1(i,6)=1;
    elseif sum(M1region7day1(i,1:4)<0)==sum(M1region7day1(i,1:4)>0)
        if abs(mean(M1region7day1(i,find(M1region7day1(i,1:4)<0))))>abs(mean(M1region7day1(i,find(M1region7day1(i,1:4)>0))))
            M1region7day1(i,6)=-1;
        elseif abs(mean(M1region7day1(i,find(M1region7day1(i,1:4)<0))))<abs(mean(M1region7day1(i,find(M1region7day1(i,1:4)>0))))
            M1region7day1(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0115=[];
for i=1:length(M1region7day1)
    if M1region7day1(i,6)==-1
       a=find(s0115==M1region7day1(i,5));
       unbiased_currentoutcome_signerror_0115(a,:)=-unbiased_currentoutcome0115(a,:);
    end
end
unbiased_currentoutcome_signerror_0115(all(unbiased_currentoutcome_signerror_0115==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0115=[];
for i=1:length(M1region7day1)
    if M1region7day1(i,6)==-1
       a=find(s0115==M1region7day1(i,5));
       unbiased_currentoutcome_error_0115(a,:)=unbiased_currentoutcome0115(a,:);
    end
end
unbiased_currentoutcome_error_0115(all(unbiased_currentoutcome_error_0115==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0115=[];
for i=1:length(M1region7day1)
    if M1region7day1(i,6)==1
       a=find(s0115==M1region7day1(i,5));
       unbiased_currentoutcome_signcorrect_0115(a,:)=unbiased_currentoutcome0115(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0115(all(unbiased_currentoutcome_signcorrect_0115==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0115=[];
for i=1:length(M1region7day1)
    if M1region7day1(i,6)==1
       a=find(s0115==M1region7day1(i,5));
       unbiased_currentoutcome_correct_0115(a,:)=unbiased_currentoutcome0115(a,:);
    end
end
unbiased_currentoutcome_correct_0115(all(unbiased_currentoutcome_correct_0115==0,2),:) = [];

%%0116

load('L:\Monkey1\region7\20220116\proportions_of_cells_encoding_current_trials_outcome_20220116.mat');
iscell=readNPY('L:\Monkey1\region7\20220116\iscell.npy');
s0116=find(iscell(:,1)==1);

M1_region7_day2_4stages=union(union(union(M1region7stage1day2index,M1region7stage2day2index),M1region7stage3day2index),M1region7stage4day2index);
M1_region7_day2_0stage=setdiff(M1region7stage1day2diff_ratio_deltaF(:,1),M1_region7_day2_4stages);

for cell_num=1:length(M1_region7_day2_4stages)
    M1region7stage1day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage1day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))))-mean(M1region7stage1day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))));
    M1region7stage1day2_difference_struct=cell2mat(struct2cell(M1region7stage1day2_difference));
    
    M1region7stage2day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage2day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))))-mean(M1region7stage2day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))));
    M1region7stage2day2_difference_struct=cell2mat(struct2cell(M1region7stage2day2_difference));
    
    M1region7stage3day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage3day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))))-mean(M1region7stage3day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))));
    M1region7stage3day2_difference_struct=cell2mat(struct2cell(M1region7stage3day2_difference));
    
    M1region7stage4day2_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage4day2_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))))-mean(M1region7stage4day2_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day2_4stages(cell_num))));
    M1region7stage4day2_difference_struct=cell2mat(struct2cell(M1region7stage4day2_difference));
end
M1region7day2=[M1region7stage1day2_difference_struct M1region7stage2day2_difference_struct M1region7stage3day2_difference_struct M1region7stage4day2_difference_struct M1_region7_day2_4stages];
for i=1:length(M1region7day2)
    
    if sum(M1region7day2(i,1:4)<0)>sum(M1region7day2(i,1:4)>0)
        M1region7day2(i,6)=-1;
    elseif sum(M1region7day2(i,1:4)<0)<sum(M1region7day2(i,1:4)>0)
        M1region7day2(i,6)=1;
    elseif sum(M1region7day2(i,1:4)<0)==sum(M1region7day2(i,1:4)>0)
        if abs(mean(M1region7day2(i,find(M1region7day2(i,1:4)<0))))>abs(mean(M1region7day2(i,find(M1region7day2(i,1:4)>0))))
            M1region7day2(i,6)=-1;
        elseif abs(mean(M1region7day2(i,find(M1region7day2(i,1:4)<0))))<abs(mean(M1region7day2(i,find(M1region7day2(i,1:4)>0))))
            M1region7day2(i,6)=1;
        end
    end
end
%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0116=[];
for i=1:length(M1region7day2)
    if M1region7day2(i,6)==-1
       a=find(s0116==M1region7day2(i,5));
       unbiased_currentoutcome_signerror_0116(a,:)=-unbiased_currentoutcome0116(a,:);
    end
end
unbiased_currentoutcome_signerror_0116(all(unbiased_currentoutcome_signerror_0116==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0116=[];
for i=1:length(M1region7day2)
    if M1region7day2(i,6)==-1
       a=find(s0116==M1region7day2(i,5));
       unbiased_currentoutcome_error_0116(a,:)=unbiased_currentoutcome0116(a,:);
    end
end
unbiased_currentoutcome_error_0116(all(unbiased_currentoutcome_error_0116==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0116=[];
for i=1:length(M1region7day2)
    if M1region7day2(i,6)==1
       a=find(s0116==M1region7day2(i,5));
       unbiased_currentoutcome_signcorrect_0116(a,:)=unbiased_currentoutcome0116(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0116(all(unbiased_currentoutcome_signcorrect_0116==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0116=[];
for i=1:length(M1region7day2)
    if M1region7day2(i,6)==1
       a=find(s0116==M1region7day2(i,5));
       unbiased_currentoutcome_correct_0116(a,:)=unbiased_currentoutcome0116(a,:);
    end
end
unbiased_currentoutcome_correct_0116(all(unbiased_currentoutcome_correct_0116==0,2),:) = [];


%%0117

load('L:\Monkey1\region7\20220117\proportions_of_cells_encoding_current_trials_outcome_20220117.mat');
iscell=readNPY('L:\Monkey1\region7\20220117\iscell.npy');
s0117=find(iscell(:,1)==1);
M1_region7_day3_4stages=union(union(union(M1region7stage1day3index,M1region7stage2day3index),M1region7stage3day3index),M1region7stage4day3index);
M1_region7_day3_0stage=setdiff(M1region7stage1day3diff_ratio_deltaF(:,1),M1_region7_day3_4stages);

for cell_num=1:length(M1_region7_day3_4stages)
    M1region7stage1day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage1day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))))-mean(M1region7stage1day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))));
    M1region7stage1day3_difference_struct=cell2mat(struct2cell(M1region7stage1day3_difference));
    
    M1region7stage2day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage2day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))))-mean(M1region7stage2day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))));
    M1region7stage2day3_difference_struct=cell2mat(struct2cell(M1region7stage2day3_difference));
    
    M1region7stage3day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage3day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))))-mean(M1region7stage3day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))));
    M1region7stage3day3_difference_struct=cell2mat(struct2cell(M1region7stage3day3_difference));
    
    M1region7stage4day3_difference.(sprintf('cell_%d',cell_num))=mean(M1region7stage4day3_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))))-mean(M1region7stage4day3_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region7_day3_4stages(cell_num))));
    M1region7stage4day3_difference_struct=cell2mat(struct2cell(M1region7stage4day3_difference));
end
M1region7day3=[M1region7stage1day3_difference_struct M1region7stage2day3_difference_struct M1region7stage3day3_difference_struct M1region7stage4day3_difference_struct M1_region7_day3_4stages];
for i=1:length(M1region7day3)
    
    if sum(M1region7day3(i,1:4)<0)>sum(M1region7day3(i,1:4)>0)
        M1region7day3(i,6)=-1;
    elseif sum(M1region7day3(i,1:4)<0)<sum(M1region7day3(i,1:4)>0)
        M1region7day3(i,6)=1;
    elseif sum(M1region7day3(i,1:4)<0)==sum(M1region7day3(i,1:4)>0)
        if abs(mean(M1region7day3(i,find(M1region7day3(i,1:4)<0))))>abs(mean(M1region7day3(i,find(M1region7day3(i,1:4)>0))))
            M1region7day3(i,6)=-1;
        elseif abs(mean(M1region7day3(i,find(M1region7day3(i,1:4)<0))))<abs(mean(M1region7day3(i,find(M1region7day3(i,1:4)>0))))
            M1region7day3(i,6)=1;
        end
    end
end

%%sign_error_types_unbiased_currentoutcome
unbiased_currentoutcome_signerror_0117=[];
for i=1:length(M1region7day3)
    if M1region7day3(i,6)==-1
       a=find(s0117==M1region7day3(i,5));
       unbiased_currentoutcome_signerror_0117(a,:)=-unbiased_currentoutcome0117(a,:);
    end
end
unbiased_currentoutcome_signerror_0117(all(unbiased_currentoutcome_signerror_0117==0,2),:) = [];
%%error_types_unbiased_currentoutcome
unbiased_currentoutcome_error_0117=[];
for i=1:length(M1region7day3)
    if M1region7day3(i,6)==-1
       a=find(s0117==M1region7day3(i,5));
       unbiased_currentoutcome_error_0117(a,:)=unbiased_currentoutcome0117(a,:);
    end
end
unbiased_currentoutcome_error_0117(all(unbiased_currentoutcome_error_0117==0,2),:) = [];


%%sign_correct_types_unbiased_currentoutcome
unbiased_currentoutcome_signcorrect_0117=[];
for i=1:length(M1region7day3)
    if M1region7day3(i,6)==1
       a=find(s0117==M1region7day3(i,5));
       unbiased_currentoutcome_signcorrect_0117(a,:)=unbiased_currentoutcome0117(a,:);
    end
end
unbiased_currentoutcome_signcorrect_0117(all(unbiased_currentoutcome_signcorrect_0117==0,2),:) = [];

%%correct_types_unbiased_currentoutcome
unbiased_currentoutcome_correct_0117=[];
for i=1:length(M1region7day3)
    if M1region7day3(i,6)==1
       a=find(s0117==M1region7day3(i,5));
       unbiased_currentoutcome_correct_0117(a,:)=unbiased_currentoutcome0117(a,:);
    end
end
unbiased_currentoutcome_correct_0117(all(unbiased_currentoutcome_correct_0117==0,2),:) = [];


%Monkey2-region1%0426











unbiased_currentoutcome_wrong=[unbiased_currentoutcome_error_1108;unbiased_currentoutcome_error_1109;unbiased_currentoutcome_error_1110;unbiased_currentoutcome_error_1111;unbiased_currentoutcome_error_1112;unbiased_currentoutcome_error_1113;unbiased_currentoutcome_error_1115;unbiased_currentoutcome_error_1116;unbiased_currentoutcome_error_1117;unbiased_currentoutcome_error_1118;unbiased_currentoutcome_error_1119;unbiased_currentoutcome_error_1122;unbiased_currentoutcome_error_1120;unbiased_currentoutcome_error_1121;unbiased_currentoutcome_error_1123;unbiased_currentoutcome_error_1124;unbiased_currentoutcome_error_1125;unbiased_currentoutcome_error_1126;unbiased_currentoutcome_error_1127;unbiased_currentoutcome_error_1129;unbiased_currentoutcome_error_1201;unbiased_currentoutcome_error_1202;unbiased_currentoutcome_error_1203;unbiased_currentoutcome_error_1204;unbiased_currentoutcome_error_1217;unbiased_currentoutcome_error_1218;unbiased_currentoutcome_error_1219;unbiased_currentoutcome_error_1220;unbiased_currentoutcome_error_1221;unbiased_currentoutcome_error_1222;unbiased_currentoutcome_error_1223;unbiased_currentoutcome_error_1224;unbiased_currentoutcome_error_1225;unbiased_currentoutcome_error_1226;unbiased_currentoutcome_error_0115;unbiased_currentoutcome_error_0116;unbiased_currentoutcome_error_0117;];

unbiased_currentoutcome_correct=[unbiased_currentoutcome_correct_1108;unbiased_currentoutcome_correct_1109;unbiased_currentoutcome_correct_1110;unbiased_currentoutcome_correct_1111;unbiased_currentoutcome_correct_1112;unbiased_currentoutcome_correct_1113;unbiased_currentoutcome_correct_1115;unbiased_currentoutcome_correct_1116;unbiased_currentoutcome_correct_1117;unbiased_currentoutcome_correct_1118;unbiased_currentoutcome_correct_1119;unbiased_currentoutcome_correct_1122;unbiased_currentoutcome_correct_1120;unbiased_currentoutcome_correct_1121;unbiased_currentoutcome_correct_1123;unbiased_currentoutcome_correct_1124;unbiased_currentoutcome_correct_1125;unbiased_currentoutcome_correct_1126;unbiased_currentoutcome_correct_1127;unbiased_currentoutcome_correct_1129;unbiased_currentoutcome_correct_1201;unbiased_currentoutcome_correct_1202;unbiased_currentoutcome_correct_1203;unbiased_currentoutcome_correct_1204;unbiased_currentoutcome_correct_1217;unbiased_currentoutcome_correct_1218;unbiased_currentoutcome_correct_1219;unbiased_currentoutcome_correct_1220;unbiased_currentoutcome_correct_1221;unbiased_currentoutcome_correct_1222;unbiased_currentoutcome_correct_1223;unbiased_currentoutcome_correct_1224;unbiased_currentoutcome_correct_1225;unbiased_currentoutcome_correct_1226;unbiased_currentoutcome_correct_0115;unbiased_currentoutcome_correct_0116;unbiased_currentoutcome_correct_0117;];

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

6/7.4
