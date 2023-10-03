Mdir = 'L:\Monkey2\region3\20220510\'; %dir that contains nev, ns2, and ccf
bh_file = 'L:\Monkey2\region3\20220510\xiaoliu_7a_SR_associated_220510.bhv2'; % file path of bhv file
packDir = fileparts(Mdir);
fn = dir([packDir '/*.nev']);
fileNEV = fullfile(fn.folder,fn.name);
fn = dir([packDir '/*.ns2']);
fileNS = fullfile(fn.folder,fn.name);
bh_code_cue = 25;
bh_code_target_off=36;
trial_err = 0;
trial_err_wrong = 1;
trial_break = 3;

markers = 'L:\Monkey2\region3\20220510\stim_markers_learning_aligned_targetoff_add_nofixationbreak_20220510.mat';

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
Cue_Error_0 = [bh25.Trial];


tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct = find(digitalValues==bh_code_cue);
%%

Correct = Correct(find([bh(dv25_ind).TrialError] == trial_err)); %extract the indices of digital values where trial error is 0

if length(Correct) ~= length(Cue_Error_0)
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


all_conditions_cue = [bh25.Condition];
all_trials_num_cue=[bh25.Trial];

%%  36 target off
bh36_ind = []; % for use vars, contains eventcode=25 & trial error = 0
dv36_ind = []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
    if ismember(bh_code_target_off ,bh(i).BehavioralCodes.CodeNumbers)
        dv36_ind = [dv36_ind i];
        if (bh(i).TrialError == trial_err)
            bh36_ind = [bh36_ind i];
        end
    end
end

bh36 = bh(bh36_ind);
%get conditions
Condition_targetoff = [bh36.Condition];
TargetoffError_0 = [bh36.Trial];
tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct = find(digitalValues==bh_code_target_off);


Correct = Correct(find([bh(dv36_ind).TrialError] == trial_err)); %extract the indices of digital values where trial error is 0

if length(Correct) ~= length(TargetoffError_0)
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

frame_num_all_targetoff = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
    [~, ind] = min(abs(frameTs - rf_on_time(i)));
    frame_num_all_targetoff(i) = ind;
end

all_conditions_targetoff = [bh36.Condition];
all_trials_num_targetoff=[bh36.Trial];
%% wrong


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
CueError_wrong = [bh25_wrong.Trial];

% single_ind_cue_wrong = find(ismember(Condition_cue_wrong, linspace(1, 16, 16)));
% double_ind_cue_wrong = find(ismember(Condition_cue_wrong, linspace(17, 20, 4)));

% user_vars_single = cellfun(@(x) x.possali0, {bh25(single_ind).UserVars},'UniformOutput', false);
% user_vars_double = cellfun(@(x) [x.possali1, x.possali2], {bh25(double_ind).UserVars},'UniformOutput', false);

tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct_wrong = find(digitalValues==bh_code_cue);
%%

Correct_wrong = Correct_wrong(find([bh(dv25_ind_wrong).TrialError] == trial_err_wrong)); %extract the indices of digital values where trial error is 0

if length(Correct_wrong) ~= length(CueError_wrong)
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
all_conditions_cue_wrong = [bh25_wrong.Condition];
all_trials_num_cue_wrong=[bh25_wrong.Trial];


%%  36 target off
bh36_ind_wrong = []; % for use vars, contains eventcode=25 & trial error = 0
dv36_ind_wrong = []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
    if ismember(bh_code_target_off ,bh(i).BehavioralCodes.CodeNumbers)
        dv36_ind_wrong = [dv36_ind_wrong i];
        if (bh(i).TrialError == trial_err_wrong)
            bh36_ind_wrong = [bh36_ind_wrong i];
        end
    end
end

bh36_wrong = bh(bh36_ind_wrong);
%get conditions
Condition_target_wrong = [bh36_wrong.Condition];
TargetoffError_wrong = [bh36_wrong.Trial];

% single_ind_target = find(ismember(Condition_target_wrong, linspace(1, 16, 16)));
% double_ind_target = find(ismember(Condition_target_wrong, linspace(17, 20, 4)));

% user_vars_single = cellfun(@(x) x.possali0, {bh25(single_ind).UserVars},'UniformOutput', false);
% user_vars_double = cellfun(@(x) [x.possali1, x.possali2], {bh25(double_ind).UserVars},'UniformOutput', false);

tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct_wrong = find(digitalValues==bh_code_target_off);


Correct_wrong = Correct_wrong(find([bh(dv36_ind_wrong).TrialError] == trial_err_wrong)); %extract the indices of digital values where trial error is 0

if length(Correct_wrong) ~= length(TargetoffError_wrong)
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

frame_num_all_targetoff_wrong = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
    [~, ind] = min(abs(frameTs - rf_on_time(i)));
    frame_num_all_targetoff_wrong(i) = ind;
end


