function [period, stddev, n] = period(head, time, neighborhood)
%{
Create function which returns average period and standard deviation
   time: array containing time values
   head: array containing head values
   neighborhood: distance from a given point to check if it is a max
    - Distance is in terms of indices. For example: if neighborhood is set
    to 6 and code collects data every 0.01 seconds, the function searches
    values that happened within 0.06 seconds of a given point.
    - If this distance*2 is the same as the period (if 0.12 seconds is also
    the period), then the peaks begin to overlap and the function will not
    work.

    - Would be prudent to test this function with any new experiment.
    Plot a subsection of a data set, count the number of max peaks, and
    compare it to the value that this function returns.
Returns: average period
%}

% Create array containing indexes of max values
% If the number of max values are known, then the period is known

SECONDS_IN_DAY = 24*60*60;

% Initialize Values
max_values = 0;
i = neighborhood+1; % Pointer for head values

[r, ~] = size(head); 
indices = zeros([r,1]); % Pre-allocate memory to store indices
j = 1; % Pointer for indices

while i <= r-neighborhood
    % Cur_values is a sub-array of the head values based on neighborhood
    % values. 
        % Smaller neighborhood tend to make this function inaccurate
    cur_values = head(i-neighborhood:i+neighborhood);
    cur_max = max(cur_values, [], "all");

    % For-loop decides if current head value is a max value
    if cur_max == head(i)
        max_values = max_values + 1;
        indices(j) = i;
        j = j + 1;
    end
    i = i + 1;
end

n = max_values; % Return n, number of max values and thus the sample size of periods
indices = indices(1:max_values); % Remove extraneous values from pre-allocation

% Compute average period and standard deviation

% Pointer neighborhood*2 instead of 0 to filter out edge values
totaltime = time(length(time))-time(neighborhood*2);
period = (totaltime*SECONDS_IN_DAY)/max_values;

% Find differences between indices
indices_differences = zeros([max_values-1, 1]);
for i = 1:max_values-1
    indices_differences(i) = indices(i+1)-indices(i);
end

stddev = std(indices_differences)/(totaltime*SECONDS_IN_DAY);

end


%{ 
Test function with logic array

max_values = 0;
logic = [];
i = neighborhood+1;
[r, ~] = size(head);


while i <= r-neighborhood
    
    cur_values = head(i-neighborhood:i+neighborhood);
    cur_max = max(cur_values, [], "all");

    if cur_max == head(i)
        max_values = max_values + 1;
        logic = [logic  1];
    else
        logic = [logic  0];
    end
    i = i + 1;

% Compute average period
SECONDS_IN_DAY = 24*60*60;

% Pointer neighborhood*2 instead of 0 to filter out edge values
totaltime = time(length(time))-time(neighborhood*2);
period = (totaltime*SECONDS_IN_DAY)/max_values;

unchecked = zeros(neighborhood, 1)';
indices = logical([unchecked logic unchecked]');

end
%}
