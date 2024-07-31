function [heads, flows, periods, stddevs] = hf_processtable(t, s, f, delta)
%hf_proecsstable: processes raw data following a head-flow graph trial
%{
    t: table containing head, flow, period
    start: initial flow rate of trial (mL/s) 
    finish: final flow rate of trial (mL/s) 
    delta: how large the change in flow rate is (mL/s)
%}

% Convert from table to array

raw_time = table2array(t(:, 1));
raw_head = table2array(t(:, 2));
raw_flow = table2array(t(:, 4));

% Find wanted and filter data by searching through flow array
[r, ~] = size(raw_flow);

foundstart = 0;
for i = 1:r-1
   if ~foundstart & raw_flow(i) ~= s && raw_flow(i+1) == s
      start_index = i+1;
      foundstart = 1;
   end
   if foundstart && raw_flow(i) == f && raw_flow(i+1) ~= f
      end_index = i-1;
   end
end

f_time = raw_time(start_index:end_index);
f_head = raw_head(start_index:end_index);
f_flow = raw_flow(start_index:end_index);


% Find Changes in Flow

[r,~] = size(f_flow);
increments = (f-s)/delta;

changes = zeros(1, increments);
cur_index = 1;
for i = 1:r-1
    
    if (f_flow(i) ~= f_flow(i+1))
        % Last index of this trial is stored in i
        changes(cur_index) = i;
        cur_index = cur_index + 1;
    end
end

changes = [1 changes r];


% Get output
heads = zeros(1, increments+1);
periods = zeros(1, increments+1);
stddevs = zeros(1, increments+1);
flows = zeros(1, increments+1);


neighborhood = 6;

for i = 1:increments+1
    temp_head = f_head(changes(i)+500:changes(i+1));
    temp_time = f_time(changes(i)+500:changes(i+1));
    
    flows(i) = f_flow(changes(i)+1);
    heads(i) = mean(temp_head);
    [periods(i),stddevs(i)] = period(temp_head, temp_time, neighborhood);
end



