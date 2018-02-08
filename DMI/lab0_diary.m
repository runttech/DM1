format compact
pi
ans =
    3.1416
format short
pi
ans =
    3.1416
%% Izveidosim matricu
A = [2 3 4 ; 5 1 2 ; 3 6 7]
A =
     2     3     4
     5     1     2
     3     6     7
ans
ans =
    3.1416
A = [2 3 4 ; 5 1 2 ; 3 6 7];
%% Grafika zīmējums
% 2.kārtas polinoms
C = [2 2 2];
x = -4:2:6;
y = C(1)*x.^2+C(2)*x+C(3)
y =
    26     6     2    14    42    86
plot(x,y)% funkcija plot zīmē grafiku
% samazināsim soli
x2 = -6:0.1:6;
y2 = C(1)*x2.^2+C(2)*x2+C(3)
y2 =
  Columns 1 through 10
   62.0000   59.8200   57.6800   55.5800   53.5200   51.5000   49.5200   47.5800   45.6800   43.8200
  Columns 11 through 20
   42.0000   40.2200   38.4800   36.7800   35.1200   33.5000   31.9200   30.3800   28.8800   27.4200
  Columns 21 through 30
   26.0000   24.6200   23.2800   21.9800   20.7200   19.5000   18.3200   17.1800   16.0800   15.0200
  Columns 31 through 40
   14.0000   13.0200   12.0800   11.1800   10.3200    9.5000    8.7200    7.9800    7.2800    6.6200
  Columns 41 through 50
    6.0000    5.4200    4.8800    4.3800    3.9200    3.5000    3.1200    2.7800    2.4800    2.2200
  Columns 51 through 60
    2.0000    1.8200    1.6800    1.5800    1.5200    1.5000    1.5200    1.5800    1.6800    1.8200
  Columns 61 through 70
    2.0000    2.2200    2.4800    2.7800    3.1200    3.5000    3.9200    4.3800    4.8800    5.4200
  Columns 71 through 80
    6.0000    6.6200    7.2800    7.9800    8.7200    9.5000   10.3200   11.1800   12.0800   13.0200
  Columns 81 through 90
   14.0000   15.0200   16.0800   17.1800   18.3200   19.5000   20.7200   21.9800   23.2800   24.6200
  Columns 91 through 100
   26.0000   27.4200   28.8800   30.3800   31.9200   33.5000   35.1200   36.7800   38.4800   40.2200
  Columns 101 through 110
   42.0000   43.8200   45.6800   47.5800   49.5200   51.5000   53.5200   55.5800   57.6800   59.8200
  Columns 111 through 120
   62.0000   64.2200   66.4800   68.7800   71.1200   73.5000   75.9200   78.3800   80.8800   83.4200
  Column 121
   86.0000
