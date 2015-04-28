% join -- join values together with given separator 
%
% join builds a list of text/numeric values separated by a string given in
% parameter. 
%
% String values are neither quoted, nor escaped.
% An empty value [] is converted to SQL's NULL.
%
% $Id: join.m,v 1.1 2002/02/22 18:40:04 schwarz Exp $

% $Log: join.m,v $
% Revision 1.1  2002/02/22 18:40:04  schwarz
% Moved sqlfind* and join from dbi.m to their own files.
%

function str = join(sep, varargin)
    n = length(varargin);
    s = cell(1, n*2-1);
    for i = 1:n
	var = varargin{i};
	classvar = class(var);

	switch classvar
	    case {'char'}
	  	s(i*2-1)= { var };
    
	    case {'double', 'single', 'int8',  'int16',  'int32', ...
	  			      'uint8', 'uint16', 'uint32'}
	  	if isempty(var),
	  	    s(i*2-1) = { 'NULL' };
	  	else
	  	    s(i*2-1) = { num2str(var) };
	  	end
    
	    case 'cell'
	  	s(i*2-1) = { join(sep, var{:}) };
    
	    otherwise
	        error([ 'We cannot deal with type' classvar ]);
	end
    end
    s(2:2:n*2-2) = { sep };
    str = [s{:}];
% end of function join
