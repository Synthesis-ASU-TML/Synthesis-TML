function [tube_in,bell_access] = make_instrument(shape,final_theta,impedance)

if false 
[tube,tube_in,tube_out] = make_tube('tract_reduced_a.modal');

else

[tube_a,tube_in_a,tube_out_a] = make_tube('tract_reduced_a.modal');
[tube_e,tube_in_e,tube_out_e] = make_tube('tract_reduced_e.modal');
[tube_o,tube_in_o,tube_out_o] = make_tube('tract_reduced_o.modal');
[tube_u,tube_in_u,tube_out_u] = make_tube('tract_reduced_u.modal');

blend = make_controller('DYNAMIC',4,-1,[1 0 0 0],'blend');

tube = make_object('MELT-HYBRID',blend,tube_a,tube_e,tube_o,tube_u);
tube_in = make_access_hybrid(tube,tube_in_a,tube_in_e,tube_in_o,tube_in_u);
tube_out = make_access_hybrid(tube,tube_out_a,tube_out_e,tube_out_o,tube_out_u);

end

rho = 1.2;
Xs = 7.20877e-06;
c_s=sqrt(1/(rho*Xs));

R = 7e-3;

%R = shape(end,2);

if true

bell = make_object('RADIATOR',const(shape(end,2)),const(90-final_theta/pi*180),rho,c_s);
bell_access = make_access(bell,const(1),'NORMAL');
make_connection('ADHERE',tube_out,bell_access);

else

hole_position_weight = make_controller('EXPRESSION',1,-1, ...
					[	'R = in(1,1); c = in(2,1) ; rho = in(3,1) ; ' ...
						'Fs = get_info(''sample-rate''); ' ...
						'if Fs == 22100 ' ... 
						'  A = 15.89 ; B = 1.247 ; C = 0.0259 ; ' ...
						'else ' ...
						'  if Fs == 44100 ' ...
						'    A = 34.35 ; B = 1.145 ; C = 0.0225 ; ' ...
						'  else ' ...
						'    if Fs == 44100 ' ...
						'      A = 70.8 ; B = 1.17 ; C = 0.017 ; ' ...
						'    else ' ...
						'      A = .6*Fs ; B = 1.1873 ; C = 0.0218 ; ' ...
						'    end ; ' ...
						'  end ; ' ...
						'end ; ' ...
						'w = 1/(A*R+B) + C; ' ...
						'w = max(0,min(1,w)); ' ...
						'w'], ...
					 { const(R) , const(c_s), const(rho) });
	
	make_connection('POSITION',tube_out,const(0),hole_position_weight);
	bell_access = tube_out;
end





return

function [tube, tube_in,tube_out] = make_tube(file_name)

tube = make_object('READ-FROM-FILE',file_name);

N_modes=get_info('num-modes',tube);
N_points=2;

tube_hole_access_value = zeros(N_points,1);
tube_hole_access_value(1) = 1;
tube_in = make_access(tube,const(tube_hole_access_value),'DECODED');

tube_hole_access_value = zeros(N_points,1);
tube_hole_access_value(end) = 1;
tube_out = make_access(tube,const(tube_hole_access_value),'DECODED');

