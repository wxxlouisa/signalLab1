function [ out ] = delay(sound, delay, Fs)
%
%This function can delay the audio by a specied time (seconds).
%And finally Plot the original signal and a delayed version of it.

%For example:
%delaySound = delay(sound, 0.5, 8000), so it is delayed by 0.5
%seconds.
%
%delay(sound, DELAY): this function delay the sound with DELAY seconds'
%prepending silence
%
%delay(sound, DELAY, Fs): delay the audio with DELAY seconds' prepending
%silence in the sample rate Fs
%
%if the input does not contain Fs, the default value of Fs will be 8000.
%

if nargin == 2
    Fs = 8000;
end

len = Fs * delay;
pre = zeros(fix(len), 1);

out = [pre; sound];

% draw the two versions
subplot(1,2,1);plot(sound);
subplot(1,2,2);plot(out);
return

% author: Xuanxuan Wang

