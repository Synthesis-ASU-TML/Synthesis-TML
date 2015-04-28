
if ~size(whos('args'),1)
	construct_tract;
	args.final_theta = final_theta;
	args.shape = shape;
	make_tract_normalised(args);
end
set_info('progress-bar-state',false);

args.shape = shape;
args.final_theta = final_theta;

alpha = .25;
beta = .2;

% full range 25:68

for midi_note = 25:68

	midi_note

	target_freq = midi_to_freq(midi_note);
	
	for gamma_index = 1:4

		gamma = alpha*(gamma_index - 1) + beta;
		
		range = [20 70];
		lb_ok = playing_frequency(range(1),gamma) < target_freq;
		ub_ok = target_freq < playing_frequency(range(2),gamma);
		
		if  lb_ok && ub_ok  
			reed_freq(midi_note,gamma_index) = fzero(@(x) playing_frequency(x,gamma)-target_freq,range);
		else
			reed_freq(midi_note,gamma_index) = inf;
		end
		if get_info('running-state') == 2
			break
		end

	end

	if get_info('running-state') == 2
		break
	end
	
end

save('reed_freq.mat','reed_freq')


