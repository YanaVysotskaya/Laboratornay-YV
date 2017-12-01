

fs =  200;
fc =  20;
phi = 2*pi*fc/fs;
r = 0.6;
b = [1  0 -1];
a = [1 -2*r*cos(phi) r^2];



n = 512;
figure(121);
[h,w] = freqz(b,a,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1); 
plot(w/(2*pi)*fs,mag), grid on;
title('Амплітудно-частотна характеристика');
xlabel('Частота'),
ylabel('Амплітуда');
subplot(2,1,2); 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('Фазо-частотна характеристика');
xlabel('Частота'), ylabel('Фаза');
% Обчислення нулів та полюсів фільтру
disp('Нулі фільтру') ;
x = roots(b);
disp(x);
% Карта нулів та полюсів фільтру
figure(122);
k=zplane(x);



r1 = 0.7;
b1 = [1  0 -1];                  
a1 = [1 -2*r1*cos(phi) r1^2]; 
figure(131);
[h,w] = freqz(b1,a1,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1);
plot(w/(2*pi)*fs,mag), grid on;
title('Амплітудно-частотна характеристика');
xlabel('Частота'),
ylabel('Амплітуда');
subplot(2,1,2); 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('Фазо-частотна характеристика');
xlabel('Частота'), 
ylabel('Фаза');
disp('Нулі фільтру (r = 0.7)') ;
x1 = roots(b1);
disp(x1);
figure(132);
k1 = zplane(x1); grid on;
r2 = 0.9;
b2 = [1  0 -1];                    
a2 = [1 -2*r2*cos(phi) r2^2];   
figure(133);
[h,w] = freqz(b2,a2,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1); 
plot(w/(2*pi)*fs,mag), grid on;
title('Амплітудно-частотна характеристика');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,1,2); 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('Фазо-частотна характеристика');
xlabel('Частота'), 
ylabel('Фаза');
disp('Нуліфільтру (r = 0.9)') ;
x2 = roots(b2);
disp(x2);
figure(134);
k2 = zplane(x2); grid on;



disp('Добротність при r = 0.7');
Q1 = fc/(35.16 - 13.87);
disp(Q1);
disp('Добротність при r = 0.9');
Q2 = fc/(23.82 - 16.99);
disp(Q2);

figure(151);
stepz(b,a);
figure(152);
stepz(b1,a1);
figure(153);
stepz(b2,a2);


fs=200;
ecg=load('ecg105.txt');
ecgd = detrend(ecg);
ecgf = filter(b,a,ecgd);
t=(0:length(ecgf)-1)/fs;
figure(21);
subplot(2,1,1); 
plot(t,ecg), grid on, 
xlim([6 10]);
title('Вхідний сигнал');
xlabel('Час'); 
ylabel('Амплітуда');
subplot(2,1,2);
plot(t,ecgf), grid on, 
xlim([6 10]);
title('Фільтрований сигнал');
xlabel('Час'); ylabel('Амплітуда');


fs=200;
ecg=load('ecg105.txt');
ecgd = detrend(ecg);
ecgf1 = filter(b1,a1,ecgd);
t=(0:length(ecgf1)-1)/fs;
figure(22);
subplot(3,1,1), 
plot(t,ecg), grid on, 
xlim([6 10]), 
ylim([-420 0]);
title('Вхідний сигнал');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2); 
plot(t,ecgf), grid on, 
xlim([6 10]), 
ylim([-550 400]);
title('Фільтрований сигнал');
xlabel('Час'),
ylabel('Амплітуда');
ecgf2 = filter(b2,a2,ecgd);
t=(0:length(ecgf2)-1)/fs;
subplot(3,1,3),
plot(t,ecgf), grid on, 
xlim([6 10]), 
ylim([-550 400]);
title('Фільтрований сигнал 2');
xlabel('Час'), ylabel('Амплітуда');


fs = 200;
r = 0.8;
phi1 = 110*pi/180;
phi2 = 130*pi/180;
a1 = [1 -2*r*cos(phi1) r^2]; 
a2 = [1 -2*r*cos(phi2) r^2];
a3 = conv(a1,a2);
b3 = [1 1 1]/3;
disp('Передавальна функція');
H = filt(b3,a3)


n = 512;
figure(321);
[h,w] = freqz(b3,a3,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1), 
plot(w/(2*pi)*fs,mag), grid on;
title('Амплітудно-частотна характеристика');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,1,2),
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('Фазо-частотна характеристика');
xlabel('Частота'),
ylabel('Фаза');
disp('Нулі режекторного НІХ-фільтру');
x = roots(b3);
disp(x);
figure(322);
k = zplane(x);


a0 = 1;
n = 512;
fs = 200;
figure(33);
[h1,w1] = freqz(b3, a0, n);
mag1 = abs(h1); 
phase1 = angle(h1)*180/pi;
subplot(4,1,1), 
plot(w1/(2*pi)*fs, mag1), grid on;
title('АЧХ режекторного СІХ-фільтру');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(4,1,2),
plot(w1/(2*pi)*fs, unwrap(phase1)), grid on;
title('ФЧХ режекторного СІХ-фільтру');
xlabel('Частота'), ylabel('Фаза');
subplot(4,1,3), 
plot(w/(2*pi)*fs,mag), grid on;
title('АЧХ режекторного НІХ-фільтру');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(4,1,4), 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('ФЧХ режекторного НІХ-фільтру');
xlabel('Частота'), 
ylabel('Фаза');


