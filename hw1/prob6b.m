clear; clc;
x = [-1 1 -1 1 -1]; % Present input x(n) in row vector
h = [1 -1 1 -1 1];  % Present impulse response h(n) in row vector

y = conv(x,h);      % Convolution function

% Draw output y(n)
stem(y, 'bo');
xlabel('n');
ylabel('y(n) = x(n) * h(n)');
axis([0 10 -6 6]);  % Range of n and range of value of y(n)