all_conditions_targetoff_wrong = [bh36_wrong.Condition];
all_trials_num_targetoff_wrong=[bh36_wrong.Trial];
%% break_trials
%% 15
% bh15_ind = []; % for use vars, contains eventcode=25 & trial error = 0
% dv15_ind = []; % for digital value, contains only indices when eventcode = 25
% for i=1:length(bh)
%     if ismember(15 ,bh(i).BehavioralCodes.CodeNumbers)
%         dv15_ind = [dv15_ind i];
%         if (bh(i).TrialError == trial_break)
%             bh15_ind = [bh15_ind i];
%         end
%     end
% end
% 
% bh15break = bh(bh15_ind);
% %get conditions
% Condition_cuebreak = [bh15break.Condition];
% fixation_Error_3 = [bh15break.Trial];
% 
% 
% tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
% digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
% digitalValues=bin2dec(digitalValuestmp(:,9:16))';
% Correct = find(digitalValues==15);
% %%
% 
% Correct = Correct(find([bh(dv15_ind).TrialError] == trial_break)); %extract the indices of digital values where trial error is 0
% 
% if length(Correct) ~= length(fixation_Error_3)
%     error('missmatch');
% end
% rf_on_time = tStamps_all(Correct);
% 
% % get info of 2-p image
% 
% middleValue = mean(as1.Data(1,:));
% imcenter = [];
% j=1;
% for i=3:size(as1.Data(1,:),2)-2
%     if as1.Data(1,i)<=middleValue && as1.Data(1,i-1)>middleValue
%         imcenter(j)=i/1000;
%         j=j+1;
%     end
% end
% % time of 2-p frame
% frameNum = floor(length(imcenter)/4);
% frameNum = floor(frameNum/10)*10;
% imcenter1 = imcenter(1:frameNum*4);
% imcenter4 = reshape(imcenter1,4,[]);
% frameTs = mean(imcenter4,1);
% 
% frame_num_all_fixation_break = zeros(1, length(rf_on_time));
% for i=1:length(rf_on_time)
%     [~, ind] = min(abs(frameTs - rf_on_time(i)));
%     frame_num_all_fixation_break(i) = ind;
% end
% 
% 
% all_conditions_fixation_break = [bh15break.Condition];
% all_trials_num_fixation_break=[bh15break.Trial];
% 
% % %% 25
% % bh25_ind = []; % for use vars, contains eventcode=25 & trial error = 0
% % dv25_ind = []; % for digital value, contains only indices when eventcode = 25
% % for i=1:length(bh)
% %     if ismember(bh_code_cue ,bh(i).BehavioralCodes.CodeNumbers)
% %         dv25_ind = [dv25_ind i];
% %         if (bh(i).TrialError == trial_break)
% %             bh25_ind = [bh25_ind i];
% %         end
% %     end
% % end
% % 
% bh25break = bh(bh25_ind);
% %get conditions
% Condition_cuebreak = [bh25break.Condition];
% Cue_Error_3 = [bh25break.Trial];
% 
% 
% tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
% digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
% digitalValues=bin2dec(digitalValuestmp(:,9:16))';
% Correct = find(digitalValues==bh_code_cue);
% %%
% 
% Correct = Correct(find([bh(dv25_ind).TrialError] == trial_break)); %extract the indices of digital values where trial error is 0
% 
% if length(Correct) ~= length(Cue_Error_3)
%     error('missmatch');
% end
% rf_on_time = tStamps_all(Correct);
% 
% % get info of 2-p image
% 
% middleValue = mean(as1.Data(1,:));
% imcenter = [];
% j=1;
% for i=3:size(as1.Data(1,:),2)-2
%     if as1.Data(1,i)<=middleValue && as1.Data(1,i-1)>middleValue
%         imcenter(j)=i/1000;
%         j=j+1;
%     end
% end
% % time of 2-p frame
% frameNum = floor(length(imcenter)/4);
% frameNum = floor(frameNum/10)*10;
% imcenter1 = imcenter(1:frameNum*4);
% imcenter4 = reshape(imcenter1,4,[]);
% frameTs = mean(imcenter4,1);
% 
% frame_num_all_cue_break = zeros(1, length(rf_on_time));
% for i=1:length(rf_on_time)
%     [~, ind] = min(abs(frameTs - rf_on_time(i)));
%     frame_num_all_cue_break(i) = ind;
% end
% 
% 
% all_conditions_cue_break = [bh25break.Condition];
% all_trials_num_cue_break=[bh25break.Trial];

