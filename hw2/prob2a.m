clear; clc;

% Polynomial parameter
b = [0 1 4];
a = [1 5 6];

% Calculating pole
[R, p, C] = residuez(b, a);

% Display the value of poles
fprintf('Pole 1: p(1) = %f\n', p(1));
fprintf('Pole 2: p(2) = %f\n', p(2));

% Plot zero-pole
[H1, H2, H3] = zplane(b, a);
set(H1, 'markersize', 10, 'color', 'r');
set(H2, 'markersize', 10, 'color', 'b');
title('Pole-Zero Plot');
text(0.85, -0.1, '1.0');
text(0.01, -0.1, '0');
legend('Zero', 'Pole');
