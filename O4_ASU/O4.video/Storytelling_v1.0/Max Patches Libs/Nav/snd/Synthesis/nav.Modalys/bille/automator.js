
var automator;
var parameters;

function create()
{
	automator = this.patcher.getnamed("parameters");
	if( automator )
	{
		this.patcher.remove(automator);
	}
	automator = this.patcher.newdefault(30,30,"patcher","parameters");
	automator.varname  = "parameters";
	messnamed("mlys.in","ctrllist");
}

function from_mlys()
{

	var i;
	code = arguments[0];
	if( code == "ctrllist")
	{
		var subpatcher = automator.subpatcher();
		var h_pos = 10;
		var v_pos = 10;
		var h_pos_curr;
		var v_pos_curr;
		var width_curr;
		var height_curr;
		
		h_pos_curr = h_pos + 10;
		v_pos_curr = v_pos;
		width_curr = 100;
		height_curr = 20;
		
		tab = subpatcher.newdefault(h_pos_curr,v_pos_curr,"tab","@tabs","generate",
						"@patching_rect",h_pos_curr,v_pos_curr,width_curr,height_curr);

		tab_trigger = subpatcher.newdefault(h_pos_curr,v_pos_curr+25,"trigger","bang");
		tab_trigger.hidden = true;
		subpatcher.hiddenconnect(tab,0,tab_trigger,0);
		
		generate_opendialog = subpatcher.newdefault(h_pos_curr,v_pos_curr+50,"opendialog","folder");
		generate_opendialog.hidden = true;
		subpatcher.hiddenconnect(tab_trigger,0,generate_opendialog,0);
		
		generate_opendialog_prepend = subpatcher.newdefault(h_pos_curr,v_pos_curr+75,"prepend","generate");
		generate_opendialog_prepend.hidden = true;
		subpatcher.hiddenconnect(generate_opendialog,0,generate_opendialog_prepend,0);
		
		sender = subpatcher.newdefault(h_pos_curr,v_pos_curr + 100,"send","parameters");
		sender.hidden = true;
		subpatcher.hiddenconnect(generate_opendialog_prepend,0,sender,0);
	
		h_pos_curr += width_curr + 10 + 40;
		v_pos_curr = v_pos;
		
		c = subpatcher.newdefault(h_pos_curr,v_pos_curr,"comment");
		c.set("order");
		width_curr = 60;
		h_pos_curr += width_curr + 10;	
	
		c = subpatcher.newdefault(h_pos_curr,v_pos_curr,"comment");
		c.set("min");
		width_curr = 60;
		h_pos_curr += width_curr + 10;

		c = subpatcher.newdefault(h_pos_curr,v_pos_curr,"comment");
		c.set("current");
		width_curr = 60;
		h_pos_curr += width_curr + 10;

		c = subpatcher.newdefault(h_pos_curr,v_pos_curr,"comment");
		c.set("max");
		width_curr = 60;
		h_pos_curr += width_curr + 10;

		c = subpatcher.newdefault(h_pos_curr,v_pos_curr,"comment");
		c.set("iterations");
		width_curr = 60;
		h_pos_curr += width_curr + 10 ;
		
		h_pos_curr = h_pos;
		v_pos_curr += 25;
		
		parameters = new Object();

		for( i = 0 ; i < arguments.length-1 ; i ++ )
		{
			var message_name = arguments[i+1];
			
			parameters[message_name] = new Array(6);
		
			h_pos_curr = h_pos;

			parameter_comment_box = subpatcher.newdefault(h_pos_curr,v_pos_curr,"comment");
			parameter_comment_box.set(message_name);
			width_curr = 160;
			h_pos_curr += width_curr + 10;


			parameters[message_name][1] = subpatcher.newdefault(h_pos_curr,v_pos_curr,"number");	
			h_pos_curr += 60;
			
			width_curr = 60;
			height_curr = 20;
			parameters[message_name][2] = subpatcher.newdefault(h_pos_curr,v_pos_curr,"flonum",
										"@patching_rect",h_pos_curr,v_pos_curr,width_curr,height_curr);
			h_pos_curr += width_curr + 10;
			
			parameters[message_name][3] = subpatcher.newdefault(h_pos_curr,v_pos_curr,"flonum",
										"@patching_rect",h_pos_curr,v_pos_curr,width_curr,height_curr);
			h_pos_curr += width_curr + 10;

			parameters[message_name][4] = subpatcher.newdefault(h_pos_curr,v_pos_curr,"flonum",
										"@patching_rect",h_pos_curr,v_pos_curr,width_curr,height_curr);
			h_pos_curr += width_curr + 10;
			
			parameters[message_name][5] = subpatcher.newdefault(h_pos_curr,v_pos_curr,"number",
										"@patching_rect",h_pos_curr,v_pos_curr,width_curr,height_curr);	
			
			messnamed("mlys.in","getinfo","value-for-message",message_name,0)
			
			v_pos_curr += 25;
		}
	}
	else
	if( code == "getinfo")
	{

		if( arguments[1] == "value-for-message" )
		{
			var message_name = arguments[2];
			var value = arguments[3];
			var flonum = parameters[message_name][2];

			flonum.set(value*.1);
			flonum = parameters[message_name][3];
			flonum.set(value);
			flonum = parameters[message_name][4];
			flonum.set(value*10);
		}
	}
}