%%  36 target off
% bh36_ind = []; % for use vars, contains eventcode=25 & trial error = 0
% dv36_ind = []; % for digital value, contains only indices when eventcode = 25
% for i=1:length(bh)
%     if ismember(bh_code_target_off ,bh(i).BehavioralCodes.CodeNumbers)
%         dv36_ind = [dv36_ind i];
%         if (bh(i).TrialError == trial_break)
%             bh36_ind = [bh36_ind i];
%         end
%     end
% end
% 
% bh36break = bh(bh36_ind);
% %get conditions
% Condition_targetoff = [bh36break.Condition];
% TargetoffError_3 = [bh36break.Trial];
% tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
% digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
% digitalValues=bin2dec(digitalValuestmp(:,9:16))';
% Correct = find(digitalValues==bh_code_target_off);
% 
% 
% Correct = Correct(find([bh(dv36_ind).TrialError] == trial_break)); %extract the indices of digital values where trial error is 0
% 
% if length(Correct) ~= length(TargetoffError_3)
%     error('missmatch');
% end
% rf_on_time = tStamps_all(Correct);
% 
% % get info of 2-p image
% 
% middleValue = mean(as1.Data(1,:));
% imcenter = [];
% j=1;
% for i=3:size(as1.Data(1,:),2)-2
%     if as1.Data(1,i)<=middleValue && as1.Data(1,i-1)>middleValue
%         imcenter(j)=i/1000;
%         j=j+1;
%     end
% end
% % time of 2-p frame
% frameNum = floor(length(imcenter)/4);
% frameNum = floor(frameNum/10)*10;
% imcenter1 = imcenter(1:frameNum*4);
% imcenter4 = reshape(imcenter1,4,[]);
% frameTs = mean(imcenter4,1);
% 
% frame_num_all_targetoff_break = zeros(1, length(rf_on_time));
% for i=1:length(rf_on_time)
%     [~, ind] = min(abs(frameTs - rf_on_time(i)));
%     frame_num_all_targetoff_break(i) = ind;
% end
% 
% all_conditions_targetoff_break = [bh36break.Condition];
% all_trials_num_targetoff_break=[bh36break.Trial];


% all_conditions_break=[all_conditions_fixation_break all_conditions_cue_break all_conditions_targetoff_break];
% all_trials_num_break=[all_trials_num_fixation_break all_trials_num_cue_break all_trials_num_targetoff_break];
% frame_num_all_break=[frame_num_all_fixation_break frame_num_all_cue_break frame_num_all_targetoff_break];

%% 不区分时程即不区分时程段的

 dvbreak_ind=[];
 bhbreak_ind=[];
for i=1:length(bh)
    if ismember(18 ,bh(i).BehavioralCodes.CodeNumbers)
         dvbreak_ind = [dvbreak_ind i];
         if (bh(i).TrialError == trial_break)
             bhbreak_ind = [bhbreak_ind i];
         end
    end
 end
 
 bhbreak = bh(bhbreak_ind);
 %get conditions
 Condition_targetoff = [bhbreak.Condition];
 breakError_3 = [bhbreak.Trial];
 tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30000;
 digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
 digitalValues=bin2dec(digitalValuestmp(:,9:16))';
 Correct = find(digitalValues==18);
 
 
 Correct = Correct(find([bh(dvbreak_ind).TrialError] == trial_break)); %extract the indices of digital values where trial error is 0

 if length(Correct) ~= length(breakError_3)
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
 
 frame_num_all_break = zeros(1, length(rf_on_time));
 for i=1:length(rf_on_time)
     [~, ind] = min(abs(frameTs - rf_on_time(i)));
     frame_num_all_break(i) = ind;
 end

 all_conditions_break = [bhbreak.Condition];
 all_trials_num_break=[bhbreak.Trial];
 
 
 
  bh25_ind = []; % for use vars, contains eventcode=25 & trial error = 0
  dv25_ind = []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
   if ismember(bh_code_cue ,bh(i).BehavioralCodes.CodeNumbers)
      dv25_ind = [dv25_ind i];
        if (bh(i).TrialError == trial_break)
           bh25_ind = [bh25_ind i];
        end
    end
 end
% % 
bh25break = bh(bh25_ind);
all_trials_num_cue_break=[bh25break.Trial];
all_conditions_cue_break=[bh25break.Condition];
 
all_trials_num_nofixbreak_index=[]
for j=1:length(all_trials_num_break)
    for i=1:length(all_trials_num_cue_break)
        if ismember(all_trials_num_cue_break(i),all_trials_num_break(j))
            all_trials_num_nofixbreak_index=[all_trials_num_nofixbreak_index j];
        end
    end
end
all_trials_num_nofixbreak=all_trials_num_break(all_trials_num_nofixbreak_index);
frame_num_nofixbreak=frame_num_all_break(all_trials_num_nofixbreak_index);
all_conditions_nofixbreak=all_conditions_break(all_trials_num_nofixbreak_index);
 
save(markers, 'frame_num_all_targetoff')
save(markers, 'frame_num_all_cue','-append')
save(markers, 'frame_num_all_targetoff_wrong','-append')
save(markers, 'frame_num_all_cue_wrong','-append')
save(markers,'frame_num_nofixbreak','-append');

save(markers, 'all_conditions_targetoff', '-append')
save(markers, 'all_trials_num_targetoff', '-append')
save(markers, 'all_conditions_cue', '-append')
save(markers, 'all_trials_num_cue', '-append')
save(markers,'all_conditions_nofixbreak','-append');
save(markers,'all_trials_num_nofixbreak','-append');


save(markers, 'all_conditions_targetoff_wrong', '-append')
save(markers, 'all_trials_num_targetoff_wrong', '-append')

save(markers, 'all_conditions_cue_wrong', '-append')
save(markers, 'all_trials_num_cue_wrong', '-append')


