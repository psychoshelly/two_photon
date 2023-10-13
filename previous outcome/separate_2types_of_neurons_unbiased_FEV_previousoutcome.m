


load('L:\Monkey1\region1\20211108\stim_markers_cue_previouscorrectwrongcurrenttrialcon1con2_20211108.mat');
bh=mlread('L:\Monkey1\region1\20211108\HH_7a_socialcue_20211108.bhv2');

%previous correct previous saccade left
previous_left_previouscorrect_cor=[];
previous_right_previouscorrect_wro=[];
previous_right_previouscorrect_cor=[];
previous_left_previouscorrect_wro=[];

if all_trials_num_cue(1,1)==1
    for i=2:length(all_trials_num_cue)
        
        if bh(all_trials_num_cue(i)-1).TrialError==0;
            if bh(all_trials_num_cue(i)-1).Condition==1
                previous_left_previouscorrect_cor=[previous_left_previouscorrect_cor all_trials_num_cue(i)];
            else
                previous_right_previouscorrect_cor=[previous_right_previouscorrect_cor all_trials_num_cue(i)];
            end
        end
    end
else
    for i=1:length(all_trials_num_cue)
        if bh(all_trials_num_cue(i)-1).TrialError==0;
            if bh(all_trials_num_cue(i)-1).Condition==1
                previous_left_previouscorrect_cor=[previous_left_previouscorrect_cor all_trials_num_cue(i)];
            else
                previous_right_previouscorrect_cor=[previous_right_previouscorrect_cor all_trials_num_cue(i)];
            end
        end
    end
end

    
if all_trials_num_cue_wrong(1,1)==1
    for i=2:length(all_trials_num_cue_wrong)
        
        if bh(all_trials_num_cue_wrong(i)-1).TrialError==0
           if bh(all_trials_num_cue_wrong(i)-1).Condition==1
                previous_left_previouscorrect_wro=[previous_left_previouscorrect_wro all_trials_num_cue_wrong(i)];
           else
               previous_right_previouscorrect_wro=[previous_right_previouscorrect_wro all_trials_num_cue_wrong(i)];
           end
        end
    end
else
    for i=1:length(all_trials_num_cue_wrong)
        if bh(all_trials_num_cue_wrong(i)-1).TrialError==0
           if bh(all_trials_num_cue_wrong(i)-1).Condition==1
                previous_left_previouscorrect_wro=[previous_left_previouscorrect_wro all_trials_num_cue_wrong(i)];
           else
               previous_right_previouscorrect_wro=[previous_right_previouscorrect_wro all_trials_num_cue_wrong(i)];
           end
        end
    end
end


