autowatch = 1;
inlets = 1;
outlets = 1;

var D = new Array();
var P = new Array();

function msg_int(a)
{
	
	D.push(a);
	
	if (D.length > 4)
	{
		var l = D.length;
		if (D[l-4] == 0 && D[l-3] == 255 && D[l-2] == 0 && D[l-1] == 255)
		{
			//Why 68?  32 values at 2 bytes each, with 4 for the header
			if (D.length == 68)
			{
				P.length = 32;
				
				var i;
				for (i=0; i<32; i++)
				{
					var v = D[2*i] + 255*D[2*i+1];
				//	if (P[i] != v)
					{
						P[i] = v;
						outlet(0, "/sensor/" + i, (v) / 65536.0);
					}
				}
			}
			else
			{
				outlet(0, "/error/numberOfEntries", l);
			}
			
			D = Array();
		}
	}
	
}

