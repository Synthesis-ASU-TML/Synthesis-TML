% export corpus with whole soundfile units, to be read by catart version 0.9
%
% basename:		corpus name prefix including path
% moredescr(m, 2):	cell array of descriptor names to add and 
%			optional list of symbol names
% soundfiles(n, 3):	cell array of sound file names, sampling rate, duration
% unitdata(n, m):	matrix of descriptor values
%
% LATER: segments(n, 1): cell array of vectors of segment times [s]
%			 (k segments all together)
%
% EXAMPLE:
% [d, sf, sy, ud] = catart_export_files('testex', ...
%	{'Excitation', {}; ...			 % 3 descriptors,
%	 'Pho',	       {'a', 'b', 'c', 'd'}; ... % two of which are symbolic and 
%	 'Nem',        {'x', 'y', 'z'} },    ... % come with their symbol lists
%	{'file1' 44100 1.11; 'file2' 32000 2.22}, ... % 2 files
%	[99.99 0 1; 3.7 2 3])			 % unit data


% [d, sf, sy, ud] = catart_export_files('testex', {'Excitation', {}; 'Pho', {'a', 'b', 'c', 'd'}; 'Nem', {'x', 'y', 'z'} }, {'file1' 44100 1.11; 'file2' 32000 2.22}, [99.99 0 1; 3.7 2 3])			 

function [descriptors, sf, sy, ud] = catart_export_files(basename, moredescr, soundfiles, unitdata)

% provide standard descriptors with columns:
% name, number, type, size, defmax, hidden, symbol-table, symbol-lookup
descriptors = { 'UnitID'	0 'int'    1 100 0 '()' '()'; ...
		'RelID'		0 'int'    1 100 0 '()' '()'; ...
		'UnitType'	0 'symbol' 1 100 1 '()' '()'; ...
		'SoundFile'	0 'symbol' 1 100 0 '()' '()'; ...
		'SoundSet'	0 'symbol' 1 100 0 '()' '()'; ...
		'WorkingSet'	0 'int'    1 100 1 '()' '()'; ...
		'Active'	0 'bool'   1 100 1 '()' '()'; ...
		'StartSample'	0 'int'    1 100 1 '()' '()'; ...
		'SampleSize'	0 'int'    1 100 1 '()' '()'; ...
		'StartTime'	0 'float'  1 100 0 '()' '()'; ...
		'Duration'	0 'float'  1 100 0 '()' '()'; ...
		'Relstart'	0 'float'  1 100 0 '()' '()'; ...
	       };

% add given descriptors, derive type from length of symbol list
sydescr = {'SoundFile'}; 
sylist  = { join(' ', smartquote(soundfiles(:, 1)')) };

for i = 1:size(moredescr, 1),
    if length(moredescr{i, 2}) > 0,
	type = 'symbol';

	% create strange coll format for symbol dict
	sydescr = [ sydescr(:); moredescr{i, 1} ];
	sylist  = [ sylist(:);  { join(' ', smartquote(moredescr{i, 2})) } ];
    else
	type = 'float';
    end
    
    descriptors(end+1, :) = { moredescr{i, 1}, 0, type, 1, 100, 0, '()', '()' };
end

numdescr = size(descriptors, 1);
descriptors(:, 2) = num2cell((0:numdescr-1)');	% correct number

% soundfiles
numsf      = size(soundfiles, 1);
sfpath     = soundfiles(:, 1);
sfsr       = cell2mat(soundfiles(:, 2));
sfduration = cell2mat(soundfiles(:, 3));

% create soundfile mat with columns:
% filename, full path, import limit (full length [s]), imported duration [ms]
sf = [ soundfiles(:, 1), sfpath(:, 1), ...
       num2cell(sfduration), num2cell(sfduration * 1000) ];

% whole soundfile units
numunits   = numsf;
null       = zeros(numunits, 1);
eins       = ones(numunits, 1);

% generate std.descriptor data
stdud = [ (0:numunits-1)', null, null ...	% UnitID, RelID, UnitType
	  (0:numsf-1)', null, ...		% SoundFile, SoundSet
	  null, eins, ...			% WorkingSet, Active
	  null, sfduration .* sfsr, ...		% StartSample, SampleSize
	  null, sfduration .* 1000, ...		% StartTime, Duration
	  null ...				% Relstart
	];

% glue standard to given unit data
ud = [stdud, unitdata];

% create strange coll format for symbol dict
sy = strcat(sydescr, {' , list '},  sylist, ' ;');

% write everything
cellwrite([ basename '.ds.txt' ], descriptors, 'noquotes');
cellwrite([ basename '.sf.txt' ], sf);
cellwrite([ basename '.sy.txt' ], sy, 'noquotes');
save     ([ basename '.ud.txt' ], 'ud', '-ascii');
