% this script finds the frame index of the stimulus onset and save that
% into roi data after roi detection
% the correct way to use this program is (ezcalcium) roi detection --> this
% script --> (ezcalcium) roi refinement

% define variables here
Mdir = 'L:\Monkey2\region8\20220630\'; %dir that contains nev, ns2, and ccf
bh_file = 'L:\Monkey2\region8\20220630\xiaoliu_7a_SR_associated_220630_02.bhv2'; % file path of bhv file
packDir = fileparts(Mdir);
fn = dir([packDir '/*.nev']);


fileNEV = fullfile(fn.folder,fn.name);
fn = dir([packDir '/*.ns2']);
fileNS = fullfile(fn.folder,fn.name);
bh_code_cue = 25;
bh_code_target=35;
trial_err = 0;
trial_err_wrong = 1;
%for ezcalcium 
%mcor_file = '/Users/xuanyuwu/Documents/PKU_lab/20210126/Image_001_001_10k12k_mcor.mat';
%for suite2p
 markers = 'L:\Monkey2\region8\20220630\stim_markers_learning_currenttrialcorrectwrongcon1con2_20220630.mat';

disp('reading bhv file...');
bh=mlread(bh_file);

disp('reading nev file...')
a1=openNEV(fileNEV,'nosave','nomat');
disp('reading ns2 file...')
as1=openNSx(fileNS);


%% correct

bh25_ind = []; % for use vars, contains eventcode=25 & trial error = 0
dv25_ind = []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
    if ismember(bh_code_cue ,bh(i).BehavioralCodes.CodeNumbers)
        dv25_ind = [dv25_ind i];
        if (bh(i).TrialError == trial_err)
            bh25_ind = [bh25_ind i];
        end
    end
end

bh25 = bh(bh25_ind);
%get conditions
Condition_cue = [bh25.Condition];
Error_0 = [bh25.Trial];

% single_ind_cue = find(ismember(Condition_cue, linspace(1, 16, 16)));
% double_ind_cue = find(ismember(Condition_cue, linspace(17, 20, 4)));

% user_vars_single = cellfun(@(x) x.possali0, {bh25(single_ind).UserVars},'UniformOutput', false);
% user_vars_double = cellfun(@(x) [x.possali1, x.possali2], {bh25(double_ind).UserVars},'UniformOutput', false);

tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData); %a1=NEV, digital values(event code),tStamps all(event time)
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct = find(digitalValues==bh_code_cue);
%%

Correct = Correct(find([bh(dv25_ind).TrialError] == trial_err)); %extract the indices of digital values where trial error is 0

if length(Correct) ~= length(Error_0)
    error('missmatch');
end
rf_on_time = tStamps_all(Correct);

% get info of 2-p image

middleValue = mean(as1.Data(1,:));
imcenter = [];
j=1;
for i=3:size(as1.Data(1,:),2)-2
    if as1.Data(1,i)<=middleValue && as1.Data(1,i-1)>middleValue
        imcenter(j)=i/1000;
        j=j+1;
    end
end
% time of 2-p frame
frameNum = floor(length(imcenter)/4);
frameNum = floor(frameNum/10)*10;
imcenter1 = imcenter(1:frameNum*4);
imcenter4 = reshape(imcenter1,4,[]);
frameTs = mean(imcenter4,1);

frame_num_all_cue = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
    [~, ind] = min(abs(frameTs - rf_on_time(i)));
    frame_num_all_cue(i) = ind;
end

%%


% find the position of each stimulus
% [uniq_rows_single, ~, row_ind_single] = unique(vertcat(user_vars_single{:}), 'rows');
% [uniq_rows_double, ~, row_ind_double] = unique(vertcat(user_vars_double{:}), 'rows');
all_conditions_cue = [bh25.Condition];
all_trials_num_cue=[bh25.Trial];

%for ezcalcium
% save(mcor_file, 'frame_num', '-append')
% save(mcor_file, 'row_ind', '-append')
% save(mcor_file, 'conditions', '-append')
%save(markers, 'frame_num_all_cue')
%save(markers, 'all_conditions_cue', '-append')
%%  35 target on
bh35_ind = []; % for use vars, contains eventcode=25 & trial error = 0
dv35_ind = []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
    if ismember(bh_code_target ,bh(i).BehavioralCodes.CodeNumbers)
        dv35_ind = [dv35_ind i];
        if (bh(i).TrialError == trial_err)
            bh35_ind = [bh35_ind i];
        end
    end
end

bh35 = bh(bh35_ind);
%get conditions
Condition_target = [bh35.Condition];
Error_0 = [bh35.Trial];

single_ind_target = find(ismember(Condition_target, linspace(1, 16, 16)));
double_ind_target = find(ismember(Condition_target, linspace(17, 20, 4)));