previousleft_previouscorrect_cor=[];

    for i=1:length(previous_left_previouscorrect_cor)
    previousleft_previouscorrect_cor(i,:)=find(all_trials_num_cue==previous_left_previouscorrect_cor(1,i));
    end
    
 a1=frame_num_all_cue(previousleft_previouscorrect_cor');%preleft_previouscorrect
 
  
  
previousleft_previouscorrect_wro=[];

  for i=1:length(previous_left_previouscorrect_wro)
  previousleft_previouscorrect_wro(i,:)=find(all_trials_num_cue_wrong==previous_left_previouscorrect_wro(1,i));
  end
a2=frame_num_all_cue_wrong(previousleft_previouscorrect_wro');%preleft_previouscorrect
    
    

previousright_previouscorrect_wro=[];

  for i=1:length(previous_right_previouscorrect_wro)
  previousright_previouscorrect_wro(i,:)=find(all_trials_num_cue_wrong==previous_right_previouscorrect_wro(1,i));
  end
a3=frame_num_all_cue_wrong(previousright_previouscorrect_wro');%preright_previouscorrect
    

previousright_previouscorrect_cor=[];

    for i=1:length(previous_right_previouscorrect_cor)
    previousright_previouscorrect_cor(i,:)=find(all_trials_num_cue==previous_right_previouscorrect_cor(1,i));
    end
    
 a4=frame_num_all_cue(previousright_previouscorrect_cor');%preright_previouscorrect
 




    
    %previous wrong
previous_right_previouswrong_cor=[];
previous_left_previouswrong_wro=[];
previous_left_previouswrong_cor=[];
previous_right_previouswrong_wro=[];

if all_trials_num_cue(1,1)==1
    for i=2:length(all_trials_num_cue)
        
        if bh(all_trials_num_cue(i)-1).TrialError==1;
            if bh(all_trials_num_cue(i)-1).Condition==1
                previous_right_previouswrong_cor=[previous_right_previouswrong_cor all_trials_num_cue(i)];
            else
                previous_left_previouswrong_cor=[previous_left_previouswrong_cor all_trials_num_cue(i)];
            end
        end
    end
else
    for i=1:length(all_trials_num_cue)
        if bh(all_trials_num_cue(i)-1).TrialError==1;
            if bh(all_trials_num_cue(i)-1).Condition==1
                previous_right_previouswrong_cor=[previous_right_previouswrong_cor all_trials_num_cue(i)];
            else
                previous_left_previouswrong_cor=[previous_left_previouswrong_cor all_trials_num_cue(i)];
            end
        end
    end
end

    
if all_trials_num_cue_wrong(1,1)==1
    for i=2:length(all_trials_num_cue_wrong)
        
        if bh(all_trials_num_cue_wrong(i)-1).TrialError==1;
           if bh(all_trials_num_cue_wrong(i)-1).Condition==1
                previous_right_previouswrong_wro=[previous_right_previouswrong_wro all_trials_num_cue_wrong(i)];
           else
               previous_left_previouswrong_wro=[previous_left_previouswrong_wro all_trials_num_cue_wrong(i)];
           end
        end
    end
else
    for i=1:length(all_trials_num_cue_wrong)
        if bh(all_trials_num_cue_wrong(i)-1).TrialError==0;
           if bh(all_trials_num_cue_wrong(i)-1).Condition==1
                previous_right_previouswrong_wro=[previous_right_previouswrong_wro all_trials_num_cue_wrong(i)];
           else
               previous_left_previouswrong_wro=[previous_left_previouswrong_wro all_trials_num_cue_wrong(i)];
           end
        end
    end
end


previousleft_previouswrong_cor=[];

    for i=1:length(previous_left_previouswrong_cor)
    previousleft_previouswrong_cor(i,:)=find(all_trials_num_cue==previous_left_previouswrong_cor(1,i));
    end
    
 a5=frame_num_all_cue(previousleft_previouswrong_cor');%preleft_previouswrong
 
  
  
previousleft_previouswrong_wro=[];

  for i=1:length(previous_right_previouswrong_wro)
  previousleft_previouswrong_wro(i,:)=find(all_trials_num_cue_wrong==previous_right_previouswrong_wro(1,i));
  end
a6=frame_num_all_cue_wrong(previousleft_previouswrong_wro');%preleft_previouswrong
    
    

previousright_previouswrong_wro=[];

  for i=1:length(previous_left_previouswrong_wro)
  previousright_previouswrong_wro(i,:)=find(all_trials_num_cue_wrong==previous_left_previouswrong_wro(1,i));
  end
a7=frame_num_all_cue_wrong(previousright_previouswrong_wro');%preright_previouswrong
    

previousright_previouswrong_cor=[];

    for i=1:length(previous_left_previouswrong_cor)
    previousright_previouswrong_cor(i,:)=find(all_trials_num_cue==previous_left_previouswrong_cor(1,i));
    end
    
 a8=frame_num_all_cue(previousright_previouswrong_cor');%preright_previouscorrect
 




a9_left_previouscorrect=[a1 a2];%left_previouscorrect
a10_right_previouscorrect=[a3 a4];%right_previouscorrect
a12_left_previouswrong=[a5 a6];%left_previouswrong
a13_right_previouswrong=[a7 a8]%right_previouswrong

    %% balance correct and wrong
%   indx_rand_leftwrong=randi(length(a12_left_previouswrong),1,abs(length(a9_left_previouscorrect)-length(a12_left_previouswrong)));
%  rand_leftwrong=a12_left_previouswrong(indx_rand_leftwrong);
%  new_a12_left_previouswrong=[a12_left_previouswrong rand_leftwrong];
%  
%   indx_rand_rightwrong=randi(length(a13_right_previouswrong),1,abs(length(a10_right_previouscorrect)-length(a13_right_previouswrong)));
%  rand_rightwrong=a13_right_previouswrong(indx_rand_rightwrong);
%  new_a13_right_previouswrong=[a13_right_previouswrong rand_rightwrong];
%  


load('L:\Monkey1\region1\20211108\f_filter_1108.mat');
F_raw=readNPY('L:\Monkey1\region1\20211108\F.npy');
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
 s1108=find(iscell(:,1)==1);
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
 F=f_filter+new_F_raw;
F_cell_s=F(s1108(:),:);
cell_id=[1:size(F_cell_s,1)];
prev_t=20;
after_t=20;
%% left_previouscorrect
for cell_num = 1:length(cell_id)
   saccadeleft_previouscorrect.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a9_left_previouscorrect,F_cell_s, prev_t, after_t);
    saccade_left_previouscorrect(cell_num,:,:)=get_act_raw_trace(cell_num,a9_left_previouscorrect,F_cell_s, prev_t, after_t);
    for m=1:size(saccade_left_previouscorrect,3)-1
        saccade_leftcon_previouscorrect(cell_num,:,m)=mean(saccade_left_previouscorrect(cell_num,:,m:m+1),3);
    end
   seleft_previouscorrect.(sprintf('cell_%d',cell_num))=std(saccadeleft_previouscorrect.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(saccadeleft_previouscorrect.(sprintf('cell_%d',cell_num))));
end

%% left_previouswrong
for cell_num = 1:length(cell_id)
   saccadeleft_previouswrong.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a12_left_previouswrong,F_cell_s, prev_t, after_t);
    saccade_left_previouswrong(cell_num,:,:)=get_act_raw_trace(cell_num,a12_left_previouswrong,F_cell_s, prev_t, after_t);
    for m=1:size(saccade_left_previouswrong,3)-1
        saccade_leftcon_previouswrong(cell_num,:,m)=mean(saccade_left_previouswrong(cell_num,:,m:m+1),3); 
    end
    seleft_previouswrong.(sprintf('cell_%d',cell_num))=std(saccadeleft_previouswrong.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(saccadeleft_previouswrong.(sprintf('cell_%d',cell_num))));
end
for j=1:size(saccade_leftcon_previouscorrect,1)
    for i=1:size(saccade_leftcon_previouscorrect,3)
        saccade=[saccade_leftcon_previouscorrect(j,:,i) saccade_leftcon_previouswrong(j,:,i)]';
        out=[repmat(1,size(saccade_leftcon_previouscorrect,2),1);repmat(2,size(saccade_leftcon_previouswrong,2),1)];
         %[p,tb1]=anova1(saccade,out,'off');
        %previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i))={p,tb1};
         %cell_frame_variance(j,i)= previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}/ previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2};
         %unbiased_cell_frame_variance(j,i)=(previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}-(previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 3})*(previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4}))/(previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2}+previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4});
        unbiased_saccadeleft_previous_wrongcorrect(j,i) = calculate_PEV(saccade,out);
    end
