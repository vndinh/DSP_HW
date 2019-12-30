clear; clc;

n = 0:1:5;

E = [1 7.65 19.88 26.17 27.77 27.77];
E1 = [2.44 10.8 22.3 27.11 27.77 27.77];
E2 = [0.66 5.47 16.97 25.33 27.77 27.77];
E3 = [1.6 7.89 20.12 26.77 27.77 27.77];

subplot(2,2,1); stem(n,E); axis([-1 6 0 30]);
title('The original system - H(n)');
xlabel('n'); ylabel('E(n)');

subplot(2,2,2); stem(n,E1); axis([-1 6 0 30]);
title('The minimum-phase system - H_1(n)');
xlabel('n'); ylabel('E_1(n)');

subplot(2,2,3); stem(n,E2); axis([-1 6 0 30]);
title('The maximum-phase system - H_2(n)');
xlabel('n'); ylabel('E_2(n)');

subplot(2,2,4); stem(n,E3); axis([-1 6 0 30]);
title('The H_3(n) system');
xlabel('n'); ylabel('E_3(n)');
