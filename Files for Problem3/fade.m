function [ y ] = fade(x, level)
%
% fade(X): this function fades the audio vector X.
%
% fade(X, LEVEL): fades the audio vector X from 100% down to LEVEL.  
%                 fade(X) = fade(X, 0).
%                 LEVEL must be >= 0 and <= 1
%
% Examples:  
% Y = fade(X);
% Y = fade(X, LEVEL); 

% input validation
if nargin == 2 && (level < 0 || level > 1)
   disp('Error: your input of level must be between 0 and 1!');
   y = x;
   return 
end

% level initialization if needed
if nargin == 1
    level = 0;
end

% create the ramp vector
t = linspace(1, level, length(x));

% multiply the audio vector with the ramp vector to fade
y = t .* x;

% author: Xuanxuan Wang