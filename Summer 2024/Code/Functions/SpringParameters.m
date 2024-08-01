% Aluminum Spring
rho = 2810; % kg/m^3
E = 7.17e10; % Young's Modulus


% Stainless Steel Spring
%rho = 8030; % kg/m^3
%E = 1.74e11; % Young's Modulus


w = 0.03; % m
t = 0.05*0.0254; % m

J = w*t^3/12; % Axial Moment of Inertia m^4

% Hydrostatic Force F: 10.3 N
% Drag Force F: 4.74
F = 10.3; % N
delta = 0.018; % m

g = 9.81; % m/s

a = -5*rho*w*t*g/(24*E*J);
b = F/(3*E*J);
e = -delta;

x = -2:0.1:4;
y = a*x.^4+b*x.^3+e;
r = roots([a, b, 0, 0 , e]);


lold = (3*E*J*delta/F)^(1/3);
disp(r(2)*100 + " cm, " + lold*100 + " cm")
