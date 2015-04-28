function f = playing_frequency(midi_note,gamma)

f = NaN;

try
	get_info('value-for-message','tract-calibrate',0);
catch
	disp('please do a make_tract before evaluating this function');
end
set_info('progress-bar-state',false);
%make_tract(args);
set_message_level(0);
send_message('gamma',0,0);
send_message('pitch-measurer-signal-value',0);
send_message('pitch-measurer-state-value',0);
reset_time();
send_message('tract-calibrate',1);
send_message('noise-level',0);
send_message('midi-note-on',[1 midi_note 0]);
run(get_info('sample-period'));
send_message('gamma',gamma,.01);

run(.5-get_info('sample-period'));

send_message('tract-calibrate',0);

f_sig = get_info('value-for-message','pitch-measurer-signal-value',0);
f_state = get_info('value-for-message','pitch-measurer-state-value',0);

if 20 < f_sig && f_sig < 4000
	f = f_sig;
else
	if 20 < f_state && f_state < 4000
		f = f_state;
	end
end
