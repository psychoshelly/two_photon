
%0507-0513
%% 0507
bh_file = mlread('G:\0507-0513\20220507\xiaoliu_7a_SR_associated_220507.bhv2');
bh_code_cue = 25;
bh_code_target=35;
trial_err = 0;
choose_error=1;
block=1;
all_trial_without_fixation_break=[];
all_trial_without_fixation_break_error=[];
for i=1:length(bh_file)
    if ismember(trial_err,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)||ismember(choose_error,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)
        all_trial_without_fixation_break = [all_trial_without_fixation_break i];
        all_trial_without_fixation_break_error=[all_trial_without_fixation_break_error bh_file(i).TrialError];
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[~,n]=size(all_trial_without_fixation_break_error);
accuracy_matrix=[];
dynamic_operator=all_trial_without_fixation_break_error;
for step= 1:floor((n-100)/20)
    box=dynamic_operator(1:100);
    correct_num=sum(box(:)==0);
    wrong_num=sum(box(:)==1);
    accuracy=(correct_num)/100;
    accuracy_matrix=[accuracy_matrix accuracy];
    dynamic_operator(:,1:20)=[];
end
 correct_num=sum(dynamic_operator(:)==0);
   wrong_num=sum(dynamic_operator(:)==1);
   accuracy=(correct_num)/(100+mod((n-100),20));
   accuracy_matrix=[accuracy_matrix accuracy];
   mean_accuracy_matrix_day1=mean(accuracy_matrix);
   
   %% 0617
   
   bh_file = mlread('G:\0507-0513\20220508\xiaoliu_7a_SR_associated_220508.bhv2');
bh_code_cue = 25;
bh_code_target=35;
trial_err = 0;
choose_error=1;
block=1;
all_trial_without_fixation_break=[];
all_trial_without_fixation_break_error=[];
for i=1:length(bh_file)
    if ismember(trial_err,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)||ismember(choose_error,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)
        all_trial_without_fixation_break = [all_trial_without_fixation_break i];
        all_trial_without_fixation_break_error=[all_trial_without_fixation_break_error bh_file(i).TrialError];
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[~,n]=size(all_trial_without_fixation_break_error);
accuracy_matrix=[];
dynamic_operator=all_trial_without_fixation_break_error;
for step= 1:floor((n-100)/20)
    box=dynamic_operator(1:100);
    correct_num=sum(box(:)==0);
    wrong_num=sum(box(:)==1);
    accuracy=(correct_num)/100;
    accuracy_matrix=[accuracy_matrix accuracy];
    dynamic_operator(:,1:20)=[];
end
 correct_num=sum(dynamic_operator(:)==0);
   wrong_num=sum(dynamic_operator(:)==1);
   accuracy=(correct_num)/(100+mod((n-100),20));
   accuracy_matrix=[accuracy_matrix accuracy];
   mean_accuracy_matrix_day2=mean(accuracy_matrix);
   
   %% 0618
   
  bh_file = mlread('G:\0507-0513\20220509\xiaoliu_7a_SR_associated_220509.bhv2');
bh_code_cue = 25;
bh_code_target=35;
trial_err = 0;
choose_error=1;
block=1;
all_trial_without_fixation_break=[];
all_trial_without_fixation_break_error=[];
for i=1:length(bh_file)
    if ismember(trial_err,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)||ismember(choose_error,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)
        all_trial_without_fixation_break = [all_trial_without_fixation_break i];
        all_trial_without_fixation_break_error=[all_trial_without_fixation_break_error bh_file(i).TrialError];
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[~,n]=size(all_trial_without_fixation_break_error);
accuracy_matrix=[];
dynamic_operator=all_trial_without_fixation_break_error;
for step= 1:floor((n-100)/20)
    box=dynamic_operator(1:100);
    correct_num=sum(box(:)==0);
    wrong_num=sum(box(:)==1);
    accuracy=(correct_num)/100;
    accuracy_matrix=[accuracy_matrix accuracy];
    dynamic_operator(:,1:20)=[];
end
 correct_num=sum(dynamic_operator(:)==0);
   wrong_num=sum(dynamic_operator(:)==1);
   accuracy=(correct_num)/(100+mod((n-100),20));
   accuracy_matrix=[accuracy_matrix accuracy];
   mean_accuracy_matrix_day3=mean(accuracy_matrix);
   
   %% 0619
    bh_file = mlread('G:\0507-0513\20220510\xiaoliu_7a_SR_associated_220510_02.bhv2');
bh_code_cue = 25;
bh_code_target=35;
trial_err = 0;
choose_error=1;
block=1;
all_trial_without_fixation_break=[];
all_trial_without_fixation_break_error=[];
for i=1:length(bh_file)
    if ismember(trial_err,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)||ismember(choose_error,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)
        all_trial_without_fixation_break = [all_trial_without_fixation_break i];
        all_trial_without_fixation_break_error=[all_trial_without_fixation_break_error bh_file(i).TrialError];
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[~,n]=size(all_trial_without_fixation_break_error);
accuracy_matrix=[];
dynamic_operator=all_trial_without_fixation_break_error;
for step= 1:floor((n-100)/20)
    box=dynamic_operator(1:100);
    correct_num=sum(box(:)==0);
    wrong_num=sum(box(:)==1);
    accuracy=(correct_num)/100;
    accuracy_matrix=[accuracy_matrix accuracy];
    dynamic_operator(:,1:20)=[];
