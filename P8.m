clear
clc
% setting tegangan keluaran dari variable power supply
vps = elvis.VarPowSupply;
% membuat analog input pada ai0
s = daq.createSession('ni');
s.Rate = 8000;
addAnalogInputChannel(s,'Dev1','ai0','Voltage');
% setting durasi
s.DurationInSeconds = 0.01;
time = linspace(0,0.01,8000*0.01);
% tahan 1 detik
pause(1);
% lakukan pengukuran
inData = startForeground(s);
% menampilkan plot
plot(time,inData)