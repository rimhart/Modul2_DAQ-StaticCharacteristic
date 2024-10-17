clear
clc
import elvis.Fgen;
% membuat objek FGEN (function generator)
generator_sinyal = Fgen;
generator_sinyal.Amplitude = 4; %set amplitude to 4V
generator_sinyal.Frequency = 1500; %set frequency to 2Hz
generator_sinyal.start; %start the function generator
generator_sinyal.Function = 'sine'; %change the waveform
finishtime = 200; %seconds
starttime = tic;
elapsedtime = 0;
while true
 elapsedtime = toc(starttime);
 if elapsedtime >= finishtime
 generator_sinyal.stop;
 break;
 end
end
delete(generator_sinyal);  