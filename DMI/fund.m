function fx = fund(UR)
% funx atvasinājums (diff)
global E R i0 a
%a=1; i0=1; E=1; R=1;
fx = - 1/R - a*i0*exp(a*(E - UR));