function [] = plottime(time, head)
%{
Plotting function that converts time-fraction to time in seconds
   time: vector
   head: vector
Returns: none
%}
SECONDS_IN_DAY = 24*60*60;
time = time*SECONDS_IN_DAY;
difference = time(1);
time = time - difference;
plot(time,head)
end
