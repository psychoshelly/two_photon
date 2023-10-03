Mdir = 'L:\Monkey1\region1\20211116\'; %dir that contains nev, ns2, and ccf
bh_file = 'L:\Monkey1\region1\20211116\HH_7a_socialcue_20211116.bhv2'; % file path of bhv file
packDir = fileparts(Mdir);
fn = dir([packDir '/*.nev']);
fileNEV = fullfile(fn.folder,fn.name);
fn = dir([packDir '/*.ns2']);
fileNS = fullfile(fn.folder,fn.name);
disp('reading bhv file...');
bh=mlread(bh_file);
disp('reading nev file...')
a1=openNEV(fileNEV,'nosave','nomat');%NEV
disp('reading ns2 file...')
as1=openNSx(fileNS);%NS2
%%target off_correct
bh36_ind = []; % for use vars, contains eventcode=25 & trial error = 0
dv36_ind= []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
    if ismember(36 ,bh(i).BehavioralCodes.CodeNumbers)
        dv36_ind = [dv36_ind i];
        if (bh(i).TrialError == 0)
            bh36_ind = [bh36_ind i];
        end
    end
end
bh36=bh(bh36_ind);
Error_0 = [bh36.Trial];
Condition_correct= [bh36.Condition];
%get x information
tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30;
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct = find(digitalValues==36);

Correct = Correct(find([bh(dv36_ind).TrialError] == 0)); %extract the indices of digital values where trial error is 0

if length(Correct) ~= length(Error_0)
    error('missmatch');
end
rf_on_time = tStamps_all(Correct);

X_position = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
   ind = round(rf_on_time(i));
    X_position(i)=ind;
end
Y_position = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
    ind = round(rf_on_time(i));
   Y_position(i)=ind;
end


 for con=1:2
    con_ind=find(Condition_correct==con);
    Y_position_correct_index.(sprintf('con_%d',con))=Y_position(con_ind);
    X_position_correct_index.(sprintf('con_%d',con))=X_position(con_ind);
 end
 %% wrong
bh36_ind_wrong = []; % for use vars, contains eventcode=25 & trial error = 0
dv36_ind_wrong= []; % for digital value, contains only indices when eventcode = 25
for i=1:length(bh)
    if ismember(36 ,bh(i).BehavioralCodes.CodeNumbers)
        dv36_ind_wrong = [dv36_ind_wrong i];
        if (bh(i).TrialError == 1)
            bh36_ind_wrong = [bh36_ind_wrong i];
        end
    end
end
bh36wrong=bh(bh36_ind_wrong);
Error_1 = [bh36wrong.Trial];
Condition_wrong= [bh36wrong.Condition];

tStamps_all = double(a1.Data.SerialDigitalIO.TimeStamp)/30;%NEV
digitalValuestmp=dec2bin(a1.Data.SerialDigitalIO.UnparsedData);
digitalValues=bin2dec(digitalValuestmp(:,9:16))';
Correct_wrong = find(digitalValues==36);

Correct_wrong = Correct_wrong(find([bh(dv36_ind).TrialError] == 1)); %extract the indices of digital values where trial error is 0

if length(Correct_wrong) ~= length(Error_1)
    error('missmatch');
end
rf_on_time = tStamps_all(Correct_wrong);

X_position_wrong = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
   ind = round(rf_on_time(i));
    X_position_wrong(i)=ind;
end


%get y information
Y_position_wrong = zeros(1, length(rf_on_time));
for i=1:length(rf_on_time)
     ind = round( rf_on_time(i));
  Y_position_wrong(i)=ind;
end

 for con=1:2
    con_ind=find(Condition_wrong==con);
    Y_position_wrong_index.(sprintf('con_%d',con))=Y_position_wrong(con_ind);
    X_position_wrong_index.(sprintf('con_%d',con))=X_position_wrong(con_ind);
 end


