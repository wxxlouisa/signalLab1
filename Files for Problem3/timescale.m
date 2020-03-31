function [ y ] = timescale(x, p, q)
% update: this function time-scales the vector x at 
% Q/P times the original speed
%
% timescale(x, p, q): this function time-scales the vector x at 
% P/Q times the original speed. p and q must be positive integers.  
%
% Example:  
% This will slow the signal x down by a factor of 2/3.
% y = timescale(x, 2, 3)
%

y = resample(x, p, q);
