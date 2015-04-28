% re-export existing corpus, with added descriptors, to be read by catart 0.9 and higher
%
% basename:		corpus name prefix including path
% moredescr(m, 2):	cell array of descriptor names to add and 
%			optional list of symbol names
% newunitdata(n, m):	matrix of new additional descriptor values (for the
%			descriptors defined in moredescr)
% oldbasename:		corpus name prefix of corpus to which descriptors
%			are added (the sound file and segment definitions
%			are taken from this corpus) 
%
% EXAMPLE:
% oldbase = '../examples/maxmsp-loops';
% % oldud(n, x):	matrix of descriptor values loaded from existing corpus
%			This defines the units and sound files!
% oldud   = load([ oldbase '.ud.txt' ]);
% newud   = ... % some transformation of the loaded unit data in oldud 
% [d, sf, sy, ud] = catart_export_files('testnew', ...
%	{'ObliqueLoudness', {}; ...		 % 4 descriptors,
%	 'PitchOrder', {}; ...
%	 'Pho',	       {'a', 'b', 'c', 'd'}; ... % two of which are symbolic and 
%	 'Nem',        {'x', 'y', 'z'} },    ... % come with their symbol lists
%	newud,					 % new transformed unit data only
%	oldbase)				 % old base name: .sf.txt will be copied!

% [d, sf, sy, ud] = catart_export_files('testex', {'Excitation', {}; 'Pho', {'a', 'b', 'c', 'd'}; 'Nem', {'x', 'y', 'z'} }, {'file1' 44100 1.11; 'file2' 32000 2.22}, [99.99 0 1; 3.7 2 3])			 

function [descriptors, sy, ud] = catart_reexport_units(basename, moredescr, unitdata, oldbase)

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
numstddescr = size(descriptors, 1);

% add given descriptors, derive type from length of symbol list
sydescr = {}; 
sylist  = {};

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
descriptors(:, 2) = num2cell((0:numdescr-1)');	% correct numbering

% load old unitdata, keep only std. descriptors
oldud = load([ oldbase '.ud.txt' ]);
oldud = oldud(:, 1:numstddescr);

% glue standard to given unit data
ud = [oldud, unitdata];

% create strange coll format for symbol dict
sy = strcat(sydescr, {' , list '},  sylist, ' ;');

% write or copy everything
cellwrite([ basename '.ds.txt' ], descriptors, 'noquotes');
unix(['cp ' oldbase '.sf.txt ' basename '.sf.txt']);	% copy soundfiles list
cellwrite([ basename '.sy.txt' ], sy, 'noquotes');
save     ([ basename '.ud.txt' ], 'ud', '-ascii');