%plot_correct_left_right
X_correct_left_index=[];
X_correct_right_index=[];
X_correct_left_index=X_position_correct_index.con_1;
X_correct_right_index=X_position_correct_index.con_2;
X_correct_left=[];
X_correct_right=[];

Y_correct_left_index=[];
Y_correct_right_index=[];
Y_correct_left_index=Y_position_correct_index.con_1;
Y_correct_right_index=Y_position_correct_index.con_2;
Y_correct_left=[];
Y_correct_right=[];
for i=1:length(X_correct_left_index)
    X_correct_left(i,:)=as1.Data(2,X_correct_left_index(1,i)-3950:X_correct_left_index(1,i)+2160);
    Y_correct_left(i,:)=as1.Data(3,Y_correct_left_index(1,i)-3950:Y_correct_left_index(1,i)+2160);
end

for j=1:size(X_correct_left,1)
    for i=1:size(X_correct_left,2)
        if X_correct_left(j,i)<=-28900 || X_correct_left(j,i)>=28900
            X_correct_left(j,i)=0;
        end
    end
end
for j=1:size(Y_correct_left,1)
    for i=1:size(Y_correct_left,2)
        if Y_correct_left(j,i)<=-28900 || Y_correct_left(j,i)>=28900
            Y_correct_left(j,i)=0;
        end
    end
end

for i=1:length(X_correct_right_index)
 X_correct_right(i,:)=as1.Data(2,X_correct_right_index(1,i)-3950:X_correct_right_index(1,i)+2160);
 Y_correct_right(i,:)=as1.Data(3,Y_correct_right_index(1,i)-3950:Y_correct_right_index(1,i)+2160);
end
for j=1:size(X_correct_right,1)
    for i=1:size(X_correct_right,2)
        if X_correct_right(j,i)<=-28900 || X_correct_right(j,i)>=28900
            X_correct_right(j,i)=0;
        end
    end
end
for j=1:size(Y_correct_right,1)
    for i=1:size(Y_correct_right,2)
        if Y_correct_right(j,i)<=-28900 || Y_correct_right(j,i)>=28900
            Y_correct_right(j,i)=0;
        end
    end
end


%find max & min
% for i=1:size(X_correct_left,1)
%     scatter(X_correct_left(i,:),Y_correct_left(i,:),6,'b');
% end
% hold on
% for i=1:size(X_correct_right,1)
%     scatter(X_correct_right(i,:),Y_correct_right(i,:),5,'b','filled');
% end


% find(s==min(s))% correct_right min5390
% max(max(X_correct_right));%correct_right max 29209
% min(min(X_correct_right));%-29348
% 
% min(min(X_correct_left));%-29337
% max(max(X_correct_left));%29203%choose-29000 to 29000


 %% plot_wrong
X_wrong_left_index=[];
X_wrong_right_index=[];
X_wrong_left_index=X_position_wrong_index.con_2;
X_wrong_right_index=X_position_wrong_index.con_1;
X_wrong_left=[];
X_wrong_right=[];

Y_wrong_left_index=[];
Y_wrong_right_index=[];
Y_wrong_left_index=Y_position_wrong_index.con_2;
Y_wrong_right_index=Y_position_wrong_index.con_1;
Y_wrong_left=[];
Y_wrong_right=[];
for i=1:length(X_wrong_left_index)
    X_wrong_left(i,:)=as1.Data(2,X_wrong_left_index(1,i)-3950:X_wrong_left_index(1,i)+2160);
    Y_wrong_left(i,:)=as1.Data(3,Y_wrong_left_index(1,i)-3950:Y_wrong_left_index(1,i)+2160);
end

for i=1:length(X_wrong_right_index)
 X_wrong_right(i,:)=as1.Data(2,X_wrong_right_index(1,i)-3950:X_wrong_right_index(1,i)+2160);
 Y_wrong_right(i,:)=as1.Data(3,Y_wrong_right_index(1,i)-3950:Y_wrong_right_index(1,i)+2160);
