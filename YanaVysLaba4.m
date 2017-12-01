fs = 200; 
N = 400; 
t = (0:(N-1))/fs;
s = sin(2*pi*10*t)+sin(2*pi*20*t);
v = 2*randn(size(t)); 
x = s + v;


L = 32;% порядок фільтра
w = wiener_hopf(x, s, L);% обчислення коефіцієнтів  
disp('Коефіцієнти фільтру Вінера');
disp(w)


fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t)+sin(2*pi*20*t);
x = s+v;
L = 32;
b = wiener_hopf(x, s, L);
a = 1;
y = filter(b, a, s);
figure(131);
subplot(3,1,1), 
plot(t,x);
title('Сигнал x(n)');
xlabel('Час'),
ylabel('Амплітуда');
subplot(3,1,2), 
plot(t,s);
title('Сигнал s(n)');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,3),
plot(t,y);
title('Відфільтрований сигнал y(n)');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
figure(132);
[h, w] = freqz(b,a,n);
mag = abs(h);
plot(w/(2*pi)*fs, mag);
title('Аплітудно-частотна характеристика');
xlabel('Частота'), ylabel('Аплітуда');
D = var(y)


fs = 200;
N = 400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t)+sin(2*pi*20*t);
x = s+v;
a = 1;
L = 64;
b = wiener_hopf(x, s, L);
y = filter(b,a,s);
figure(141);
subplot(3,1,1),
plot(t,x);
title('Сигнал x(n) для L = 64');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2), 
plot(t,s);
title('Сигнал s(n) для L = 64');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,3), 
plot(t,y);
title('Відфільтрований сигнал y(n) для L = 64');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
figure(142);
[h, w] = freqz(b,a,n);
mag = abs(h);
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 64');
xlabel('Частота'), 
ylabel('Амплітуда');
D = var(y)
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t)+sin(2*pi*20*t);
x = s+v;
L = 128;

b = wiener_hopf(x, s, L);
a = 1;
y = filter(b,a,s);
figure(143);
subplot(3,1,1), 
plot(t,x);
title('Сигнал x(n) для L = 128');
xlabel('Час'),
ylabel('Амплітуда');
subplot(3,1,2), 
plot(t,s);
title('Сигнал s(n) для L = 128');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,3),
plot(t,y);
title('Відфільтрований сигнал y(n) для L = 128');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
figure(144);
[h, w]=freqz(b,a,n);
fs = 200;
N = 400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t)+sin(2*pi*20*t);
x = s+v;
a = 1;
L = 256;
b = wiener_hopf(x, s, L);
y = filter(b,a,s);
figure(145);
subplot(3,1,1), 
plot(t,x);
title('Сигнал x(n) для L = 256');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2),
plot(t,s);
title('Сигнал s(n) для L = 256');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,3), 
plot(t,y);
title('Відфільтрований сигнал y(n) для L = 256');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
figure(146);
[h, w]=freqz(b,a,n);
mag=abs(h);
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 256');
xlabel('Частота'), 
ylabel('Амплітуда');
D = var(y)
mag=abs(h);
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 128 ');
xlabel('Частота'), 
ylabel('Амплітуда');
D = var(y)

L = 64;
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
a = 1;
L = 64; 
w = wiener_hopf(x, s, L);
b = w;
y = filter(b,a,s);
Dispersiya64 = var(y) 
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
L = 128;   
w = wiener_hopf(x, s, L);
b = w;
a = 1;
y = filter(b,a,s);
Dispersiya128 = var(y)   
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
a = 1;
L = 256;    
w = wiener_hopf(x, s, L);
b = w;
y = filter(b,a,s);
Dispersiya256 = var(y)

fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;


fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
L = 128;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(231);
subplot(3,1,1),
plot(t,s);
title('Сигнал s(n)');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2),
plot(t,y);
title('Відфільтрований сигнал s(n)');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), 
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика');
xlabel('Частота'), 
ylabel('Амплітуда');


fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
L = 128;
mu = 0.01;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(241);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для mu = 0.01');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітуда mu = 0.01');
xlabel('Частота'), 
ylabel('Амплітуда');
L = 128;
mu = 0.001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(242);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для mu = 0.001');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.001');
xlabel('Частота'), 
ylabel('Амплітуда');
L = 128;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(243);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n)');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.0001');
xlabel('Частота'),
ylabel('Амплітуда');
L = 128;
mu = 0.00001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(244);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для mu = 0.00001');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Ампітудно-частотна характеристика для mu = 0.00001');
xlabel('Частота'), 
ylabel('Амплітуда');
L = 128;
mu = 0.000001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(245);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для mu = 0.000001');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.000001');
xlabel('Частота'), 
ylabel('Амплітуда');


fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
L = 256;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(251);
subplot(2,1,1),
plot(t,y);
title('Відфільтрований сигнал y(n) для L = 256');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 256');
xlabel('Частота'), 
ylabel('Амплітуда');
N =  800;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
L = 512;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(252);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для L = 512');
xlabel('Час'),
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 512');
xlabel('Частота'), 
ylabel('Амплітуда');
N =  1400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
L = 1024;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(253);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для L = 1024');
xlabel('Час'), ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 1024');
xlabel('Частота'), 
ylabel('Амплітуда');


fs = 200;
N =  800;s
t = (0:length(N)-1)/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
v = 2*randn(size(t));  
x = s+v;


fs = 200;
N =  400;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 128;
mu = 0.000001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(321);
subplot(3,1,1), 
plot(t,x);
title('Сигнал s(n)');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2), plot(t,y);
title('Відфільтрований сигнал y(n)');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика');
xlabel('Частота'), 
ylabel('Амплітуда');


fs = 200;
N =  400;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 128;
mu = 0.01;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(331);
subplot(2,1,1), 
plot(t,y);
title('Відфільтрований сигнал y(n) для mu = 0.01');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.01');
xlabel('Частота'), 
ylabel('Амплітуда');
L = 128;
mu = 0.001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(332);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для mu = 0.001');
xlabel('Час'), ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.001');
xlabel('Частота'), 
ylabel('Амплітуда');
L = 128;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(333);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n)');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.0001');
xlabel('Частота'), 
ylabel('Амплітуда');
L = 128;
mu = 0.00001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(334);
subplot(2,1,1), 
plot(t,y);
title('Відфільтрований сигнал y(n) для mu = 0.00001');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.00001');
xlabel('Частота'),
ylabel('Амплітуда');
L = 128;
mu = 0.000001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(335);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для mu = 0.000001');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.000001');
xlabel('Частота'), 
ylabel('Амплітуда');


fs = 200;
N =  400;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 256;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(341);
subplot(2,1,1), 
plot(t,y);
title('Відфільтрований сигнал y(n) для L = 256');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 256');
xlabel('Частота'),
ylabel('Амплітуда');
fs = 200;
N =  800;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 512;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(342);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для L = 512');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 512');
xlabel('Частота'), 
ylabel('Амплітуда');
fs = 200;
N =  2000;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 1024;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(343);
subplot(2,1,1), plot(t,y);
title('Відфільтрований сигнал y(n) для L = 1024');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для L = 1024');
xlabel('Частота'), 
ylabel('Амплітуда');


ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,w] = lms60(ecg,d,mu);
figure(421);
subplot(3,1,1), 
plot(t,ecg);
title('Сигнал ecg');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2), 
plot(t,e);
title('Відфільтрований сигнал e(n)');
xlabel('Час'),
ylabel('Амплітуда');
subplot(3,1,3), 
plot(t, y);
title('Вихідний сигнал y(n)');
xlabel('Час'), 
ylabel('Амплітуда');


ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,w] = lms60(ecg,d,mu);
disp('Коєфіціенти адаптивного фільтра: ');
disp(w)

ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(441);
subplot(3,1,1), 
plot(t, y);
title('Вихідний сигнал y(n) для mu = 0.1');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2),
plot(t,e);
title('Відфільтрований сигнал e(n) для mu = 0.1');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3),
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.1');
xlabel('Частота'),
ylabel('Амплітуда');
mu = 0.01;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(442);
subplot(3,1,1), 
plot(t, y);
title('Вихідний сигнал y(n) для mu = 0.01');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2),
plot(t,e);
title('Відфільтрований сигнал e(n) для mu = 0.01');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), 
plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.01');
xlabel('Частота'), 
ylabel('Амплітуда');
mu = 0.001;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(443);
subplot(3,1,1), 
plot(t, y);
title('Вихідний сигнал y(n) для mu = 0.001');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2), plot(t,e);
title('Відфільтрований сигнал e(n) для mu = 0.001');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('Амплітудно-частотна характеристика для mu = 0.001');
xlabel('Частота'), 
ylabel('Амплітуда');
mu = 0.0001;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(444);
subplot(3,1,1), plot(t, y);
title('Вихідний сигнал y(n) для mu = 0.0001');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2), 
plot(t,e);
title('Відфільтрований сигнал e(n) для mu = 0.0001');
xlabel('Час'), 
ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), 
plot(w/(2*pi)*fs, mag);
title('Амплітдно-частотна характеристика для mu = 0.0001');
xlabel('Частота'), 
ylabel('Амплітуда');

