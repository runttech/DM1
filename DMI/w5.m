%% piemērs
syms a b c d
syms a2 b2 c2 d2
A = [a b ; c d];
B = [a2 b2 ; c2 d2];
A
 
A =
 
[ a, b]
[ c, d]
 
A*B
 
ans =
 
[ a*a2 + b*c2, a*b2 + b*d2]
[ a2*c + c2*d, b2*c + d*d2]
 
A.*B
 
ans =
 
[ a*a2, b*b2]
[ c*c2, d*d2]
 
%% 1.simbolisko manīgo definēšana -1
x = syms('x');
{??? Error using ==> syms
Too many output arguments.
} 
x = sym('x');
sqrt(x^2)
 
ans =
 
(x^2)^(1/2)
 
x = sym('x','real')
 
x =
 
x
 
sqrt(x^2)
 
ans =
 
(x^2)^(1/2)
 
x = sym('x','positive')
 
x =
 
x
 
sqrt(x^2)
 
ans =
 
x
 
%% real - kompleks skaitlis, positive - lielāks pa nulli
%% 1.simbolisko manīgo definēšana -2
syms a b c d
A = [a b;c d]
 
A =
 
[ a, b]
[ c, d]
 
format compact
%% A' - transponēt matricu
A'
ans =
[ conj(a), conj(c)]
[ conj(b), conj(d)]
%% conj - kompleksi saistīts skaitlis
syms a b c d real
A = [a b;c d];
A'
ans =
[ a, c]
[ b, d]
%% Simbolisko matricu definēšana
A = sym('A',[2 2])
{??? Error using ==> error
Formatted arguments cannot be non-scalar numeric matrices.

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/@sym/sym.m',2180,0)">sym.sym>assumptions at 2180</a>
    error('symbolic:sym:sym:errmsg1','Second argument %s not recognized.',a);

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/@sym/sym.m',2148,0)">sym.sym>tomupad at 2148</a>
        assumptions(S,x,a);

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/@sym/sym.m',114,0)">sym.sym>sym.sym at 114</a>
            S.s = tomupad(x,a);
} 
A = sym('A%d%d',[2 2])
{??? Error using ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/@sym/sym.m',2408,0)">sym.sym>expression2ref at 2408</a>
Error: Unexpected '

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/@sym/sym.m',2378,0)">sym.sym>char2ref at 2378</a>
    s = expression2ref(x);

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/@sym/sym.m',2147,0)">sym.sym>tomupad at 2147</a>
        S = char2ref(x);

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/@sym/sym.m',114,0)">sym.sym>sym.sym at 114</a>
            S.s = tomupad(x,a);
} 
%% Simboliskās konstantes
delta = sym('1/10')
delta =
1/10
delta^6
ans =
1/1000000
delta = sym(1/10)
delta =
1/10
delta = sym(1/10,'f')
delta =
3602879701896397/36028797018963968
%% delta = sym(1/10,'f') f - parāda īsto datora 1/10 daļu
delta
delta =
3602879701896397/36028797018963968
delta = sym(1/10,'e')
delta =
eps/40 + 1/10
%% eps - mazākais skaitlis ko dators var attēlot
% piemērs par simboliskajām konstantēm
A = hilb(3)
A =
    1.0000    0.5000    0.3333
    0.5000    0.3333    0.2500
    0.3333    0.2500    0.2000
sym(A)
ans =
[   1, 1/2, 1/3]
[ 1/2, 1/3, 1/4]
[ 1/3, 1/4, 1/5]
%% Atvasināšana
%% diff()
syms x
diff(x^2)
ans =
2*x
%% Parciālie atvasinājumi
syms x y
z = x^2+y^3
z =
x^2 + y^3
diff(z,x)
ans =
2*x
diff(z,y)
ans =
3*y^2
% Daudzkārtīgie atvasinājumi
syms x
z = x^3;
diff(z,x,2)
ans =
6*x
syms x y
z = x^6+y^5;
diff(diff(z,x,3),y,2)
ans =
0
diff(z,x,3)
ans =
120*x^3
%% Integrēšana
%% ind()
%% indt()
%% int()
int(x^3)
ans =
x^4/4
syms x y
z = x^6+y^5;
int(z,x)
ans =
x^7/7 + x*y^5
int(z,y)
ans =
x^6*y + y^6/6
% Noteiktais integrālis
syms x
y = x
y =
x
int(y,x,0,5)
ans =
25/2
int(x^2,x,-3,3)
ans =
18
3^3/3-(-3)^3/3
ans =
    18
double(a)
{??? Error using ==> mupadmex
Error in MuPAD command: DOUBLE cannot convert the input expression into a double array.
If the input expression contains a symbolic variable, use the VPA function instead.

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/@sym/sym.m',927,0)">sym.sym>sym.double at 927</a>
            Xstr = mupadmex('mllib::double', S.s, 0);
} 
%% Robežas
limit(1/(x-1),x,1,'right')
ans =
Inf
limit(1/(x-1),x,1,'left')
ans =
-Inf
%% Vienādojumu risināšana
% nelineāru vienādojumu risināšana
syms x
solve(x^2-5*x+6,x)
ans =
 2
 3