end


for j=1:size(X_wrong_left,1)
    for i=1:size(X_wrong_left,2)
        if X_wrong_left(j,i)<=-28900 || X_wrong_left(j,i)>=28900
            X_wrong_left(j,i)=0;
        end
    end
end
for j=1:size(X_wrong_right,1)
    for i=1:size(X_wrong_right,2)
        if X_wrong_right(j,i)<=-28900 || X_wrong_right(j,i)>=28900
            X_wrong_right(j,i)=0;
        end
    end
end

for j=1:size(Y_wrong_left,1)
    for i=1:size(Y_wrong_left,2)
        if Y_wrong_left(j,i)<=-28900 || Y_wrong_left(j,i)>=28900
            Y_wrong_left(j,i)=0;
        end
    end
end
for j=1:size(Y_wrong_right,1)
    for i=1:size(Y_wrong_right,2)
        if Y_wrong_right(j,i)<=-28900 || Y_wrong_right(j,i)>=28900
            Y_wrong_right(j,i)=0;
        end
    end
end
%% 每个cell储存的是每毫秒的
for i=1:size(X_correct_left,2)
sss=X_correct_left(:,i);
sss(all(sss==0,2),:)=[];
s_X_correct_left(i)={sss};
end
for i=1:size(Y_correct_left,2)
sss=Y_correct_left(:,i);
sss(all(sss==0,2),:)=[];
s_Y_correct_left(i)={sss};
end
for i=1:size(X_correct_right,2)
sss=X_correct_right(:,i);
sss(all(sss==0,2),:)=[];
s_X_correct_right(i)={sss};
end
for i=1:size(Y_correct_right,2)
sss=Y_correct_right(:,i);
sss(all(sss==0,2),:)=[];
s_Y_correct_right(i)={sss};
end

for i=1:size(X_wrong_left,2)
sss=X_wrong_left(:,i);
sss(all(sss==0,2),:)=[];
s_X_wrong_left(i)={sss};
end
for i=1:size(Y_wrong_left,2)
sss=Y_wrong_left(:,i);
sss(all(sss==0,2),:)=[];
s_Y_wrong_left(i)={sss};
end

for i=1:size(X_wrong_right,2)
sss=X_wrong_right(:,i);
sss(all(sss==0,2),:)=[];
s_X_wrong_right(i)={sss};
end
for i=1:size(Y_wrong_right,2)
sss=Y_wrong_right(:,i);
sss(all(sss==0,2),:)=[];
s_Y_wrong_right(i)={sss};
end

%% 每个cell转换成45帧
%X_correct_left
ss=[];
for j=1:round(size(X_correct_left,2)/135)
    s=X_correct_left(:,1+135*(j-1):135+135*(j-1))/4;
    for i=1:size(s,1)
        ss=s(i,:);
        ss(find(ss==0))=[];
        x_correct_left_average(i,j)={mean(ss,2)};
    end
end
        for i=1:size(x_correct_left_average,2)
        mean_X_correct_left(1,i)= nanmean(cell2mat(x_correct_left_average(:,i)));
        SEM_X_correct_left(1,i)=nanstd(cell2mat(x_correct_left_average(:,i)))/sqrt(size(x_correct_left_average,1)-numel(find(isnan(cell2mat(x_correct_left_average(:,i))))));
        end
               
  %X_correct_right       
ss=[];
for j=1:round(size(X_correct_right,2)/135)
    s=X_correct_right(:,1+135*(j-1):135+135*(j-1))/4;
    for i=1:size(s,1)
        ss=s(i,:);
        ss(find(ss==0))=[];
        x_correct_right_average(i,j)={mean(ss,2)};
    end
end
        for i=1:size(x_correct_right_average,2)
        mean_X_correct_right(1,i)= nanmean(cell2mat(x_correct_right_average(:,i)));
        SEM_X_correct_right(1,i)=nanstd(cell2mat(x_correct_right_average(:,i)))/sqrt(size(x_correct_right_average,1)-numel(find(isnan(cell2mat(x_correct_right_average(:,i))))));
        end

