clear % membersihkan history
clc % membersihkan command window
import elvis.Multimeter;
import elvis.VarPowSupply;
% membuat objek baru dari variable power supplies
vps = VarPowSupply;
% ubah tegangan positif menjadi 5 volt
dmm = elvis.Multimeter('dcvoltage');
sampling = 100; % millisec
N = 100;
starttime = tic;
elapsedtime = 0;
nexttime = elapsedtime + sampling*0.001;
data_pengukuran = zeros(1,100);
idx = 1;
for i = 1:10
disp(dmm.readData)
end