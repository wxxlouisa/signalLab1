function [ out ] = mixer(sound1, sound2, level1, level2)
%
% mixer(X, Y): this function mix the two audio vector X and Y.
%
% mixer(X, Y, LEVEL1, LEVEL2): mix the two audio vector X and Y , and their
% amplitude will multiplty LEVEL1 and LEVEL2 accordingly.
% if LEVEL1 AND LEVEL is not given, the default value will be 1.
%
% Notice that the final output will be normalized.
%
% Examples:  
% ret = mixer(sound1, sound2); 
% or
% ret = mixer(sound1, sound2, 0.5, 2); 

% find the  larger one
maxRow = max(size(sound1, 1), size(sound2, 1));
maxCol = max(size(sound1, 2), size(sound2, 2));

% make sure the two audio vector are of the same size
tmpA = zeros(maxRow, maxCol);
tmpB = zeros(maxRow, maxCol);
tmpA(1:size(sound1, 1), 1:size(sound1, 2)) = sound1;
tmpB(1:size(sound2, 1), 1:size(sound2, 2)) = sound2;

% set the amplitude level
if nargin <= 2 
    level1 = 1;
end
if nargin <= 3 
    level2 = 1;
end

% mix the audio 
x = tmpA .* level1 + tmpB .* level2;

ymin = -1;
ymax = 1;

% normalization into range[-1, 1]
out=(ymax-ymin).*(x-repmat(min(x,[],2),1,size(x,2)))./repmat((max(x,[],2)-min(x,[],2)),1,size(x,2))+ymin;
index=isnan(out);
out(index)=x(index);

return

% author: Xuanxuan Wang