end


%%right_previouswrong
for cell_num = 1:length(cell_id)
    saccaderight_previouswrong.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a13_right_previouswrong,F_cell_s, prev_t, after_t);
    saccade_right_previouswrong(cell_num,:,:)=get_act_raw_trace(cell_num,a13_right_previouswrong,F_cell_s, prev_t, after_t);
    for m=1:size(saccade_right_previouswrong,3)-1
        saccade_rightcon_previouswrong(cell_num,:,m)=mean(saccade_right_previouswrong(cell_num,:,m:m+1),3);
     
    end
    se_right_previouswrong.(sprintf('cell_%d',cell_num))=std(saccaderight_previouswrong.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(saccaderight_previouswrong.(sprintf('cell_%d',cell_num))));
end
%%right_previouscorrect
for cell_num = 1:length(cell_id)
    saccaderight_previouscorrect.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,a10_right_previouscorrect,F_cell_s, prev_t, after_t);
    saccade_right_previouscorrect(cell_num,:,:)=get_act_raw_trace(cell_num,a10_right_previouscorrect,F_cell_s, prev_t, after_t);
    for m=1:size(saccade_right_previouscorrect,3)-1
        saccade_rightcon_previouscorrect(cell_num,:,m)=mean(saccade_right_previouscorrect(cell_num,:,m:m+1),3);
    end
    se_right_previouscorrect.(sprintf('cell_%d',cell_num))=std(saccaderight_previouscorrect.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(saccaderight_previouscorrect.(sprintf('cell_%d',cell_num))));