function format3(integer)
{
	if( 1 <= integer && integer <= 999 )
	{
		var n = 2 - Math.floor(Math.log(integer)/Math.LN10);
		var prepend = "";
		for( var i = 0 ; i < n ; i ++ )
		{
			prepend = prepend + "0";
		}
		return prepend + integer;
	}
	else
	{
		return "" + integer;
	}
}

function generate_recursive(order,file_name,data,file)
{
	var parameters_for_this_order = new Object();
	var tail = true;
	var item;
	for (item in parameters)
	{
		if( parameters[item][1].getvalueof() == order )
		{
			tail = false;
			parameters_for_this_order[item] = true;
		}
	}
	if( ! tail )
	{	
		var n;
		var have_n = false;
		for( item in parameters_for_this_order )
		{
			var current_n = parameters[item][5].getvalueof();
			if( ! have_n )
			{
				n = current_n;
				have_n = true;
			}
			else
			{
				if( n != current_n )
				{
					post("WARNING: different iterations requested for parameter " + item + ", using the first one encoutered : " + n + "\n");
				}
			}
		}
		for( var i = 0 ; i < n ; i ++ )
		{
			var fn = file_name + "_";
			var send_commands = "";
			for( item in parameters_for_this_order )
			{
				var min = parameters[item][2].getvalueof();
				var curr = parameters[item][3].getvalueof();
				var max = parameters[item][4].getvalueof();
				var value;
				if( n == 1 )
				{
					value = min;
				}
				else
				{
					var w = i/(n-1);
					value = (1-w)*min + w*max;
				}
				send_commands += "send_message(" + "'" + item + "'" + "," + value + ")" + "\n";
				fn += item + "_";
			}
			fn += format3(i+1);
			generate_recursive(order+1,fn,data + send_commands,file);
		}
	}
	else
	{
		// stopping on condition
		
		data += "set_info('value-for-message','stop-on-condition',0,1)" + "\n";
		
		// adding the run and save_aiff command

		data += "run(20)" + "\n";
		
		var str = file_name.split(':');

		data += "save_aiff('" + str[1] + ".aiff" + "')" + "\n";

		// data += "quit" + "\n";
		
		data += "set_info('value-for-message','stop-on-condition',0,0)" + "\n";
		data += "set_info('value-for-message','monitor-done',0,0)" + "\n";
		data += "reset_time()" + "\n";

		file.writestring(data);
		
		//var f = new File(file_name + ".mlys" ,"write");
		//f.open();
		//f.writestring(data);
		//f.close();
	}
}

function generate(path)
{
	post("generated mlys scripts in " + path + "\n");

	var f = new File(top_name() + ".mlys","read");
	var length = f.eof;
	f.open();
	var data = f.readstring(length);
	f.close();
	
	// setting all non variying parameters to their current situation
	
	for (var item in parameters)
	{
		var order = parameters[item][1].getvalueof();
		if( order == 0 )
		{
			var value = parameters[item][3].getvalueof();
			data += "send_message(" + "'" + item + "'" + "," + value + ")" + "\n";
		}
	}
	
	// and setting num modes to 4000
	
	data += "send_message('num-modes',4000)" + "\n";
	data += "run(1e-4) " + "\n";
	
	var f = new File(path + top_name() + ".mlys" ,"write");
	f.open();
	f.writestring(data);
	generate_recursive(1,path + top_name(),"",f);
	f.eof = f.position;
	f.close();
	post("generation completed" + "\n");
}

function top_name()
{
	prev = this.patcher;
	owner = prev.parentpatcher;
	while( owner )
	{
		prev = owner;
		owner = prev.parentpatcher;
	}
	if ( prev )
	{
		return prev.name;
	}
}


