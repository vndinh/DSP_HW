clear; clc;
w = (-1000:1:1000)*pi/1000;
b0 = -1141/1200;
w0 = pi/3;
r = 0.95;
w1 = w0 - w;
w2 = w0 + w;
H = b0*(1-exp(1j*w1)).*(1-exp(-1j*w2))./((1-r*exp(1j*w1)).*(1-r*exp(-1j*w2)));
magnitudeH = abs(H);
phaseH = angle(H);
subplot(2,1,1); plot(w/pi,magnitudeH), grid on;
ylabel('|H(e^j^\omega)|'); title('Magnitude Response');
xlabel('\omega/\pi');
subplot(2,1,2); plot(w/pi,phaseH); grid on;
ylabel('\angleH(e^j^\omega)'); title('Phase Response');
xlabel('\omega/\pi');