% user_vars_single = cellfun(@(x) x.possali0, {bh25(single_ind).UserVars},'UniformOutput', false);
% user_vars_double = cellfun(@(x) [x.possali1, x.possali2], {bh25(double_ind).UserVars},'UniformOutput', false);

tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct = find(digitalValues==bh_code_target);


Correct = Correct(find([bh(dv35_ind).TrialError] == trial_err)); %extract the indices of digital values where trial error is 0

if length(Correct) ~= length(Error_0)
    error('missmatch');
end
rf_on_time = tStamps_all(Correct);

% get info of 2-p image

middleValue = mean(as1.Data(1,:));
imcenter = [];
j=1;
for i=3:size(as1.Data(1,:),2)-2
    if as1.Data(1,i)<=middleValue && as1.Data(1,i-1)>middleValue
        imcenter(j)=i/1000;
        j=j+1;
    end
end
% time of 2-p frame
frameNum = floor(length(imcenter)/4);
frameNum = floor(frameNum/10)*10;
imcenter1 = imcenter(1:frameNum*4);
imcenter4 = reshape(imcenter1,4,[]);
frameTs = mean(imcenter4,1);

frame_num_all_target = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
    [~, ind] = min(abs(frameTs - rf_on_time(i)));
    frame_num_all_target(i) = ind;
end




% find the position of each stimulus
% [uniq_rows_single, ~, row_ind_single] = unique(vertcat(user_vars_single{:}), 'rows');
% [uniq_rows_double, ~, row_ind_double] = unique(vertcat(user_vars_double{:}), 'rows');
all_conditions_target = [bh35.Condition];
all_trials_num_target=[bh35.Trial];
%%
%for suite2p
%% wrong
%%

bh25_ind_wrong = []; % for use vars, contains eventcode=25 & trial error = 0
dv25_ind_wrong = []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
    if ismember(bh_code_cue ,bh(i).BehavioralCodes.CodeNumbers)
        dv25_ind_wrong = [dv25_ind_wrong i];
        if (bh(i).TrialError == trial_err_wrong)
            bh25_ind_wrong = [bh25_ind_wrong i];
        end
    end
end

bh25_wrong = bh(bh25_ind_wrong);
%get conditions
Condition_cue_wrong = [bh25_wrong.Condition];
Error_0_wrong = [bh25_wrong.Trial];

single_ind_cue_wrong = find(ismember(Condition_cue_wrong, linspace(1, 16, 16)));
double_ind_cue_wrong = find(ismember(Condition_cue_wrong, linspace(17, 20, 4)));

% user_vars_single = cellfun(@(x) x.possali0, {bh25(single_ind).UserVars},'UniformOutput', false);
% user_vars_double = cellfun(@(x) [x.possali1, x.possali2], {bh25(double_ind).UserVars},'UniformOutput', false);

tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct_wrong = find(digitalValues==bh_code_cue);
%%

Correct_wrong = Correct_wrong(find([bh(dv25_ind_wrong).TrialError] == trial_err_wrong)); %extract the indices of digital values where trial error is 0

if length(Correct_wrong) ~= length(Error_0_wrong)
    error('missmatch');
end
rf_on_time = tStamps_all(Correct_wrong);

% get info of 2-p image

middleValue = mean(as1.Data(1,:));
imcenter = [];
j=1;
for i=3:size(as1.Data(1,:),2)-2
    if as1.Data(1,i)<=middleValue && as1.Data(1,i-1)>middleValue
        imcenter(j)=i/1000;
        j=j+1;
    end
end
% time of 2-p frame
frameNum = floor(length(imcenter)/4);
frameNum = floor(frameNum/10)*10;
imcenter1 = imcenter(1:frameNum*4);
imcenter4 = reshape(imcenter1,4,[]);
frameTs = mean(imcenter4,1);

frame_num_all_cue_wrong = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
    [~, ind] = min(abs(frameTs - rf_on_time(i)));
    frame_num_all_cue_wrong(i) = ind;
end

%%


% find the position of each stimulus
% [uniq_rows_single, ~, row_ind_single] = unique(vertcat(user_vars_single{:}), 'rows');
% [uniq_rows_double, ~, row_ind_double] = unique(vertcat(user_vars_double{:}), 'rows');
all_conditions_cue_wrong = [bh25_wrong.Condition];
all_trials_num_cue_wrong=[bh25_wrong.Trial];

%for ezcalcium
% save(mcor_file, 'frame_num', '-append')
% save(mcor_file, 'row_ind', '-append')
% save(mcor_file, 'conditions', '-append')
%save(markers, 'frame_num_all_cue')
%save(markers, 'all_conditions_cue', '-append')
%%  35 target on
bh35_ind_wrong = []; % for use vars, contains eventcode=25 & trial error = 0
dv35_ind_wrong = []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
    if ismember(bh_code_target ,bh(i).BehavioralCodes.CodeNumbers)
        dv35_ind_wrong = [dv35_ind_wrong i];
        if (bh(i).TrialError == trial_err_wrong)
            bh35_ind_wrong = [bh35_ind_wrong i];
        end
    end
