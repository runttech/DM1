%% Laboratorijas darbs No.2
% Uzdevums 1.

syms a b x;
y = solve(a + b - exp(b*x^2-a*x)-100,x; % atrisina vienādojumu
pretty(y); % 'skaisti' attēlo rezultātus

%% Uzdevums 2.
 
z = (x^2)/(sqrt(3*x^2+1));
z_atv = diff(z);
pretty(z_atv);
z_atv = simplify(z_atv);
z_vect = vectorize(z);
z_atv_vect = vectorize(z_atv);
x = -1:0.01:1;
z_num = eval(z_vect);
z_atv_num = eval(y_atv_vect);
plot(x,z_num,x,z_atv_num)

% anotācija

z_ltx = latex(z);
z_atv_ltx = latex(z_atv);
h=legend(['$',z_ltx,'$'],['$',z_atv_ltx,'$'])
set(h,'Interpreter','latex')