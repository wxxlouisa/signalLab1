function [out] = repeat(sound, N)
%
%This function can play a particular sound a specified number of times.
%

if N ~= fix(N)
    disp('Error: N cannot be a floating number!');
    out = [];
    return
end

if N < 0
    disp('Error: Please make sure N is a non-negative number!');
    out = [];
    return
end

% Here use the idea of Fast Power Algorithm 

out = [];
while N > 0
    if mod(N, 2) == 1
        out = [out; sound];
    end
    sound = [sound; sound];
    N = fix(N / 2);
end

return 

% author: Xuanxuan Wang