%Y_correct_left

ss=[];
for j=1:round(size(Y_correct_left,2)/135)
    s=Y_correct_left(:,1+135*(j-1):135+135*(j-1))/4;
    for i=1:size(s,1)
        ss=s(i,:);
        ss(find(ss==0))=[];
        y_correct_left_average(i,j)={mean(ss,2)};
    end
end
        for i=1:size(y_correct_left_average,2)
        mean_Y_correct_left(1,i)= nanmean(cell2mat(y_correct_left_average(:,i)));
        SEM_Y_correct_left(1,i)=nanstd(cell2mat(y_correct_left_average(:,i)))/sqrt(size(y_correct_left_average,1)-numel(find(isnan(cell2mat(y_correct_left_average(:,i))))));
        end

%Y_correct_right
ss=[];
for j=1:round(size(Y_correct_right,2)/135)
    s=Y_correct_right(:,1+135*(j-1):135+135*(j-1))/4;
    for i=1:size(s,1)
        ss=s(i,:);
        ss(find(ss==0))=[];
        y_correct_right_average(i,j)={mean(ss,2)};
    end
end
        for i=1:size(y_correct_right_average,2)
        mean_Y_correct_right(1,i)= nanmean(cell2mat(y_correct_right_average(:,i)));
        SEM_Y_correct_right(1,i)=nanstd(cell2mat(y_correct_right_average(:,i)))/sqrt(size(y_correct_right_average,1)-numel(find(isnan(cell2mat(y_correct_right_average(:,i))))));
        end

%X_wrong_left

ss=[];
for j=1:round(size(X_wrong_left,2)/135)
    s=X_wrong_left(:,1+135*(j-1):135+135*(j-1))/4;
    for i=1:size(s,1)
        ss=s(i,:);
        ss(find(ss==0))=[];
        x_wrong_left_average(i,j)={mean(ss,2)};
    end
end
        for i=1:size(x_wrong_left_average,2)
        mean_X_wrong_left(1,i)= nanmean(cell2mat(x_wrong_left_average(:,i)));
        SEM_X_wrong_left(1,i)=nanstd(cell2mat(x_wrong_left_average(:,i)))/sqrt(size(x_wrong_left_average,1)-numel(find(isnan(cell2mat(x_wrong_left_average(:,i))))));
        end
              
%X_wrong_right
ss=[];
for j=1:round(size(X_wrong_right,2)/135)
    s=X_wrong_right(:,1+135*(j-1):135+135*(j-1))/4;
    for i=1:size(s,1)
        ss=s(i,:);
        ss(find(ss==0))=[];
        x_wrong_right_average(i,j)={mean(ss,2)};
    end
end


        for i=1:size(x_wrong_right_average,2)
        mean_X_wrong_right(1,i)= nanmean(cell2mat(x_wrong_right_average(:,i)));
        SEM_X_wrong_right(1,i)=nanstd(cell2mat(x_wrong_right_average(:,i)))/sqrt(size(x_wrong_left_average,1)-numel(find(isnan(cell2mat(x_wrong_left_average(:,i))))));
        end

%Y_wrong_left
ss=[];
for j=1:round(size(Y_wrong_left,2)/135)
    s=Y_wrong_left(:,1+135*(j-1):135+135*(j-1))/4;
    for i=1:size(s,1)
        ss=s(i,:);
        ss(find(ss==0))=[];
        y_wrong_left_average(i,j)={mean(ss,2)};
    end
end
        for i=1:size(y_wrong_left_average,2)
        mean_Y_wrong_left(1,i)= nanmean(cell2mat(y_wrong_left_average(:,i)));
        SEM_Y_wrong_left(1,i)=nanstd(cell2mat(y_wrong_left_average(:,i)))/sqrt(size(y_wrong_left_average,1)-numel(find(isnan(cell2mat(y_wrong_left_average(:,i))))));
        end
