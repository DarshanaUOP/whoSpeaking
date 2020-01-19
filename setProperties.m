function [sapleRate,numberOfBits,numberOfChanne,duration]=setProperties(valsampleRate,valnumberofbits,valnumberOfChannels,valduration)

switch valsampleRate
    case 1
      sapleRate= 8000; 
    case 2
      sapleRate=11025;
    case 3
      sapleRate= 22050;
    case 4
      sapleRate=44100;
    case 5
      sapleRate=48000;
    otherwise
      sapleRate=96000;
end

switch valnumberOfChannels
    case 1
        numberOfChanne=1;
    otherwise
        numberOfChanne=2;
end

switch valduration
    case 1
        duration=1; 
    otherwise
        duration=2;
end

switch valnumberofbits
    case 1
       numberOfBits=8; 
    case 2
       numberOfBits=16;
    otherwise
       numberOfBits=24;
end

return