clear 
clc
% Osiloskop
osilos = daq.createSession('ni');
osilos.Rate = 250000;
osilos.DurationInSeconds = 1;
addAnalogInputChannel(osilos,'Dev1','ai0','Voltage');
% setting durasi
time = linspace(0,1,250000);
% lakukan pengukuran
inData = startForeground(osilos);
% menampilkan plot
subplot(2,1,2);
plot(time,inData);