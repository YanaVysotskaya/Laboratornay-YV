fs = 200; 
N = 400; 
t = (0:(N-1))/fs;
s = sin(2*pi*10*t)+sin(2*pi*20*t);
v = 2*randn(size(t)); 
x = s + v;


L = 32;% ������� �������
w = wiener_hopf(x, s, L);% ���������� �����������  
disp('����������� ������� ³����');
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
title('������ x(n)');
xlabel('���'),
ylabel('��������');
subplot(3,1,2), 
plot(t,s);
title('������ s(n)');
xlabel('���'), 
ylabel('��������');
subplot(3,1,3),
plot(t,y);
title('³������������� ������ y(n)');
xlabel('���'), 
ylabel('��������');
n = 512;
figure(132);
[h, w] = freqz(b,a,n);
mag = abs(h);
plot(w/(2*pi)*fs, mag);
title('��������-�������� ��������������');
xlabel('�������'), ylabel('�������');
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
title('������ x(n) ��� L = 64');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2), 
plot(t,s);
title('������ s(n) ��� L = 64');
xlabel('���'), 
ylabel('��������');
subplot(3,1,3), 
plot(t,y);
title('³������������� ������ y(n) ��� L = 64');
xlabel('���'), 
ylabel('��������');
n = 512;
figure(142);
[h, w] = freqz(b,a,n);
mag = abs(h);
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 64');
xlabel('�������'), 
ylabel('��������');
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
title('������ x(n) ��� L = 128');
xlabel('���'),
ylabel('��������');
subplot(3,1,2), 
plot(t,s);
title('������ s(n) ��� L = 128');
xlabel('���'), 
ylabel('��������');
subplot(3,1,3),
plot(t,y);
title('³������������� ������ y(n) ��� L = 128');
xlabel('���'), 
ylabel('��������');
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
title('������ x(n) ��� L = 256');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2),
plot(t,s);
title('������ s(n) ��� L = 256');
xlabel('���'), 
ylabel('��������');
subplot(3,1,3), 
plot(t,y);
title('³������������� ������ y(n) ��� L = 256');
xlabel('���'), 
ylabel('��������');
n = 512;
figure(146);
[h, w]=freqz(b,a,n);
mag=abs(h);
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 256');
xlabel('�������'), 
ylabel('��������');
D = var(y)
mag=abs(h);
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 128 ');
xlabel('�������'), 
ylabel('��������');
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
title('������ s(n)');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2),
plot(t,y);
title('³������������� ������ s(n)');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), 
plot(w/(2*pi)*fs, mag);
title('���������-�������� ��������������');
xlabel('�������'), 
ylabel('��������');


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
title('³������������� ������ y(n) ��� mu = 0.01');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('�������� mu = 0.01');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(242);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.001');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(243);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n)');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.0001');
xlabel('�������'),
ylabel('��������');
L = 128;
mu = 0.00001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(244);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.00001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('��������-�������� �������������� ��� mu = 0.00001');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.000001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(245);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.000001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.000001');
xlabel('�������'), 
ylabel('��������');


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
title('³������������� ������ y(n) ��� L = 256');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 256');
xlabel('�������'), 
ylabel('��������');
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
title('³������������� ������ y(n) ��� L = 512');
xlabel('���'),
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 512');
xlabel('�������'), 
ylabel('��������');
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
title('³������������� ������ y(n) ��� L = 1024');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), 
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 1024');
xlabel('�������'), 
ylabel('��������');


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
title('������ s(n)');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2), plot(t,y);
title('³������������� ������ y(n)');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('���������-�������� ��������������');
xlabel('�������'), 
ylabel('��������');


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
title('³������������� ������ y(n) ��� mu = 0.01');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.01');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(332);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.001');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.001');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(333);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n)');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.0001');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.00001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(334);
subplot(2,1,1), 
plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.00001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.00001');
xlabel('�������'),
ylabel('��������');
L = 128;
mu = 0.000001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(335);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.000001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.000001');
xlabel('�������'), 
ylabel('��������');


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
title('³������������� ������ y(n) ��� L = 256');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 256');
xlabel('�������'),
ylabel('��������');
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
title('³������������� ������ y(n) ��� L = 512');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 512');
xlabel('�������'), 
ylabel('��������');
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
title('³������������� ������ y(n) ��� L = 1024');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 1024');
xlabel('�������'), 
ylabel('��������');


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
title('������ ecg');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2), 
plot(t,e);
title('³������������� ������ e(n)');
xlabel('���'),
ylabel('��������');
subplot(3,1,3), 
plot(t, y);
title('�������� ������ y(n)');
xlabel('���'), 
ylabel('��������');


ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,w] = lms60(ecg,d,mu);
disp('���������� ����������� �������: ');
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
title('�������� ������ y(n) ��� mu = 0.1');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2),
plot(t,e);
title('³������������� ������ e(n) ��� mu = 0.1');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3),
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.1');
xlabel('�������'),
ylabel('��������');
mu = 0.01;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(442);
subplot(3,1,1), 
plot(t, y);
title('�������� ������ y(n) ��� mu = 0.01');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2),
plot(t,e);
title('³������������� ������ e(n) ��� mu = 0.01');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), 
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.01');
xlabel('�������'), 
ylabel('��������');
mu = 0.001;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(443);
subplot(3,1,1), 
plot(t, y);
title('�������� ������ y(n) ��� mu = 0.001');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2), plot(t,e);
title('³������������� ������ e(n) ��� mu = 0.001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.001');
xlabel('�������'), 
ylabel('��������');
mu = 0.0001;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(444);
subplot(3,1,1), plot(t, y);
title('�������� ������ y(n) ��� mu = 0.0001');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2), 
plot(t,e);
title('³������������� ������ e(n) ��� mu = 0.0001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), 
plot(w/(2*pi)*fs, mag);
title('��������-�������� �������������� ��� mu = 0.0001');
xlabel('�������'), 
ylabel('��������');