end

bh35_wrong = bh(bh35_ind_wrong);
%get conditions
Condition_target_wrong = [bh35_wrong.Condition];
Error_0_wrong = [bh35_wrong.Trial];

single_ind_target = find(ismember(Condition_target_wrong, linspace(1, 16, 16)));
double_ind_target = find(ismember(Condition_target_wrong, linspace(17, 20, 4)));

% user_vars_single = cellfun(@(x) x.possali0, {bh25(single_ind).UserVars},'UniformOutput', false);
% user_vars_double = cellfun(@(x) [x.possali1, x.possali2], {bh25(double_ind).UserVars},'UniformOutput', false);

tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct_wrong = find(digitalValues==bh_code_target);


Correct_wrong = Correct_wrong(find([bh(dv35_ind_wrong).TrialError] == trial_err_wrong)); %extract the indices of digital values where trial error is 0

if length(Correct_wrong) ~= length(Error_0_wrong)
    error('missmatch');
end
rf_on_time = tStamps_all(Correct_wrong);

% get info of 2-p image

middleValue = mean(as1.Data(1,:));
imcenter = [];
j=1;
for i=3:size(as1.Data(1,:),2)-2
    if as1.Data(1,i)<=middleValue && as1.Data(1,i-1)>middleValue
        imcenter(j)=i/1000;
        j=j+1;
    end
end
% time of 2-p frame
frameNum = floor(length(imcenter)/4);
frameNum = floor(frameNum/10)*10;
imcenter1 = imcenter(1:frameNum*4);
imcenter4 = reshape(imcenter1,4,[]);
frameTs = mean(imcenter4,1);

frame_num_all_target_wrong = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
    [~, ind] = min(abs(frameTs - rf_on_time(i)));
    frame_num_all_target_wrong(i) = ind;
end




% find the position of each stimulus
% [uniq_rows_single, ~, row_ind_single] = unique(vertcat(user_vars_single{:}), 'rows');
% [uniq_rows_double, ~, row_ind_double] = unique(vertcat(user_vars_double{:}), 'rows');
all_conditions_target_wrong = [bh35_wrong.Condition];
all_trials_num_target_wrong=[bh35_wrong.Trial];


% frame_num_all_target(:,853:854)=[];
% frame_num_all_cue(:,853:854)=[];
% all_conditions_target(:,853:854)=[];
% all_trials_num_target(:,853:854)=[];
% all_trials_num_cue(:,853:854)=[];
% frame_num_all_target_wrong(:,205:206)=[];
% frame_num_all_cue_wrong(:,205:206)=[];
% all_conditions_target_wrong(:,205:206)=[];
% all_conditions_cue_wrong(:,205:206)=[];
% all_trials_num_target_wrong(:,205:206)=[];
% all_trials_num_cue_wrong(:,205:206)=[];
% bh35(:,853:854)=[];
% bh35_ind(:,853:854)=[];
% bh35_ind_wrong(:,205:206)=[];
% bh35_wrong(:,205:206)=[];


% frame_num_all_target(:,800)=[];
% frame_num_all_cue(:,800)=[];
% all_conditions_target(:,22)=[];
% all_trials_num_target(:,22)=[];
% all_trials_num_cue(:,22)=[];
% frame_num_all_target_wrong(:,200)=[];
% frame_num_all_cue_wrong(:,200)=[];
% all_conditions_target_wrong(:,22)=[];
% all_conditions_cue_wrong(:,22)=[];
% all_trials_num_target_wrong(:,22)=[];
% all_trials_num_cue_wrong(:,22)=[];
% bh35(:,22)=[];
% bh35_ind(:,22)=[];
% bh35_ind_wrong(:,22)=[];
% bh35_wrong(:,22)=[];




save(markers, 'frame_num_all_target')
save(markers, 'frame_num_all_cue','-append')
save(markers, 'frame_num_all_target_wrong','-append')
save(markers, 'frame_num_all_cue_wrong','-append')

save(markers, 'all_conditions_target', '-append')
save(markers, 'all_conditions_cue', '-append')
save(markers, 'all_conditions_target_wrong', '-append')
save(markers, 'all_conditions_cue_wrong', '-append')

save(markers, 'all_trials_num_target_wrong', '-append')
save(markers, 'all_trials_num_cue_wrong', '-append')
save(markers, 'all_trials_num_target', '-append')
save(markers, 'all_trials_num_cue', '-append')
