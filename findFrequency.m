clear all;
numberOfChannel=1;
numberOfBits=8;
sapleRate=44100;
duration=1; %record blocking time:

while 1
AI = audiorecorder(sapleRate,numberOfBits,numberOfChannel);
disp('Start speaking.')
recordblocking(AI,3);
disp('End of Recording.');

ActualRate=sapleRate;
SamplesPerTrigger=duration*ActualRate;

blocksize=SamplesPerTrigger;
Fs = ActualRate;
data=getaudiodata(AI);

delete(AI)
clear AI

figure(2)
plot(data)

[f,mag] = daqdocfft(data,Fs,blocksize);

figure(1)
plot(f,mag)
grid on
ylabel('Magnitude (dB)')
xlabel('Frequency (Hz)')
title('Frequency Components of Tuning Fork')
[ymax,maxindex0]= max(mag);
% %Finding first harmonic frequency:
mag1=mag(maxindex0+50:2500);
[y1max,max2]=max(mag1);
 maxindex1=maxindex0+max2+48;
 
 %Finding second harmonic frequency:
 mag2=mag(maxindex1+50:2500);
[y2max,max3]=max(mag2);
 maxindex2=maxindex1+max3+48;
 
 fprintf('fundemental frequency is %.1f \n First harmonic frequency is %.1f \n Second harmonic frequency is %.1f\n',maxindex0-1,maxindex1,maxindex2)
 disp('________________________________________________________')
end