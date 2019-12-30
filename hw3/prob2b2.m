clear; clc;

% Parameter
b0 = 1141/1200;
w0 = pi/3;
r = 0.95;

% Polynomial parameter
b = b0*[1 -2*cos(w0) 1];
a = [1 -2*r*cos(w0) r^2];

% Calculating pole
[R, p, C] = residuez(b, a);

% Plot zero-pole
[H1, H2, H3] = zplane(b, a);
set(H1, 'markersize', 10, 'color', 'r');
set(H2, 'markersize', 10, 'color', 'b');
title('Pole-Zero Plot');
text(0.85, -0.1, '1.0');
text(0.01, -0.1, '0');
legend('Zero', 'Pole');
grid on;
