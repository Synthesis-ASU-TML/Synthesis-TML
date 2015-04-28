
% soundfiles(n, 3):	cell array of sound file names, sampling rate, duration
soundfiles  = { 'cherokee.aif',	  44100, 3; ...
		'isthatyou.aiff', 44100, 2 }

% moredescr(m, 2):	cell array of descriptor names and 
%			optional list of symbol names
descriptors = { 'Excitation', {}; ...			% 3 descriptors,
		'Pho',	      {'a', 'b', 'c', 'd'}; ... % two of which are symbolic and 
		'Nem',        {'xx', 'yyy', 'zzz'}  ... % come with their symbol lists
	      }

% unitdata(n, m):	matrix of descriptor values
data	    = [99.99 0 1; ... % unit data for 3 self-defined descriptors,
	        3.7  3 2]     % one line per sound file

format compact

[dd, sf, sy, ud] = catart_export_files('test', descriptors, soundfiles, data)
