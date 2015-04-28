

new()

areas = load('API_301_i.txt'); 
%areas = load('API_308_u.txt');
%areas = load('API_307_o.txt');
%areas = load('API_303_E.txt');
%areas = load('API_304_a.txt');

radii = sqrt(areas/pi) * 1e-2;

dz = 0.39682 * 1e-2;

z = (0:(length(radii)-1))' * dz;


shape = [z radii];

nc = 2;

[M,S] = construct_pipe(nc,shape,[],[],0,0);

matlabtomesh(M.node,M.elt,'h','tract.mesh');

unix('modalys < compute.mlys')

[f,l,m] = modal_to_matlab('tract.modal');


new();

N_modes=length(f);
N_holes=length(S.ch);
N_points=2;

modes_reduced = zeros(size(f,1), N_points);

modes_reduced(:,1) = mean(m(:,1:(2*nc+1)^2),2);

modes_reduced(:,end) = mean(m(:,S.out),2);


all_modes = {};
for k = 1:N_modes
  all_modes = {all_modes{:} const(modes_reduced(k,:))};
end

nm = const(N_modes);
f_c = const(f');
l_c = const(l');
l = 15 * sqrt(f);
l(1) = 10;
l_c = const(l);

tube = make_object('MULTIPLE-POINTS',nm,f_c,l_c,all_modes);

save_object(tube,'tract_reduced.modal');

final_theta = 0;