%Y_wrong_right
ss=[];
for j=1:round(size(Y_wrong_right,2)/135)
    s=Y_wrong_right(:,1+135*(j-1):135+135*(j-1))/4;
    for i=1:size(s,1)
        ss=s(i,:);
        ss(find(ss==0))=[];
        y_wrong_right_average(i,j)={mean(ss,2)};
    end
end
        for i=1:size(y_wrong_right_average,2)
        mean_Y_wrong_right(1,i)= nanmean(cell2mat(y_wrong_right_average(:,i)));
        SEM_Y_wrong_right(1,i)=nanstd(cell2mat(y_wrong_right_average(:,i)))/sqrt(size(y_wrong_right_average,1)-numel(find(isnan(cell2mat(y_wrong_right_average(:,i))))));
        end

        
 figure
 shadedErrorBar(([1:45.21]-29)/7.4,mean_X_correct_left,SEM_X_correct_left,'lineProps', {'-b','LineWidth',1,'LineStyle','-'});
 
 shadedErrorBar(([1:45.21]-29)/7.4,mean_X_correct_right,SEM_X_correct_right,'lineProps',{'-b','LineWidth',1,'LineStyle',':'});
 
 shadedErrorBar(([1:45.21]-29)/7.4,mean_X_wrong_right,SEM_X_wrong_right,'lineProps',{'-r','LineWidth',1,'LineStyle',':'});
 
 shadedErrorBar(([1:45.21]-29)/7.4,mean_X_wrong_left,SEM_X_wrong_left,'lineProps',{'-r','LineWidth',1,'LineStyle','-'});
 xline(0);%targetoff/reward
 %xline(67.6);
 %xline(30.6);%saccade
 %xline(19.5);%cue
 %xline(8.4);%fixation
 legend({'correctleft','correctright','wrongright','wrongleft'});
 legend('boxoff');
  ylim([-8000 8000]);

 figure
 shadedErrorBar(([1:45]-29)/7.4,mean_Y_correct_left,SEM_Y_correct_left,'lineProps', {'-b','LineWidth',1,'LineStyle','-'});
 
 shadedErrorBar(([1:45]-29)/7.4,mean_Y_correct_right,SEM_Y_correct_right,'lineProps',{'-b','LineWidth',1,'LineStyle',':'});
 
 shadedErrorBar(([1:45]-29)/7.4,mean_Y_wrong_right,SEM_Y_wrong_right,'lineProps',{'-r','LineWidth',1,'LineStyle',':'});
 
 shadedErrorBar(([1:45]-29)/7.4,mean_Y_wrong_left,SEM_Y_wrong_left,'lineProps',{'-r','LineWidth',1,'LineStyle','-'});
 xline(0);%targetoff/reward
 %xline(67.6);
 %xline(30.6);%saccade
 %xline(19.5);%cue
 %xline(8.4);%fixation
 legend({'correctleft','correctright','wrongright','wrongleft'});
 legend('boxoff');
 ylim([-8000 8000]);

