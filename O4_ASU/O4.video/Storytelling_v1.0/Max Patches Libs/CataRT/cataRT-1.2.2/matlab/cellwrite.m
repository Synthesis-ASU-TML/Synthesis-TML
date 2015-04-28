
function cellwrite (filename, m, options)

    if nargin > 2  &  strcmpi(options, 'noquotes'),
	noquotes = 1;
    else
	noquotes = 0;
    end
    
    s = size(m);
    fid = fopen(filename, 'w');
    
    for i = 1:s(1),
	for j = 1:s(2),
	    elem = m{i, j};
	    if ischar(elem) & ~noquotes,
		fprintf(fid, '"%s" ', elem);
	    else
		fprintf(fid, '%s ', num2str(elem));		
	    end
	end
	fprintf(fid, '\n'); 
    end

    fclose(fid);
    