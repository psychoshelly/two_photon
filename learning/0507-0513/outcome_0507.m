%region3_0608
load('G:\0507-0513\20220507\stim_markers_learning_aligned_to_target_off_20220507.mat');
%% correct
prev_t=4;
after_t=16;
load('G:\0507-0513\20220507\suite2p\plane0\f_filter_0507.mat');
F_raw=readNPY('G:\0507-0513\20220507\suite2p\plane0\F.npy');
new_F_raw=repmat(mean(F_raw,2),1,size(F_raw,2));
F=f_filter+new_F_raw;
iscell=readNPY('G:\0507-0513\20220507\suite2p\plane0\iscell.npy');
s=find(iscell(:,1)==1);
s0507=s;
F_cell_s=F(s0507(:),:);
cell_id=[1:size(F_cell_s,1)];

bh=mlread('G:\0507-0513\20220507\xiaoliu_7a_SR_associated_220507.bhv2');
 a1_left_correct=[];
 a1_right_correct=[];
 a2_left_wrong=[];
 a2_right_wrong=[];
 a3_left_correct=[];
 a3_right_correct=[];
 a4_left_wrong=[];
 a4_right_wrong=[];

 for i=1:length(all_trials_num_targetoff)
     if bh(all_trials_num_targetoff(i)).TrialError==0;
         if all_conditions_targetoff(i)==1
             a1_left_correct=[a1_left_correct frame_num_all_targetoff(i)];
         else
             a1_right_correct=[a1_right_correct frame_num_all_targetoff(i)];
         end
     elseif bh(all_trials_num_targetoff(i)).TrialError==1;
         if all_conditions_targetoff(i)==1
             a2_right_wrong=[a2_right_wrong frame_num_all_targetoff(i)];
         else
             a2_left_wrong=[a2_left_wrong frame_num_all_targetoff(i)];
             
         end
     end
 end

 for i=1:length(all_trials_num_targetoff_wrong)
     if bh(all_trials_num_targetoff_wrong(i)).TrialError==0;
         if all_conditions_targetoff_wrong(i)==1
             a3_left_correct=[a3_left_correct frame_num_all_targetoff_wrong(i)];
         else
             a3_right_correct=[a3_right_correct frame_num_all_targetoff_wrong(i)];
         end
     elseif bh(all_trials_num_targetoff_wrong(i)).TrialError==1;
         if all_conditions_targetoff_wrong(i)==1
             a4_right_wrong=[a4_right_wrong frame_num_all_targetoff_wrong(i)];
         else
             a4_left_wrong=[a4_left_wrong frame_num_all_targetoff_wrong(i)];
             
         end
     end
 end
 
 left_correct=[a1_left_correct a3_left_correct];
 left_wrong=[a2_left_wrong  a4_left_wrong];
 right_correct=[a1_right_correct a3_right_correct];
 right_wrong=[a2_right_wrong a4_right_wrong];
 
 