x2 = -6:0.01:6;
y2 = C(1)*x2.^2+C(2)*x2+C(3);
plot(x2,y2)
shg
% vairāki grafiki uz vienas ass
plot(x,y:x2,y2)
{??? Error using ==> plot
Vectors must be the same lengths.
} 
plot(x,y,x2,y2)
%līnijas izskata maiņa (1)
plot(x,y)
plot(x,y,'o')
plot(x,y,'s')
plot(x,y,'r')
plot(x,y,':')
plot(x,y,'r:')
plot(x,y,'ro')
help plot
 PLOT   Linear plot. 
    PLOT(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    PLOT(Y) plots the columns of Y versus their index.
    If Y is complex, PLOT(Y) is equivalent to PLOT(real(Y),imag(Y)).
    In all other uses of PLOT, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    PLOT(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, PLOT(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; PLOT(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    PLOT(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, PLOT(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The PLOT command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    PLOT cycles through the colors in the ColorOrder property.  For
    monochrome systems, PLOT cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while PLOT(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, PLOT uses no marker. 
    If you do not specify a line style, PLOT uses a solid line.
 
    PLOT(AX,...) plots into the axes with handle AX.
 
    PLOT returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, PLOT(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also <a href="matlab:help plottools">plottools</a>, <a href="matlab:help semilogx">semilogx</a>, <a href="matlab:help semilogy">semilogy</a>, <a href="matlab:help loglog">loglog</a>, <a href="matlab:help plotyy">plotyy</a>, <a href="matlab:help plot3">plot3</a>, <a href="matlab:help grid">grid</a>,
    <a href="matlab:help title">title</a>, <a href="matlab:help xlabel">xlabel</a>, <a href="matlab:help ylabel">ylabel</a>, <a href="matlab:help axis">axis</a>, <a href="matlab:help axes">axes</a>, <a href="matlab:help hold">hold</a>, <a href="matlab:help legend">legend</a>, <a href="matlab:help subplot">subplot</a>, <a href="matlab:help scatter">scatter</a>.

    Overloaded methods:
       <a href="matlab:help timeseries/plot">timeseries/plot</a>
       <a href="matlab:help phytree/plot">phytree/plot</a>
       <a href="matlab:help clustergram/plot">clustergram/plot</a>
       <a href="matlab:help HeatMap/plot">HeatMap/plot</a>
       <a href="matlab:help channel.plot">channel.plot</a>
       <a href="matlab:help cfit/plot">cfit/plot</a>
       <a href="matlab:help sfit/plot">sfit/plot</a>
       <a href="matlab:help fints/plot">fints/plot</a>
       <a href="matlab:help idfrd/plot">idfrd/plot</a>
       <a href="matlab:help idmodel/plot">idmodel/plot</a>
       <a href="matlab:help iddata/plot">iddata/plot</a>
       <a href="matlab:help idnlhw/plot">idnlhw/plot</a>
       <a href="matlab:help idnlarx/plot">idnlarx/plot</a>
       <a href="matlab:help mpc/plot">mpc/plot</a>
       <a href="matlab:help rfckt.plot">rfckt.plot</a>
       <a href="matlab:help frd/plot">frd/plot</a>
       <a href="matlab:help dspdata.plot">dspdata.plot</a>
       <a href="matlab:help ntree/plot">ntree/plot</a>
       <a href="matlab:help wdectree/plot">wdectree/plot</a>
       <a href="matlab:help dtree/plot">dtree/plot</a>
       <a href="matlab:help edwttree/plot">edwttree/plot</a>
       <a href="matlab:help rwvtree/plot">rwvtree/plot</a>
       <a href="matlab:help wvtree/plot">wvtree/plot</a>

    Reference page in Help browser
       <a href="matlab:doc plot">doc plot</a>

plot(x,y,'kh-.'
??? plot(x,y,'kh-.'
                   |
{Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
} 
plot(x,y,'kh'
??? plot(x,y,'kh'
                 |
{Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
} 
plot(x,y,'kh-.')
plot(x,y,'rh-.')
plot(x,y,'kh-.')
plot(x,y,'kd-.')
plot(x,y,'kx-.')
plot(x,y,'kp-.')
plot(x,y,'k+-.')
plot(x,y,'kh-.')
% vairāki grafiki uz vienas ass (papildinājums)
plot(x,y,'kh-.',x2,y2,'bd-')
plot(x,y,'kh-.',x2,y2,'b-')
plot(x,y,'kh-.',x2,y2,'bd-')
% citas gradiskās funkcijas
stem(x,y)
staris(x,y)
{??? Undefined function or method 'staris' for input arguments of type 'double'.
} 
stairs(x,y)
%% vairāki grafiki uz vienas ass (2)
t = 0:0.01:1;
f1=1;f2=1;
y1 = sin(2*pi*f1*t);
y2 = cos(2*pi*f1*t);
y2 = cos(2*pi*f2*t);
stairs(t,y1,'k')
hold on % iesaldēt asis
stairs(t,y2'r')
??? stairs(t,y2'r')
                |
{Error: Unexpected MATLAB expression.
} 
stairs(t,y2,'r')
hold off % izslēgt iesaldēšanu
% uzraksti uz asīm
xlabel('t,s')
ylabel('U,V')
grid
title('Pirmais grafiks')
legend('sinusoīda','kosinusoīda')
gtext('teksts ko ieliksim ar peles palīdzību')
% datu nolasīšana
ginput(2)
ans =
    0.1244    0.7164
    0.6317   -0.6813
% interaktīva graika maiņa

mans_grafiks
{??? Input argument "X1" is undefined.

Error in ==> <a href="matlab: opentoline('/home/user/matlab_darbi/mans_grafiks.m',21,0)">mans_grafiks at 21</a>
stairs1 = stairs(X1,ymatrix1,'Parent',axes1);
} 
mans_grafiks(t,y1,y2)
{??? Error using ==> mans_grafiks
Too many input arguments.
} 
mans_grafiks(t,y1,y2)
{??? Error using ==> mans_grafiks
Too many input arguments.
} 
mans_grafiks(t,y1,y2)
{??? Error using ==> mans_grafiks
Too many input arguments.
} 
mans_grafiks(t,y1,y2)
{??? Error using ==> mans_grafiks
Too many input arguments.
} 
mans_grafiks(t,y1)
{??? Index exceeds matrix dimensions.

Error in ==> <a href="matlab: opentoline('/home/user/matlab_darbi/mans_grafiks.m',23,0)">mans_grafiks at 23</a>
set(stairs1(2),'MarkerFaceColor',[0 0 0],'Marker','hexagram','LineWidth',6,...
} 
 opentoline('/home/user/matlab_darbi/mans_grafiks.m',23,0)
%% Lisažu figuras
edit
lisazur
lisazur
hold off
lisazur
lisazur
lisazur
lisazur
lisazur
lisazur
lisazur
lisazur
lisazur
lisazur
lisazur
{??? Undefined function or variable 'lg'.

Error in ==> <a href="matlab: opentoline('/home/user/matlab_darbi/lisazur.m',2,0)">lisazur at 2</a>
f1 = 212; f2 = lg;
} 
lisazur
{??? Undefined function or variable 'lg20'.

Error in ==> <a href="matlab: opentoline('/home/user/matlab_darbi/lisazur.m',2,0)">lisazur at 2</a>
f1 = 212; f2 = lg20;
} 
lisazur
% Modify expression to add input arguments.
% Example:
%   a = [1 2 3; 4 5 6]; 
%   foo(a);

lisazur
{??? Input argument "f1" is undefined.

Error in ==> <a href="matlab: opentoline('/home/user/matlab_darbi/lisazur.m',8,0)">lisazur at 8</a>
x = cos(2*pi*f1*t);
} 
lisazur2(5,8)
{??? Undefined function or method 'lisazur2' for input arguments of type 'double'.
} 
lisazur2(6,7)
{??? Undefined function or method 'lisazur2' for input arguments of type 'double'.
} 
lisazur_2(6,7)
{??? Undefined function or method 'lisazur_2' for input arguments of type 'double'.
} 
lisazur_2(6,7)
{??? Undefined function or method 'lisazur_2' for input arguments of type 'double'.
} 
lisazur2(6,7)
{??? Undefined function or method 'lisazur2' for input arguments of type 'double'.
} 
lisazur3(6,7)
{??? Undefined function or method 'lisazur3' for input arguments of type 'double'.
} 
lisazur2(6,7)
{??? Undefined function or method 'lisazur2' for input arguments of type 'double'.
} 
lisazur2(6,7)
help lisazur2
  šī it funkcija
  to izsauc tikai no komandloka
  ar komandu lisazur(2,3)
  ar run tā nestrādās

lisazur3(7,8)
lisazur3(7,8)
lisazur3(7,8)
lisazur3(7,8)
lisazur3(7,8)
lisazur3(pi,3pi)
??? lisazur3(pi,3pi)
                 |
{Error: Unexpected MATLAB expression.
} 
lisazur3(pi,3*pi)
lisazur3(6*pi,3*pi)
lisazur3(6*pi,13*pi)
lisazur3(6*pi,12*pi)
lisazur3(6*pi,12*pi)
{??? Operation terminated by user during ==> <a href="matlab: opentoline('/home/user/matlab_darbi/lisazur3.m',14,0)">lisazur3 at 14</a>
} 
pwd
ans =
/home/user/matlab_darbi
