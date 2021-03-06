function createfigure(X1, ymatrix1)
%CREATEFIGURE(X1,YMATRIX1)
%  X1:  stairs x
%  YMATRIX1:  stairs matrix data

%  Auto-generated by MATLAB on 08-Feb-2018 09:19:17

% Create figure
figure1 = figure('XVisual',...
    '0xaa (TrueColor, depth 32, RGB mask 0xff0000 0xff00 0x00ff)');

% Create axes
axes1 = axes('Parent',figure1);
% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 1]);
box(axes1,'on');
grid(axes1,'on');
hold(axes1,'all');

% Create multiple lines using matrix input to stairs
stairs1 = stairs(X1,ymatrix1,'Parent',axes1);
set(stairs1(1),'DisplayName','sinusoīda','Color',[0 0 0]);
set(stairs1(2),'MarkerFaceColor',[0 0 0],'Marker','hexagram','LineWidth',6,...
    'Color',[1 0 0],...
    'DisplayName','kosinusoīda');

% Create xlabel
xlabel('t,s');

% Create ylabel
ylabel('U,V');

% Create title
title('Pirmais grafiks');

% Create legend
legend(axes1,'show');