%  
%  max=max([size(left_correct),size(left_wrong),size(right_correct),size(right_wrong)]);
%  if max==size(left_correct,2)
%  
%  indx_rand_leftwrong=randi(length(left_wrong),1,abs(max-length(left_wrong)));
%  rand_leftwrong=left_wrong(indx_rand_leftwrong);
%  new_leftwrong=[left_wrong rand_leftwrong];
%  
%   indx_rand_rightwrong=randi(length(right_wrong),1,abs(max-length(right_wrong)));
%  rand_rightwrong=right_wrong(indx_rand_rightwrong);
%  new_rightwrong=[right_wrong rand_rightwrong];
%  
%  new_leftcorrect=left_correct;
%    indx_rand_rightcorrect=randi(length(right_correct),1,abs(max-length(right_correct)));
%  rand_rightcorrect=right_correct(indx_rand_rightcorrect);
%  new_rightcorrect=[right_correct rand_rightcorrect];
%  
%  elseif max==size(right_correct,2)
%       indx_rand_leftwrong=randi(length(left_wrong),1,abs(max-length(left_wrong)));
%  rand_leftwrong=left_wrong(indx_rand_leftwrong);
%  new_leftwrong=[left_wrong rand_leftwrong];
%  
%   indx_rand_rightwrong=randi(length(right_wrong),1,abs(max-length(right_wrong)));
%  rand_rightwrong=right_wrong(indx_rand_rightwrong);
%  new_rightwrong=[right_wrong rand_rightwrong];
%  
%  new_rightcorrect=right_correct;
%    indx_rand_leftcorrect=randi(length(left_correct),1,abs(max-length(left_correct)));
%  rand_leftcorrect=left_correct(indx_rand_leftcorrect);
%  new_leftcorrect=[left_correct rand_leftcorrect];
%  elseif max==size(right_wrong,2)
%      new_rightwrong=right_wrong;
%      
%          indx_rand_leftwrong=randi(length(left_wrong),1,abs(max-length(left_wrong)));
%  rand_leftwrong=left_wrong(indx_rand_leftwrong);
%  new_leftwrong=[left_wrong rand_leftwrong];
%      
%       indx_rand_leftcorrect=randi(length(left_correct),1,abs(max-length(left_correct)));
%  rand_leftcorrect=left_correct(indx_rand_leftcorrect);
%  new_leftcorrect=[left_correct rand_leftcorrect];
%  
%  indx_rand_rightcorrect=randi(length(right_correct),1,abs(max-length(right_correct)));
%  rand_rightcorrect=right_correct(indx_rand_rightcorrect);
%  new_rightcorrect=[right_correct rand_rightcorrect];
%  
%  elseif max==size(left_wrong,2)
%      new_leftwrong=left_wrong;
%      
%          indx_rand_rightwrong=randi(length(right_wrong),1,abs(max-length(right_wrong)));
%  rand_rightwrong=right_wrong(indx_rand_rightwrong);
%  new_rightwrong=[right_wrong rand_rightwrong];
%      
%       indx_rand_leftcorrect=randi(length(left_correct),1,abs(max-length(left_correct)));
%  rand_leftcorrect=left_correct(indx_rand_leftcorrect);
%  new_leftcorrect=[left_correct rand_leftcorrect];
%  
%  indx_rand_rightcorrect=randi(length(right_correct),1,abs(max-length(right_correct)));
%  rand_rightcorrect=right_correct(indx_rand_rightcorrect);
%  new_rightcorrect=[right_correct rand_rightcorrect];
%      
%  end
 
%% currentcorrect_saccade_left

for cell_num = 1:length(cell_id)
    left_currentcorrect.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,left_correct,F_cell_s, prev_t, after_t);
    current_correct_left(cell_num,:,:)=get_act_raw_trace(cell_num,left_correct,F_cell_s, prev_t, after_t);
    for m=1:size(current_correct_left,3)-1
        currenttrial_correctleft(cell_num,:,m)=mean(current_correct_left(cell_num,:,m:m+1),3);
    end
    
    left_correctse.(sprintf('cell_%d',cell_num))=std(left_currentcorrect.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(left_currentcorrect.(sprintf('cell_%d',cell_num))));
end
%% currentwrong_saccade_left
for cell_num = 1:length(cell_id)
    left_currentwrong.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,left_wrong,F_cell_s, prev_t, after_t);
    current_wrong_left(cell_num,:,:)=get_act_raw_trace(cell_num,left_wrong,F_cell_s, prev_t, after_t);
    for m=1:size(current_wrong_left,3)-1
        currenttrial_wrongleft(cell_num,:,m)=mean(current_wrong_left(cell_num,:,m:m+1),3);
    end
    left_wrongse.(sprintf('cell_%d',cell_num))=std(left_currentwrong.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(left_currentwrong.(sprintf('cell_%d',cell_num))));
end


for j=1:size(currenttrial_correctleft,1)
    for i=1:size(currenttrial_correctleft,3)
        current_left=[currenttrial_correctleft(j,:,i) currenttrial_wrongleft(j,:,i)]';
        out=[repmat(1,size(currenttrial_correctleft,2),1);repmat(2,size(currenttrial_wrongleft,2),1)];
         %[p,tb1]=anova1(current_previouscorrect,out,'off');
        %currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i))={p,tb1};
         %cell_frame_variance(j,i)= currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}/ currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2};
         %unbiased_cell_frame_variance(j,i)=(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}-(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 3})*(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4}))/(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2}+currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4});
        unbiased_current_left(j,i) = calculate_PEV(current_left,out);
    end
end

