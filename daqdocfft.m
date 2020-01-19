% Daqdocfft outputs the frequency and magnitude of data, which is then ploted in MATLAB.
function [f,mag] = daqdocfft(data,Fs,blocksize);
% [F,MAG]=DAQDOCFFT(X,FS,BLOCKSIZE) calculates the FFT of audio signal X
% using sampling frequency FS and the SamplesPerTrigger
% provided in BLOCKSIZE
%Pseudo Code for calculating the FFT
xfft = abs(fft(data));
% Avoid taking the log of 0.
index = find(xfft == 0);
xfft(index) = 1e-17;
% Finding the magnitude in dB.
mag = 20*log10(xfft);
mag = mag(1:floor(blocksize/2));
f = (0:length(mag)-1)*Fs/blocksize;
f = f(:);
return