end


for j=1:size(saccade_rightcon_previouswrong,1)
    for i=1:size(saccade_rightcon_previouswrong,3)
        saccade=[saccade_rightcon_previouscorrect(j,:,i) saccade_rightcon_previouswrong(j,:,i)]';
        out=[repmat(1,size(saccade_rightcon_previouscorrect,2),1);repmat(2,size(saccade_rightcon_previouswrong,2),1)];
         %[p,tb1]=anova1(saccade,out,'off');
        %previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i))={p,tb1};
         %cell_frame_variance(j,i)= previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}/ previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2};
         %unbiased_cell_frame_variance(j,i)=(previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}-(previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 3})*(previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4}))/(previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2}+previoustrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4});
        unbiased_saccaderight_previous_wrongcorrect(j,i) = calculate_PEV(saccade,out);
    end
end

for i=1:length(unbiased_saccaderight_previous_wrongcorrect)
    for j=1:size(unbiased_saccaderight_previous_wrongcorrect,2)
    unbiased_previousoutcome1108(i,j)=mean([unbiased_saccadeleft_previous_wrongcorrect(i,j),unbiased_saccaderight_previous_wrongcorrect(i,j)]);
    end
end

load('L:\Monkey1\region1\20211108\proportions_of_cells_encoding_previous_trials_outcome_20211108_newmethod.mat');
iscell=readNPY('L:\Monkey1\region1\20211108\iscell.npy');
s1108=find(iscell(:,1)==1);

M1_region1_day1_6stages=union(union(union(union(union(M1region1stage1day1index,M1region1stage2day1index),M1region1stage3day1index),M1region1stage4day1index),M1region1stage5day1index),M1region1stage6day1index);
M1_region1_day1_0stage=setdiff(M1region1stage1day1diff_ratio_deltaF(:,1),M1_region1_day1_6stages);


for cell_num=1:length(M1_region1_day1_6stages)
    M1region1stage1day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage1day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))))-mean(M1region1stage1day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))));
    M1region1stage1day1_difference_struct=cell2mat(struct2cell(M1region1stage1day1_difference));
    
    M1region1stage2day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage2day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))))-mean(M1region1stage2day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))));
    M1region1stage2day1_difference_struct=cell2mat(struct2cell(M1region1stage2day1_difference));
    
    M1region1stage3day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage3day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))))-mean(M1region1stage3day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))));
    M1region1stage3day1_difference_struct=cell2mat(struct2cell(M1region1stage3day1_difference));
    
    M1region1stage4day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage4day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))))-mean(M1region1stage4day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))));
    M1region1stage4day1_difference_struct=cell2mat(struct2cell(M1region1stage4day1_difference)); 
    
    M1region1stage5day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage5day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))))-mean(M1region1stage5day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))));
    M1region1stage5day1_difference_struct=cell2mat(struct2cell(M1region1stage5day1_difference)); 
    
     M1region1stage6day1_difference.(sprintf('cell_%d',cell_num))=mean(M1region1stage6day1_mean_ratio_deltaF_correctintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))))-mean(M1region1stage6day1_mean_ratio_deltaF_wrongintegration.(sprintf('cell_%d',M1_region1_day1_6stages(cell_num))));
    M1region1stage6day1_difference_struct=cell2mat(struct2cell(M1region1stage6day1_difference)); 
    