%% currentcorrect_saccade_right
for cell_num = 1:length(cell_id)
    right_currentcorrect.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,right_correct,F_cell_s, prev_t, after_t);
    current_correct_right(cell_num,:,:)=get_act_raw_trace(cell_num,right_correct,F_cell_s, prev_t, after_t);
    for m=1:size(current_correct_right,3)-1
        currenttrial_correctright(cell_num,:,m)=mean(current_correct_right(cell_num,:,m:m+1),3);
    end
    
    right_correctse.(sprintf('cell_%d',cell_num))=std(right_currentcorrect.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(right_currentcorrect.(sprintf('cell_%d',cell_num))));
end

%% currentwrong_saccade_right

for cell_num = 1:length(cell_id)
    right_currentwrong.(sprintf('cell_%d',cell_num))=get_act_raw_trace(cell_num,right_wrong,F_cell_s, prev_t, after_t);
    current_wrong_right(cell_num,:,:)=get_act_raw_trace(cell_num,right_wrong,F_cell_s, prev_t, after_t);
    for m=1:size(current_wrong_right,3)-1
        currenttrial_wrongright(cell_num,:,m)=mean(current_wrong_right(cell_num,:,m:m+1),3);
    end
    right_wrongse.(sprintf('cell_%d',cell_num))=std(right_currentwrong.(sprintf('cell_%d',cell_num)),0,1)/sqrt(length(right_currentwrong.(sprintf('cell_%d',cell_num))));
end


for j=1:size(currenttrial_correctright,1)
    for i=1:size(currenttrial_correctright,3)
        current_right=[currenttrial_correctright(j,:,i) currenttrial_wrongright(j,:,i)]';
        out=[repmat(1,size(currenttrial_correctright,2),1);repmat(2,size(currenttrial_wrongright,2),1)];
         %[p,tb1]=anova1(current_previouscorrect,out,'off');
        %currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i))={p,tb1};
         %cell_frame_variance(j,i)= currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}/ currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2};
         %unbiased_cell_frame_variance(j,i)=(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 2}-(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{2, 3})*(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4}))/(currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{4, 2}+currenttrialoutcomeverify.(sprintf('cell_%dframe_%d',j,i)){1, 2}{3, 4});
        unbiased_current_right(j,i) = calculate_PEV(current_right,out);
    end
end
for i=1:length(unbiased_current_left)
    for j=1:size(unbiased_current_left,2)
    unbiased_currentoutcome_region3_0507(i,j)=mean([unbiased_current_left(i,j),unbiased_current_right(i,j)]);
    end
end

shadedErrorBar(([1:19]-3)/7.4,mean(unbiased_currentoutcome_region3_0507(:,2:20),1),std(unbiased_currentoutcome_region3_0507(:,2:20),1)./sqrt(length(unbiased_currentoutcome_region3_0507(:,2:20))),'lineProps','r');
xline(0);
ylim([0 0.06]);
% 
% 
% save('G:\0507-0513\20220507\unbiased_currentoutcome_region3_0507_raw.mat','unbiased_currentoutcome_region3_0507');


% load('F:\0608-0615_same_neurons\0608\proportions_of_cells_encoding_current_trials_outcome_20220608.mat');
% 
% for i=1:length(M2region3day1)
%     if M2region3day1(i,6)==-1
%        a=find(s0608==M2region3day1(i,5));
%        unbiased_currentoutcome_region3_0608(a,:)=-unbiased_currentoutcome_region3_0608(a,:);
%     end
% end

load('G:\0507-0513\20220507\judge_the_types_of_neurons_on_each_frame_20220507.mat');
for i=1:length(s0507)
    for j=36:size(M2region3day1_difference,2)
        if M2region3day1_difference(i,j)<0
            unbiased_currentoutcome_region3_0507(i,j-34)=-unbiased_currentoutcome_region3_0507(i,j-34);
        end
    end
end
   

