

if ~size(whos('args'),1)
	construct_tract;
	args.final_theta = final_theta;
	args.shape = shape;
end

new

make_tract_normalised(args)


save_script('vocalys.mlys')

%playing_frequency(50,.7);
%reset_time();


send_message('noise-level',0.1);
send_message('midi-note-on',[1 48 35])
%send_message('gamma',1.5,1.5)
run(.5)
%send_message('midi-note-on',[1 55 104])
run(.5)
%send_message('midi-note-off',[1 60 0])
%run(.4)

play()

t=linspace(0,get_info('time'),get_info('time-sample'));
data=get_output();

%{
figure(1)
clf

reed_freq = data(2,:);
pitch_measured = data(3,:);
plot(t,data(2,:))

hold on
plot(t,pitch_measured,'r');
plot([t(1) t(end)],[get_info('value-for-message','note-freq',0) get_info('value-for-message','note-freq',0)],'g');
legend('reed freq', 'measured pitch','target pitch');

for k=1:200
stem(k/220,400,'--','Color',[.8 .8 .8])
end
%}

%{

situation de chevrottement

send_message('noise-level',0.1);
send_message('midi-note-on',[1 57 30])
run(2)

%}



