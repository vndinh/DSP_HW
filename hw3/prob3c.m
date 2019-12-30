clear; clc;
 
% Parameter
a = 0.5;
r1 = abs(a); r2 = abs(1/a);
r_pole = min(r1, r2);
axis_lim = max(r1, r2) + 0.5;

% Plot the poles
ReP = [a, 0, 0];
ImP = [0, a, -a];
plot(ReP, ImP, 'xb', 'MarkerSize', 7, 'DisplayName', 'Poles');
axis([-axis_lim, axis_lim, -axis_lim, axis_lim]);
axis equal; hold on; grid on;
 
% Plot the zeros
ReZ = [1/a, 0, 0];
ImZ = [0, 1/a, -1/a];
plot(ReZ, ImZ, 'or', 'MarkerSize', 7, 'DisplayName', 'Zeros');
hold on;
 
% Plot the unit circle
[x_unit, y_unit] = circle(0, 0, 1);
plot(x_unit, y_unit, 'k--', 'LineWidth', 1, 'DisplayName', 'Unit circle');
 
% Plot the pole circle
[x_pole, y_pole] = circle(0, 0, r_pole);
plot(x_pole, y_pole, 'b', 'LineWidth', 1, 'DisplayName', '|z| = 0.5');

[x, y] = circle(0, 0, 2*axis_lim);
h = patch([x,x_pole], [y,y_pole], [0.5 0.5 0.5], 'LineStyle', 'none', 'FaceAlpha', 0.25, 'DisplayName', 'ROC');
 
legend('show');
xlabel('Re(z)'); ylabel('Im(z)');
title('Problem 3c');
hold off;

%% Inner function
function [xc, yc] = circle(x, y, r)
    theta = 0:pi/1000:2*pi;
    xc = x + r * cos(theta);
    yc = y + r * sin(theta);
end