unbiased_currentoutcome_meanvalue_region3_0507=mean(unbiased_currentoutcome_region3_0507(:,5:20),2);
unbiased_currentoutcome_meanvalue_region3_0507(:,2)=s0507;
unbiased_currentoutcome_meanvalue_region3_0507(:,3)=[4+1,0+1,16+1,6+1,31+1,10+1,11+1,8+1,2+1,1+1,25+1,3+1,32+1,44+1,22+1,35+1,15+1,12+1,27+1,26+1,20+1,18+1,50+1,51+1,9+1,17+1,38+1,19+1,5+1,21+1,13+1,42+1,45+1,58+1,56+1,49+1,60+1,87+1,23+1,65+1,105+1,24+1,41+1,33+1,47+1,52+1,78+1,138+1,55+1,43+1,179+1,99+1,63+1,224+1,143+1,29+1,172+1,62+1,40+1,57+1,242+1,64+1,48+1,81+1,46+1,101+1,14+1,61+1,72+1,109+1,37+1,162+1,102+1,54+1,216+1,28+1,157+1,196+1,200+1,121+1,155+1,88+1,173+1,229+1,110+1,219+1,189+1,69+1,137+1,127+1,111+1,149+1,67+1,93+1,107+1,139+1,129+1,171+1,161+1,190+1,151+1,182+1,188+1,168+1,124+1,86+1,145+1,140+1,164+1,214+1,120+1,174+1,163+1,217+1,183+1,98+1,82+1,181+1,167+1,7+1,209+1,156+1,205+1,134+1,251+1,112+1];

unbiased_currentoutcome_meanvalue_region3_0507(:,4)=[1+1,2+1,36+1,8+1,18+1,15+1,55+1,9+1,3+1,0+1,12+1,23+1,7+1,13+1,194+1,79+1,30+1,6+1,21+1,26+1,31+1,86+1,33+1,35+1,25+1,40+1,44+1,42+1,4+1,37+1,20+1,22+1,32+1,59+1,41+1,200+1,77+1,117+1,28+1,60+1,82+1,62+1,34+1,56+1,45+1,57+1,123+1,156+1,24+1,111+1,205+1,170+1,64+1,153+1,115+1,38+1,88+1,97+1,17+1,75+1,46+1,101+1,83+1,76+1,51+1,232+1,85+1,710+1,132+1,108+1,49+1,188+1,190+1,47+1,210+1,39+1,80+1,164+1,98+1,112+1,89+1,94+1,96+1,73+1,133+1,207+1,121+1,110+1,177+1,186+1,81+1,99+1,58+1,43+1,107+1,103+1,138+1,197+1,118+1,198+1,78+1,130+1,160+1,423+1,180+1,84+1,106+1,146+1,61+1,219+1,269+1,176+1,360+1,297+1,183+1,72+1,52+1,467+1,212+1,10+1,498+1,69+1,104+1,92+1,234+1,102+1];

unbiased_currentoutcome_meanvalue_region3_0507(:,5)=[2+1,3+1,69+1,12+1,11+1,35+1,13+1,5+1,0+1,1+1,19+1,17+1,15+1,26+1,34+1,6+1,29+1,4+1,30+1,10+1,74+1,16+1,68+1,20+1,22+1,25+1,47+1,38+1,8+1,24+1,18+1,32+1,14+1,43+1,31+1,171+1,49+1,281+1,37+1,180+1,205+1,23+1,41+1,60+1,55+1,53+1,398+1,70+1,33+1,106+1,213+1,211+1,64+1,154+1,66+1,54+1,90+1,122+1,27+1,186+1,141+1,97+1,260+1,73+1,103+1,89+1,48+1,28+1,78+1,121+1,65+1,107+1,142+1,83+1,85+1,206+1,51+1,218+1,424+1,101+1,102+1,201+1,57+1,76+1,214+1,179+1,115+1,63+1,95+1,79+1,61+1,92+1,110+1,88+1,86+1,58+1,149+1,183+1,151+1,313+1,59+1,116+1,72+1,162+1,87+1,56+1,125+1,117+1,50+1,272+1,265+1,204+1,429+1,321+1,135+1,45+1,36+1,306+1,170+1,9+1,217+1,46+1,261+1,62+1,160+1,128+1];

    
unbiased_currentoutcome_meanvalue_region3_0507(:,6)=[6+1,0+1,19+1,4+1,16+1,8+1,39+1,7+1,5+1,2+1,59+1,21+1,1+1,9+1,17+1,18+1,14+1,3+1,61+1,27+1,35+1,42+1,47+1,15+1,22+1,26+1,40+1,43+1,20+1,32+1,33+1,25+1,41+1,49+1,82+1,144+1,141+1,220+1,46+1,81+1,68+1,28+1,53+1,177+1,79+1,55+1,60+1,157+1,11+1,138+1,87+1,169+1,38+1,132+1,48+1,175+1,69+1,115+1,29+1,71+1,77+1,145+1,122+1,104+1,65+1,89+1,66+1,31+1,105+1,112+1,74+1,96+1,263+1,135+1,88+1,163+1,58+1,155+1,75+1,162+1,146+1,266+1,100+1,93+1,172+1,114+1,84+1,108+1,247+1,97+1,44+1,67+1,62+1,90+1,70+1,142+1,140+1,438+1,171+1,113+1,131+1,143+1,117+1,202+1,121+1,156+1,106+1,86+1,52+1,388+1,260+1,243+1,302+1,271+1,190+1,36+1,24+1,339+1,241+1,13+1,405+1,57+1,133+1,34+1,228+1,118+1];