fs = 200;
ecg = load('ecg2x60.dat');
ecgf = filter(b3,a3,ecg);
t =(0:length(ecgf)-1)/fs;
figure(34);
subplot(2,1,1), 
plot(t,ecg), grid on;
title('Вхідний сигнал');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(2,1,2); 
plot(t,ecgf), grid on;
title('Фільтрований сигнал');
xlabel('Час'), 
ylabel('Амплітуда');


fs = 300;
T = 1/fs;
% Інтегрування методом прямокутників
b =T*1;
a = [1 -1];
% Інтегрування методом трапецій.
b1 = [1 1]*T/2;
a1 = [1 -1];
% Інтегрування методом парабол (Сімпсона)
b2 = [1 4 1]*T/3;
a2 = [1 0 -1];
n = 512;
[h,f] = freqz(b,a,n);
mag = abs(h); phase = angle(h)*180/pi;
[h1,f1] = freqz(b1,a1,n);
mag1 = abs(h1); phase1 = angle(h1)*180/pi;
[h2,f2] = freqz(b2,a2,n);
mag2 = abs(h2); phase2 = angle(h2)*180/pi;
figure(411);
subplot(2,3,1); 
plot(f/(2*pi)*fs,mag), grid on, 
xlim([-5 100]), 
ylim([-0.05 0.6]);
title('АЧХ (метод прямокутників)');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,3,2); 
plot(f1/(2*pi)*fs,mag1), grid on, 
xlim([-5 100]), 
ylim([-0.05 0.6]);
title('АЧХ (метод трапецій)'); 
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,3,3); 
plot(f2/(2*pi)*fs,mag2), grid on, 
xlim([-5 155]), 
ylim([-0.05 0.6]);
title('АЧХ (метод Сімпсона)'); 
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,3,4); 
plot(f/(2*pi)*fs,unwrap(phase)), grid on;
title('ФЧХ (метод прямокутників)');
xlabel('Частота'), 
ylabel('Фаза');
subplot(2,3,5); 
plot(f1/(2*pi)*fs,unwrap(phase1)), grid on;
title('ФЧХ (метод трапецій)'); 
xlabel('Частота'), 
ylabel('Фаза');
subplot(2,3,6); 
plot(f2/(2*pi)*fs,unwrap(phase2)), grid on;
title('ФЧХ (метод Сімпсона)'); 
xlabel('Частота'),
ylabel('Фаза');


disp('Нулі та полюси інтегратора методом прямокутників') 
x1 = roots(b);
disp(x);
disp('Нулі та полюси інтегратора методом трапецій') 
x2 = roots(b1);
disp(x2);
disp('Нулі та полюси інтегратора методом Сімпсона') 
x3 = roots(b2); 
disp(x3);
figure(42);
subplot(3,1,1); 
k = zplane(x1);
title('Карта нулів та полюсів інтегратора методом прямокутників')
subplot(3,1,2); 
k1 = zplane(x2);
title('Карта нулів та полюсів інтегратора методом трапецій')
subplot(3,1,3); 
k2 = zplane(x3);
title('Карта нулів та полюсів інтегратора методом Сімпсона')
disp('Передавальна функція інтегратора методом прямокутників') 
H = filt(b,a)
disp('Передавальна функція інтегратора методом трапецій') 
H1 = filt(b1,a1)
disp('Передавальна функція інтегратора методом Сімпсона') 
H2 = filt(b2,a2)



figure(431);
subplot(2,1,1);
mag0 =1./(2*pi*f);
loglog(f,mag0,f,mag); grid on;
title('Графік похибки інтегратора методом прямокутників');
err = (mag-mag0)*100;
subplot(2,1,2),
plot(f,err), grid on;
figure(432);
subplot(2,1,1);
mag0 =1./(2*pi*f1);
loglog(f1,mag0,f1,mag1); grid on;
title('Графік похибки інтегратора методом трапецій');
err1 = (mag1-mag0)*100;
subplot(2,1,2), 
plot(f1,err1), grid on;
figure(433);
subplot(2,1,1);
mag0 =1./(2*pi*f2);
loglog(f2,mag0,f2,mag2); grid on;
title('Графік похибки інтегратора методом Сімпсона');
err2 = (mag2-mag0)*100;
subplot(2,1,2), 
plot(f2,err2), grid on;


fs = 200;
ecg = load('ecg105.txt');
ecgd = detrend(ecg);
figure(44);
ecgf = filter(b,a,ecgd);
subplot(3,1,1), 
plot(ecgf), grid on;
title('Інтегрування методом прямокутників');
ecgf1 = filter(b1,a1,ecgd);
subplot(3,1,2), 
plot(ecgf1), grid on;
title('Інтегрування методом трапецій');
ecgf2 = filter(b2,a2,ecgd);
subplot(3,1,3), 
plot(ecgf2), grid on;
title('Інтегрування методом Сімпсона');
