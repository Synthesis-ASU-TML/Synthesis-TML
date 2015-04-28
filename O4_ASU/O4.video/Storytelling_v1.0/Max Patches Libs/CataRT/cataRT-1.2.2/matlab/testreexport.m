
oldbase = '../examples/maxmsp-loops';
oldud   = load([ oldbase '.ud.txt' ]);
nunit   = size(oldud, 1);

% make up nonsense new unitdata
% new descr. ObliqueLoudness is linear combination of unit id and loudness,
% new descr. NoteOrder is order index of note number
% Q: why does this not work with permutation or ipermutation???
% [ns, porder] = sort(oldud(:, 14)); ns = porder(porder);
[ns, is] = sort(oldud(:, 14));
for i=1:nunit,
    ns(is(i)) = i;
end

phodata     = repmat([0:3]', ceil(nunit / 4), 1);
nemdata     = repmat([0:2]', ceil(nunit / 3), 1);
newud       = [ oldud(:, 1) * 0.1 + oldud(:, 16), ...
		ns, oldud(:, 14), ...
		phodata(1:nunit, :), ...
		nemdata(1:nunit, :) ];

[d, sy, ud] = catart_reexport_units('testnew', ...
	{'ObliqueLoudness', {}; ...		 % 5 descriptors,
	 'NoteOrder', {}; ...
	 'NoteNumber', {}; ...			 % pass through
	 'Pho',	       {'a', 'b', 'c', 'd'}; ... % two of which are symbolic and 
	 'Nem',        {'x', 'y', 'z'} },    ... % come with their symbol lists
	newud, ...
	oldbase);

