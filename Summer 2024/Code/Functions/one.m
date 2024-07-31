function [h, sh, p, sp] = one(varargin)
    %{
    Data analysis function for experiment one: takes in any amount of 
    trials and returns combined mean and pooled standard deviation
    
    varargin: any amount of table values imported from proCoDa: read
        matlab's documentation on how it works

    %}
    % Initialize Arrays to Hold Processed Data
    head = ones(nargin); % Average Head
    h_ss = ones(nargin); % Sample Size
    h_std = ones(nargin); % Standard Deviation

    peri = ones(nargin); % Average period
    p_ss = ones(nargin); % Sample Size
    p_std = ones(nargin); % Standard Deviation

    % Get Processed Data

    for r = 1:nargin
        raw_time = table2array(varargin{r}(:, 1));
        raw_head = table2array(varargin{r}(:, 2));

        head(r) = mean(raw_head);
        h_std(r) = std(raw_head);
        h_ss(r) = max(size(raw_head));
        [peri(r), p_std(r), p_ss(r)] = period(raw_head, raw_time, 10);
    end

    
    % Combined Mean
    h = combined_mean(head, h_ss);
    p = combined_mean(peri, p_ss);
    
    % Pooled Standard Deviation
    sh = pooled_stdev(h_std, h_ss);
    sp = pooled_stdev(p_std, p_ss);
    
end

function [mean] = combined_mean(values, sample_sizes)
    %{
    Return combined mean of different mean values weighted by sample size
     - Size of values and sample_sizes array should be same and 
       refer to each other 1:1
    %}
    
    r = max(size(values));
    total_value = 0;
    total_sample_size = 0;
    for i = 1:r
        total_value = total_value + values(i)*sample_sizes(i);
        total_sample_size = total_sample_size + sample_sizes(i);
    end

    mean =  total_value/total_sample_size;
    
end

function [stdev] = pooled_stdev(sd, sample_sizes)
    %{
    Return pooled standard deviation for multiple standard devation values
    weighted by sample size
    %}

    r = max(size(sd));
    total_value = 0;
    total_sample_size = 0;

    for i = 1:r
        total_value = total_value + (sd(i)^2)*(sample_sizes(i)-1);
        total_sample_size = total_sample_size + sample_sizes(i);
    end

    stdev = (total_value/(total_sample_size-r))^(1/2);

end