solve(x^2-5*x+6==0,x)
{??? Error using ==> char
Conversion to char from logical is not possible.

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/solve.m',165,0)">solve>getEqns at 165</a>
   vc = char(v);

Error in ==> <a href="matlab: opentoline('/usr/local/matlab2009b/toolbox/symbolic/symbolic/solve.m',67,0)">solve at 67</a>
[eqns,vars] = getEqns(varargin{:});
} 
solve('x^2-5*x+6=0','x')
ans =
 2
 3
%% Izteiksmju vienkāršojumi
syms x
y = (sin(x))^2+(cos(x))^2
y =
cos(x)^2 + sin(x)^2
simplify(y)
ans =
1
% citi vienkāršojuma veidi
f = (x-1)*(x-2)*(x-5)
f =
(x - 1)*(x - 2)*(x - 5)
f1 = expand(f)
f1 =
x^3 - 8*x^2 + 17*x - 10
% expand atvērt iekavas
factor(f1)
ans =
(x - 5)*(x - 1)*(x - 2)
% factor ietver atpakaļ iekavās
syms x
h = x^5+x^4+x^3+x^2+x
h =
x^5 + x^4 + x^3 + x^2 + x
horner(h)
ans =
x*(x*(x*(x*(x + 1) + 1) + 1) + 1)
horner(f1)
ans =
x*(x*(x - 8) + 17) - 10
% substitūcijas
syms x y
z = x^2+y^3
z =
x^2 + y^3
%ieliksim y = 5*x
subs(z,y,5*x)
ans =
125*x^3 + x^2
% subs(z,y,5*x) z vienādojums,y aizvieto ar 5*x
%% Rezultātu grafiskā attēlošana
syms x
% syms definē x par simbolisko mainīgo
y = x^3-6*x^2+11*x-6;
ezplot(y)
ezplot(y,[-4 4])
%% "skaistākā" formulu attēlošana - (1)
syms x
y = (x-1)*(x-2)^2/((x-1)*(x-6))
y =
(x - 2)^2/(x - 6)
pretty(y)

         2
  (x - 2)
  --------
   x - 6
%% "skaistākā" formulu attēlošana - (2)
y2 = latex(y)
y2 =
\frac{{\left(x - 2\right)}^2}{x - 6}
y3 = ['$',y2,'$'];
text(0,0.5,y3,'Interpreter','latex','FontSize',32)
%% kā attēlot formulu (ar vienkāršo plot)
% 1.dots 
syms x
y = (x-1)*(x-2)/((x-3)*(x-4));
% 2. jāatrod atvasinājums
y_atv=diff(y);
y_atv=diff(y)
y_atv =
(x - 1)/((x - 3)*(x - 4)) + (x - 2)/((x - 3)*(x - 4)) - ((x - 1)*(x - 2))/((x - 3)*(x - 4)^2) - ((x - 1)*(x - 2))/((x - 3)^2*(x - 4))
y_atv=simplyfy(y_atv)
{??? Undefined function or method 'simplyfy' for input arguments of type 'sym'.
} 
y_atv = simplify(y_atv)
y_atv =
2/(x - 3)^2 - 6/(x - 4)^2
% 3.liksim x - skaitļu vektoru
x = [-1:0.01:1];
% 4. jāveic izteiksmju vektorizācija
% jāieliek punktiņi pirms reizinājumiem
y_vect = vectorize(y)
y_vect =
((x - 1).*(x - 2))./((x - 3).*(x - 4))
y_atv_vect = vectorize(y_atv)
y_atv_vect =
2./(x - 3).^2 - 6./(x - 4).^2
% 5. jāliek x kā skaitļu vektors
y_vect
y_vect =
((x - 1).*(x - 2))./((x - 3).*(x - 4))
y_num = ((x - 1).*(x - 2))./((x - 3).*(x - 4));
% copy-paste risinājums
% 2.risinājums
% izmanto eval ( reāla laika interpretātora funkcija)
y_num = eval(y_vect);
y_atv_num = eval(y_atv_vect);
% 6. zīmēsim plot funkciju
plot(x,y_num,x,y_atv_num)
% anotācija
y_ltx = latex(y);
y_atv_ltx = latex(y_atv);
h=legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$'])
h =
  177.0037
{Warning: Unable to interpret TeX string "\frac{\left(x - 1\right)\, \left(x - 2\right)}{\left(x - 3\right)\, \left(x - 4\right)}$"} 
{Warning: Unable to interpret TeX string "\frac{2}{{\left(x - 3\right)}^2} - \frac{6}{{\left(x - 4\right)}^2}$"} 
set(h,'Interpreter','latex')
diary off