end
M1region1day1=[M1region1stage1day1_difference_struct M1region1stage2day1_difference_struct M1region1stage3day1_difference_struct M1region1stage4day1_difference_struct M1region1stage5day1_difference_struct M1region1stage6day1_difference_struct M1_region1_day1_6stages];


for i=1:length(M1region1day1)
    
    if sum(M1region1day1(i,1:6)<0)>sum(M1region1day1(i,1:6)>0)
        M1region1day1(i,8)=-1;
    elseif sum(M1region1day1(i,1:6)<0)<sum(M1region1day1(i,1:6)>0)
        M1region1day1(i,8)=1;
    elseif sum(M1region1day1(i,1:6)<0)==sum(M1region1day1(i,1:6)>0)
        if abs(mean(M1region1day1(i,find(M1region1day1(i,1:6)<0))))>abs(mean(M1region1day1(i,find(M1region1day1(i,1:6)>0))))
            M1region1day1(i,8)=-1;
        elseif abs(mean(M1region1day1(i,find(M1region1day1(i,1:6)<0))))<abs(mean(M1region1day1(i,find(M1region1day1(i,1:6)>0))))
            M1region1day1(i,8)=1;
        end
    end
end


%%sign_error_types_unbiased_previousoutcome
unbiased_previousoutcome_signerror_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,8)==-1
       a=find(s1108==M1region1day1(i,7));
       unbiased_previousoutcome_signerror_1108(a,:)=-unbiased_previousoutcome1108(a,:);
    end
end
unbiased_previousoutcome_signerror_1108(all(unbiased_previousoutcome_signerror_1108==0,2),:) = [];
%%error_types_unbiased_previousoutcome
unbiased_previousoutcome_error_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,8)==-1
       a=find(s1108==M1region1day1(i,7));
       unbiased_previousoutcome_error_1108(a,:)=unbiased_previousoutcome1108(a,:);
    end
end
unbiased_previousoutcome_error_1108(all(unbiased_previousoutcome_error_1108==0,2),:) = [];


%%sign_correct_types_unbiased_previousoutcome
unbiased_previousoutcome_signcorrect_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,8)==1
       a=find(s1108==M1region1day1(i,7));
       unbiased_previousoutcome_signcorrect_1108(a,:)=unbiased_previousoutcome1108(a,:);
    end
end
unbiased_previousoutcome_signcorrect_1108(all(unbiased_previousoutcome_signcorrect_1108==0,2),:) = [];

%%correct_types_unbiased_previousoutcome
unbiased_previousoutcome_correct_1108=[];
for i=1:length(M1region1day1)
    if M1region1day1(i,8)==1
       a=find(s1108==M1region1day1(i,7));
       unbiased_previousoutcome_correct_1108(a,:)=unbiased_previousoutcome1108(a,:);
    end
end
unbiased_previousoutcome_correct_1108(all(unbiased_previousoutcome_correct_1108==0,2),:) = [];


shadedErrorBar(([1:40]-21)/7.4,mean(unbiased_previousoutcome_error_1108(:,1:40),1),std(unbiased_previousoutcome_error_1108(:,1:40),1)./sqrt(length(unbiased_previousoutcome_error_1108(:,1:40))),'lineProps','r');
xline(0);
hold on
shadedErrorBar(([1:40]-21)/7.4,mean(unbiased_previousoutcome_correct_1108(:,1:40),1),std(unbiased_previousoutcome_correct_1108(:,1:40),1)./sqrt(length(unbiased_previousoutcome_correct_1108(:,1:40))),'lineProps','g');
ylim([0 0.05]);


% 
 for i=1:40
  [p,h]=ranksum(unbiased_previousoutcome_error_1108(:,i),unbiased_previousoutcome_correct_1108(:,i));
   results(1,i)=p;
   results(2,i)=h;
 end






