
% in:	cell array of strings
% out:	cell array of quoted strings

function out = smartquote(in)
    
    out = cell(size(in));
    for i = 1:prod(size(in)),
	out{i} = ['"' in{i} '"'];
    end
    