
bhv=mlread('L:\Monkey2\region8\20220630\xiaoliu_7a_SR_associated_220630_02.bhv2');

load('L:\Monkey2\region8\20220630\stim_markers_learning_currenttrialcorrectwrongcon1con2_20220630.mat');
markers = 'L:\Monkey2\region8\20220630\stim_markers_learning_currenttrialcorrectwrongcon1con2_saccade_20220630.mat';
bhv_wrong_ind=find([bhv.TrialError]==1);
bhv_wrong=bhv(bhv_wrong_ind);
% bhv_wrong(:,205:206)=[];
% bhv_wrong(:,22)=[];
saccade_stop_time_wrong=[];

bhv_ind=find([bhv.TrialError]==0);
bhv_correct=bhv(bhv_ind);
% bhv_correct(:,853:854)=[];
% bhv_correct(:,22)=[];
saccade_stop_time=[];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 找到saccade开始时的时间点
for single_num=1:length(bhv_wrong)
%     if bhv_correct(single_num).Condition==1
    time_target_onset_ind_wrong=find([bhv_wrong(single_num).BehavioralCodes.CodeNumbers]==35);
    time_target_onset_wrong=bhv_wrong(single_num).BehavioralCodes.CodeTimes(time_target_onset_ind_wrong);
    start_pos=mean(bhv_wrong(single_num).AnalogData.Eye(floor(time_target_onset_wrong-200):floor(time_target_onset_wrong),:));
    for i = floor(time_target_onset_wrong):length(bhv_wrong(single_num).AnalogData.Eye)
        if  sqrt((bhv_wrong(single_num).AnalogData.Eye(i,1)-start_pos(1))^2+(bhv_wrong(single_num).AnalogData.Eye(i,2)-start_pos(2))^2) >= 2.5
            stop_pos=bhv_wrong(single_num).AnalogData.Eye(i,:);
%             trace=[start_pos;stop_pos];
%             plot(trace(1:end,1),trace(1:end,2)) ;
            saccade_stop_time_wrong= [saccade_stop_time_wrong;single_num floor(time_target_onset_wrong) i];
            break
        else
            continue
        end
        
    end
end
%     else
%         time_target_onset_ind=find([bhv_correct(single_num).BehavioralCodes.CodeNumbers]==45);
%     time_target_onset=bhv_correct(single_num).BehavioralCodes.CodeTimes(time_target_onset_ind);
%     start_pos=mean(bhv_correct(single_num).AnalogData.Eye(floor(time_target_onset-200):floor(time_target_onset),:));
%     for i = floor(time_target_onset):length(bhv_correct(single_num).AnalogData.Eye)
%         if  sqrt((bhv_correct(single_num).AnalogData.Eye(i,1)-start_pos(1))^2+(bhv_correct(single_num).AnalogData.Eye(i,2)-start_pos(2))^2) >= 2.5
%             stop_pos=bhv_correct(single_num).AnalogData.Eye(i,:);
% %             trace=[start_pos;stop_pos];
% %             plot(trace(1:end,1),trace(1:end,2)) ;
%             saccade_stop_time= [saccade_stop_time;single_num i];
%             break
%         else
%             continue
%         end
        
%     end
        
%     end
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  对齐到原有的帧数
frame_align_wrong=[round((saccade_stop_time_wrong(:,3)-saccade_stop_time_wrong(:,2))/135.1351)];
frame_T=frame_align_wrong';
frame_num_all_target_align_wrong=frame_num_all_target_wrong+frame_T;
save(markers, 'frame_num_all_target_align_wrong');

%% correct
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 找到saccade开始时的时间点
for single_num=1:length(bhv_correct)
%     if bhv_correct(single_num).Condition==1
    time_target_onset_ind=find([bhv_correct(single_num).BehavioralCodes.CodeNumbers]==35);
    time_target_onset=bhv_correct(single_num).BehavioralCodes.CodeTimes(time_target_onset_ind);
    start_pos=mean(bhv_correct(single_num).AnalogData.Eye(floor(time_target_onset-200):floor(time_target_onset),:));
    for i = floor(time_target_onset):length(bhv_correct(single_num).AnalogData.Eye)
        if  sqrt((bhv_correct(single_num).AnalogData.Eye(i,1)-start_pos(1))^2+(bhv_correct(single_num).AnalogData.Eye(i,2)-start_pos(2))^2) >= 2.5
            stop_pos=bhv_correct(single_num).AnalogData.Eye(i,:);
%             trace=[start_pos;stop_pos];
%             plot(trace(1:end,1),trace(1:end,2)) ;
            saccade_stop_time= [saccade_stop_time;single_num floor(time_target_onset) i];
            break
        else
            continue
        end
        
    end
%     else
%         time_target_onset_ind=find([bhv_correct(single_num).BehavioralCodes.CodeNumbers]==45);
%     time_target_onset=bhv_correct(single_num).BehavioralCodes.CodeTimes(time_target_onset_ind);
%     start_pos=mean(bhv_correct(single_num).AnalogData.Eye(floor(time_target_onset-200):floor(time_target_onset),:));
%     for i = floor(time_target_onset):length(bhv_correct(single_num).AnalogData.Eye)
%         if  sqrt((bhv_correct(single_num).AnalogData.Eye(i,1)-start_pos(1))^2+(bhv_correct(single_num).AnalogData.Eye(i,2)-start_pos(2))^2) >= 2.5
%             stop_pos=bhv_correct(single_num).AnalogData.Eye(i,:);
% %             trace=[start_pos;stop_pos];
% %             plot(trace(1:end,1),trace(1:end,2)) ;
%             saccade_stop_time= [saccade_stop_time;single_num i];
%             break
%         else
%             continue
%         end
        
%     end
        
%     end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  对齐到原有的帧数
frame_align=[round((saccade_stop_time(:,3)-saccade_stop_time(:,2))/135.1351)];
frame_T=frame_align';
frame_num_all_target_align=frame_num_all_target+frame_T;
save(markers, 'frame_num_all_target_align','-append');