end
 correct_num=sum(dynamic_operator(:)==0);
   wrong_num=sum(dynamic_operator(:)==1);
   accuracy=(correct_num)/(100+mod((n-100),20));
   accuracy_matrix=[accuracy_matrix accuracy];
   mean_accuracy_matrix_day4=mean(accuracy_matrix);
   
   
   %% 0620
bh_file = mlread('G:\0507-0513\20220511\xiaoliu_7a_SR_associated_220511.bhv2');
bh_code_cue = 25;
bh_code_target=35;
trial_err = 0;
choose_error=1;
block=1;
all_trial_without_fixation_break=[];
all_trial_without_fixation_break_error=[];
for i=1:length(bh_file)
    if ismember(trial_err,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)||ismember(choose_error,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)
        all_trial_without_fixation_break = [all_trial_without_fixation_break i];
        all_trial_without_fixation_break_error=[all_trial_without_fixation_break_error bh_file(i).TrialError];
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[~,n]=size(all_trial_without_fixation_break_error);
accuracy_matrix=[];
dynamic_operator=all_trial_without_fixation_break_error;
for step= 1:floor((n-100)/20)
    box=dynamic_operator(1:100);
    correct_num=sum(box(:)==0);
    wrong_num=sum(box(:)==1);
    accuracy=(correct_num)/100;
    accuracy_matrix=[accuracy_matrix accuracy];
    dynamic_operator(:,1:20)=[];
end
 correct_num=sum(dynamic_operator(:)==0);
   wrong_num=sum(dynamic_operator(:)==1);
   accuracy=(correct_num)/(100+mod((n-100),20));
   accuracy_matrix=[accuracy_matrix accuracy];
   mean_accuracy_matrix_day5=mean(accuracy_matrix);
   
   %% 0621
   bh_file = mlread('G:\0507-0513\20220512\xiaoliu_7a_SR_associated_220512.bhv2');
bh_code_cue = 25;
bh_code_target=35;
trial_err = 0;
choose_error=1;
block=1;
all_trial_without_fixation_break=[];
all_trial_without_fixation_break_error=[];
for i=1:length(bh_file)
    if ismember(trial_err,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)||ismember(choose_error,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)
        all_trial_without_fixation_break = [all_trial_without_fixation_break i];
        all_trial_without_fixation_break_error=[all_trial_without_fixation_break_error bh_file(i).TrialError];
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[~,n]=size(all_trial_without_fixation_break_error);
accuracy_matrix=[];
dynamic_operator=all_trial_without_fixation_break_error;
for step= 1:floor((n-100)/20)
    box=dynamic_operator(1:100);
    correct_num=sum(box(:)==0);
    wrong_num=sum(box(:)==1);
    accuracy=(correct_num)/100;
    accuracy_matrix=[accuracy_matrix accuracy];
    dynamic_operator(:,1:20)=[];
end
 correct_num=sum(dynamic_operator(:)==0);
   wrong_num=sum(dynamic_operator(:)==1);
   accuracy=(correct_num)/(100+mod((n-100),20));
   accuracy_matrix=[accuracy_matrix accuracy];
   mean_accuracy_matrix_day6=mean(accuracy_matrix);
   
   %% 0622
   bh_file = mlread('G:\0507-0513\20220513\xiaoliu_7a_SR_associated_220513.bhv2');
bh_code_cue = 25;
bh_code_target=35;
trial_err = 0;
choose_error=1;
block=1;
all_trial_without_fixation_break=[];
all_trial_without_fixation_break_error=[];
for i=1:length(bh_file)
    if ismember(trial_err,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)||ismember(choose_error,bh_file(i).TrialError)&ismember(block,bh_file(i).Block)
        all_trial_without_fixation_break = [all_trial_without_fixation_break i];
        all_trial_without_fixation_break_error=[all_trial_without_fixation_break_error bh_file(i).TrialError];
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[~,n]=size(all_trial_without_fixation_break_error);
accuracy_matrix=[];
dynamic_operator=all_trial_without_fixation_break_error;
for step= 1:floor((n-100)/20)
    box=dynamic_operator(1:100);
    correct_num=sum(box(:)==0);
    wrong_num=sum(box(:)==1);
    accuracy=(correct_num)/100;
    accuracy_matrix=[accuracy_matrix accuracy];
    dynamic_operator(:,1:20)=[];
end
 correct_num=sum(dynamic_operator(:)==0);
   wrong_num=sum(dynamic_operator(:)==1);
   accuracy=(correct_num)/(100+mod((n-100),20));
   accuracy_matrix=[accuracy_matrix accuracy];
   mean_accuracy_matrix_day7=mean(accuracy_matrix);
   
plot([1:7],[ mean_accuracy_matrix_day1, mean_accuracy_matrix_day2, mean_accuracy_matrix_day3, mean_accuracy_matrix_day4, mean_accuracy_matrix_day5, mean_accuracy_matrix_day6, mean_accuracy_matrix_day7],'-*b','LineWidth',1);
xline(2,'--k');
ylim([0.4 1]);