unbiased_currentoutcome_meanvalue_region3_0507(:,7)=[5+1,0+1,7+1,10+1,24+1,16+1,6+1,11+1,4+1,1+1,38+1,15+1,8+1,12+1,9+1,21+1,22+1,2+1,70+1,35+1,23+1,19+1,32+1,20+1,34+1,26+1,98+1,40+1,18+1,14+1,151+1,17+1,33+1,43+1,65+1,80+1,128+1,360+1,60+1,78+1,99+1,25+1,52+1,64+1,141+1,68+1,58+1,186+1,13+1,165+1,75+1,120+1,77+1,146+1,47+1,149+1,74+1,109+1,27+1,72+1,39+1,92+1,177+1,113+1,90+1,251+1,86+1,49+1,207+1,270+1,83+1,140+1,335+1,62+1,101+1,107+1,37+1,144+1,66+1,54+1,45+1,293+1,81+1,29+1,243+1,158+1,59+1,153+1,132+1,84+1,46+1,44+1,96+1,155+1,41+1,106+1,61+1,224+1,159+1,135+1,73+1,164+1,105+1,219+1,115+1,133+1,79+1,42+1,87+1,239+1,331+1,283+1,148+1,340+1,302+1,30+1,31+1,323+1,212+1,3+1,279+1,67+1,119+1,28+1,202+1,166+1];

unbiased_currentoutcome_meanvalue_region3_0507(:,8)=[17+1,15+1,0+1,5+1,27+1,18+1,12+1,16+1,11+1,7+1,22+1,14+1,4+1,9+1,3+1,20+1,35+1,1+1,69+1,62+1,25+1,39+1,55+1,10+1,31+1,54+1,59+1,21+1,29+1,8+1,65+1,73+1,48+1,56+1,86+1,66+1,106+1,495+1,71+1,50+1,72+1,6+1,121+1,98+1,176+1,42+1,90+1,91+1,2+1,96+1,149+1,195+1,26+1,120+1,80+1,82+1,81+1,181+1,51+1,107+1,33+1,152+1,105+1,117+1,30+1,154+1,24+1,214+1,165+1,254+1,49+1,68+1,194+1,77+1,52+1,225+1,75+1,177+1,43+1,174+1,101+1,274+1,166+1,19+1,301+1,159+1,110+1,78+1,244+1,118+1,64+1,23+1,133+1,173+1,100+1,87+1,199+1,185+1,387+1,138+1,141+1,178+1,102+1,296+1,405+1,142+1,70+1,76+1,108+1,216+1,266+1,213+1,61+1,124+1,308+1,47+1,45+1,299+1,162+1,13+1,468+1,88+1,240+1,41+1,129+1,168+1];


unbiased_currentoutcome_meanvalue_sort_region3_0507=sortrows(unbiased_currentoutcome_meanvalue_region3_0507,[1],'descend');

 save('G:\0507-0513\20220507\unbiased_currentoutcome_region3_0507.mat','unbiased_currentoutcome_meanvalue_sort_region3_0507');
for i=1:length(unbiased_currentoutcome_meanvalue_sort_region3_0507)
        unbiased_FEV_sort(i,:)=unbiased_currentoutcome_region3_0507(find(s0507==unbiased_currentoutcome_meanvalue_sort_region3_0507(i,2)),:);
end

h=heatmap(unbiased_FEV_sort(:,2:20),'Colormap',jet);
grid off;
h.ColorLimits=[-0.05 0.05];


% h=heatmap(unbiased_FEV_sort(50:70,2:20),'Colormap',jet);
% grid off;
% h.ColorLimits=[-0.05 0.05];