%%statistical test
for i=1:size(x_correct_left_average,2)
    x_correct_left(:,i)=cell2mat(x_correct_left_average(:,i));
    X_position_correct_left(:,i)={x_correct_left(find(~isnan(cell2mat(x_correct_left_average(:,i)))))};
    
    
    x_wrong_left(:,i)=cell2mat(x_wrong_left_average(:,i));
     X_position_wrong_left(:,i)={x_wrong_left(find(~isnan(cell2mat(x_wrong_left_average(:,i)))))};
     
      x_correct_right(:,i)=cell2mat(x_correct_right_average(:,i));
    X_position_correct_right(:,i)={x_correct_right(find(~isnan(cell2mat(x_correct_right_average(:,i)))))};
    
        x_wrong_right(:,i)=cell2mat(x_wrong_right_average(:,i));
     X_position_wrong_right(:,i)={x_wrong_right(find(~isnan(cell2mat(x_wrong_right_average(:,i)))))};

    X_position_correct_wrong_left_right=[cell2mat(X_position_correct_left(:,i));cell2mat(X_position_wrong_left(:,i));cell2mat(X_position_correct_right(:,i));cell2mat(X_position_wrong_right(:,i))];
    X_position_outcome=[repmat(1,size(cell2mat(X_position_correct_left(:,i)),1),1);repmat(2,size(cell2mat(X_position_wrong_left(:,i)),1),1);repmat(1,size(cell2mat(X_position_correct_right(:,i)),1),1);repmat(2,size(cell2mat(X_position_wrong_right(:,i)),1),1)];
    X_position_saccade=[repmat(3,size(cell2mat(X_position_correct_left(:,i)),1),1);repmat(3,size(cell2mat(X_position_wrong_left(:,i)),1),1);repmat(4,size(cell2mat(X_position_correct_right(:,i)),1),1);repmat(4,size(cell2mat(X_position_wrong_right(:,i)),1),1)];
    Data =[X_position_correct_wrong_left_right,X_position_outcome,X_position_saccade];
    out= SRH_test(Data,'outcome','saccade');
    significance_result_X(i,:)=[i,table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
significance_index_X=find(significance_result_X(:,2)<0.001/16);
end

for i=1:size(y_correct_left_average,2)
    y_correct_left(:,i)=cell2mat(y_correct_left_average(:,i));
    Y_position_correct_left(:,i)={y_correct_left(find(~isnan(cell2mat(y_correct_left_average(:,i)))))};
    
    
    y_wrong_left(:,i)=cell2mat(y_wrong_left_average(:,i));
     Y_position_wrong_left(:,i)={y_wrong_left(find(~isnan(cell2mat(y_wrong_left_average(:,i)))))};
     
      y_correct_right(:,i)=cell2mat(y_correct_right_average(:,i));
    Y_position_correct_right(:,i)={y_correct_right(find(~isnan(cell2mat(y_correct_right_average(:,i)))))};
    
        y_wrong_right(:,i)=cell2mat(y_wrong_right_average(:,i));
     Y_position_wrong_right(:,i)={y_wrong_right(find(~isnan(cell2mat(y_wrong_right_average(:,i)))))};

    Y_position_correct_wrong_left_right=[cell2mat(Y_position_correct_left(:,i));cell2mat(Y_position_wrong_left(:,i));cell2mat(Y_position_correct_right(:,i));cell2mat(Y_position_wrong_right(:,i))];
    Y_position_outcome=[repmat(1,size(cell2mat(Y_position_correct_left(:,i)),1),1);repmat(2,size(cell2mat(Y_position_wrong_left(:,i)),1),1);repmat(1,size(cell2mat(Y_position_correct_right(:,i)),1),1);repmat(2,size(cell2mat(Y_position_wrong_right(:,i)),1),1)];
    Y_position_saccade=[repmat(3,size(cell2mat(Y_position_correct_left(:,i)),1),1);repmat(3,size(cell2mat(Y_position_wrong_left(:,i)),1),1);repmat(4,size(cell2mat(Y_position_correct_right(:,i)),1),1);repmat(4,size(cell2mat(Y_position_wrong_right(:,i)),1),1)];
    Data =[Y_position_correct_wrong_left_right,Y_position_outcome,Y_position_saccade];
    out= SRH_test(Data,'outcome','saccade');
    significance_result_Y(i,:)=[i,table2array(out(1,5)),table2array(out(2,5)),table2array(out(3,5))]; 
significance_index_Y=find(significance_result_Y(:,2)<0.001/16);
end




time_significance_X=(significance_index_X-29)/7.4;

time_significance_Y=(significance_index_Y-29)/7.4;
