clear % membersihkan history
clc % membersihkan command window
import elvis.Multimeter;
% membuat objek DMM (digital multimeter) multimeter
digital_multimeter = Multimeter('dcvoltage');
% menampilkan DMM range
disp(digital_multimeter.RangeValStrings);
% rekam data
data_resistansi = digital_multimeter.readData;
% tampilkan data
str_to_print = sprintf('%0.2f V',data_resistansi);

disp(str_to_print);
