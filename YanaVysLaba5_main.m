%% �������� 1.1 
%% ����������� ������������� ����������� �������

fs = 200;
f0 = 5;
A = 0.5;
D = 0.25;
n = 1000;
t =(0:(n-1))/fs; % ������ ����
v = randn(size(t))*sqrt(D); 
s = A*cos(2*pi*f0*t);
x = s + v;  
figure(11)% ������� ��������� �������
subplot(3,1,1),plot(t,s);
title('s(t)')
xlabel('���'), 
ylabel('��������');
subplot(3,1,2),
plot(t,v);
title('v(t)')
xlabel('���'), 
ylabel('��������');
subplot(3,1,3),
plot(t,x);
title('x(t)')
xlabel('���'), 
ylabel('��������');

%% �������� 1.2 
%% ���������� ������ ������� ����, ������� ������� �� ��������� ���/������

fprintf('�������� ������� = %4.3g\n', var(s))
fprintf('�������� ���� = %4.3g\n', var(v))
fprintf('³�������� ���/������ = %4.3g\n', snr(s, v))

%% �������� 1.3 
%% ���������� �������� ������ ��� �������������� �������  

maxlag = fix(0.1*length(x));
[v, lags] = xcorr(x, maxlag, 'unbiased');
figure(13)
plot(lags, v); 
title('�������� ������ ��������������� �������');
xlim([-5 5]);
xlabel('³����');
ylabel('��������');

%% �������� 1.4 
%% ���������� ������ ������ ��� �������������� �������  

maxlag2 = fix(0.9*length(x));
[v2, lags2] = xcorr(x, maxlag2, 'biased');
figure(14)
plot(lags2, v2); 
title('������ ������ ��������������� �������');
xlim([-5 5]);
xlabel('³����'); 
ylabel('��������');

%% �������� 1.5 
%% ���������� ������ ��� �������������� ������� ��� �������� ��������� �������

t1 = 0:100; % ������ ����
v1 = randn(size(t1))*sqrt(D);
s1 = A*cos(2*pi*f0*t1);
x1 = s1 + v1;
maxlag3 = fix(0.3*length(x1));
[r1, lags3] = xcorr(x1, maxlag3, 'unbiased');
[r2, lags4] = xcorr(x1, maxlag3, 'biased');
figure(151)
subplot(2, 1, 1); 
plot(lags3, r1); 
title('�������� ������ ��������������� ������� ��� t = 100');
xlim([-40 40]);
ylabel('��������');
subplot(2, 1, 2); 
plot(lags4, r2); 
title('������ ������ ��������������� ������� ��� t = 100');
xlim([-40 40]);
xlabel('³����'); 
ylabel('��������');

%t=1000
t2 = 0:1000; % ������ ����
v2 = randn(size(t2))*sqrt(D);
s2 = A*cos(2*pi*f0*t2);
x2 = s2 + v2;
maxlag4 = fix(0.3*length(x2));
[r3, lags5] = xcorr(x4, maxlag4, 'unbiased');
[r4, lags6] = xcorr(x4, maxlag4, 'biased');
figure(152)
subplot(2, 1, 1); 
plot(lags5, r3); 
title('�������� ������ ��������������� ������� ��� t = 1000');
xlim([-40 40]);
ylabel('�������');
subplot(2, 1, 2);
plot(lags6, r4); 
title('������ ������ ��������������� ������� ��� t = 1000');
xlim([-40 40]);
xlabel('³����'); 
ylabel('��������');

%%�������� 2.1 
%% ������������ ������� ��� ���� (eeg1-p4.txt)
fs = 100;
eeg = load('eeg1-p4.txt');
eeg1 = detrend(eeg);
t = (0:length(eeg1)-1)/fs;
figure(21)
plot(t,eeg1)
title ('��� (eeg1-p4.txt)')
xlabel('���'), 
ylabel('��������');

%% �������� 2.2 
%% �������� ����� ������� ��� �� t1 = 4,7 � �� t2 = 5,8 �
t1 = 4.7;
t2 = 5.8;
n1 = fix(t1*fs)+1;
n2 = fix(t2*fs)+1;
figure(22)
plot(t(n1:n2),eeg1(n1:n2)), grid on
xlim([4.7 5.8]);
title ('��� (eeg1-p4.txt)')
xlabel('���'), 
ylabel('��������');

%% �������� 2.3 
%% ���������� �������� ������ ��� ������� ���
maxlag1 = fix(0.8*length(eeg1));
akf = xcorr(eeg1, maxlag1, 'unbiased');
figure(23)
plot(akf);
title('�������� ������ ��������������� �������');
xlabel('³����'); 
ylabel('��������');

%% �������� 2.5 
%% ���������� ����������� �������� �������

Sx = abs(fft(eeg1)/length(eeg1));
Sy = Sx(1:length(eeg1)/2+1);
Sy(2:end-1) = 2*Sy(2:end-1);
f = fs*(0:(length(eeg1)/2))/length(eeg1);
figure(25)
plot(f,Sy), grid on;
title('����������� �������� ������� ���');
xlabel('�������'); ylabel('��������');


%% �������� 2.6 
%% ������������ ������� ��� ���� (eeg2-f3.txt)

fs = 100;
eeg2 = load('eeg1-f3.txt');
eeg3 = detrend(eeg2);
tn = (0:length(eeg3)-1)/fs;
figure(261)
plot(tn,eeg3)
title('������ ������� ��� (eeg1-f3.dat)');
xlabel('���'); 
ylabel('��������'); 

% �������� ����� ������� ��� �� t1 = 4,2 � �� t2 = 4,96 �

t11 = 4.2;
t12 = 4.96;
n11 = fix(t11*fs)+1;
n12 = fix(t12*fs)+1;
figure(262)
plot(tn(n11:n12),eeg3(n11:n12)), grid on
xlim([4.2 4.96]);
title('����� ������� ��� �� �������� �� 4,2 � �� 4,96 �');
xlabel('���'); 
ylabel('��������');

% ���������� �������� ������ ��� ������� ���

maxlag = fix(0.7*length(eeg3));
lgd=xcorr(eeg3, maxlag, 'unbiased');
figure(263)
plot(lgd);
title('�������� ������ ��������������� ������� ������� ���');
xlabel('³����'); 
ylabel('��������');

% ���������� ����������� �������� �������

Sx = abs(fft(eeg3)/length(eeg3));
Sy = Sx(1:length(eeg3)/2+1);
Sy(2:end-1) = 2*Sy(2:end-1);
f = fs*(0:(length(eeg3)/2))/length(eeg3);
figure(264)
plot(f,Sy), grid on;
title('����������� �������� ������� ���');
xlabel('�������'); 
ylabel('��������');




%% �������� 3.1 
%% ������������ ������� ��� ���� (eeg1-o2.dat)
fs = 100;
eeg = load('eeg1-o2.txt');
eeg1 = detrend(eeg);
t = (0:length(eeg1)-1)/fs;
eeg2 = load('eeg1-c3.txt');
eeg3 = detrend(eeg2);
ts = (0:length(eeg3)-1)/fs;
figure(31)
subplot (2, 1, 1)
plot(t,eeg1)
title ('��� (eeg1-o2.txt)')
xlabel('���'), 
ylabel('��������');
subplot (2, 1, 2)
plot(ts,eeg3)
title ('��� (eeg1-c3.txt)')
xlabel('���'), 
ylabel('��������');


%% �������� 3.2 
%% �������� ����� ������� ��� �� t1 = 5,71 � �� t2 = 6,78 �
t1 = 5.71;
t2 = 6.78;
n1 = fix(t1*fs)+1;
n2 = fix(t2*fs)+1;
eeg4 = detrend(eeg(n1:n2));
eeg5 = detrend(eeg2(n1:n2));
figure(32)
subplot (2, 1, 1)
plot(t(n1:n2),eeg1(n1:n2)), grid on
xlim([5.71 6.78]);
title ('����� ������� ��� �� �������� �� 5.71 �� 6.78 (eeg1-o2.txt)')
xlabel('���'), 
ylabel('��������');
subplot (2, 1, 2)
plot(ts(n1:n2),eeg3(n1:n2)), grid on
xlim([5.71 6.78]);
title ('����� ������� ��� �� �������� �� 5.71 �� 6.78 (eeg1-c3.txt)')
xlabel('���'), 
ylabel('��������');

%% �������� 3.3 
%% ���������� ��� ������� ���
lgd1 = xcorr(eeg1, eeg3, maxlag);
figure(33)
plot(lgd1);
title('������ ���������������� ������ ������� ���');
xlabel('³����'); 
ylabel('��������');

%% �������� 3.4
%% ���������� ����������� �������� �������

Sx = abs(fft(lgd1)/length(lgd1));
Sy = Sx(1:length(lgd1)/2+1);
Sy(2:end-1)=2*Sy(2:end-1);
f = fs*(0:(length(lgd1)/2))/length(lgd1);
figure(34)
plot(f,Sy), grid on;
title('����������� �������� ������� ���');
xlabel('�������'); 
ylabel('��������');

%% �������� 3.5 
%% ������������ ������� ��� ���� (eeg1-p3.txt) (eeg1-p4.txt)

fs = 100;
eeg = load('eeg1-p3.txt');
eeg1 = detrend(eeg);
t = (0:length(eeg1)-1)/fs;
eeg2 = load('eeg1-p4.txt');
eeg3 = detrend(eeg2);
ts = (0:length(eeg3)-1)/fs;
figure(351)
subplot (2, 1, 1)
plot(t,eeg1)
title ('��� (eeg1-p3.txt)')
xlabel('���'), 
ylabel('��������');
subplot (2, 1, 2)
plot(ts,eeg3)
title ('��� (eeg1-p4.txt)')
xlabel('���'), 
ylabel('��������');

%% �������� ����� ������� ��� �� t1 = 4.7 � �� t2 = 5.8 �
t1 = 4.7;
t2 = 5.8;
n1 = fix(t1*fs)+1;
n2 = fix(t2*fs)+1;
eeg4 = detrend(eeg(n1:n2));
eeg5 = detrend(eeg2(n1:n2));
figure(352)
subplot (2, 1, 1)
plot(t(n1:n2),eeg1(n1:n2)), grid on
xlim([4.7 5.8]);
title ('����� ������� ��� �� �������� �� 4.7 �� 5.8  (eeg1-p3.txt)')
xlabel('���'), 
ylabel('��������');
subplot (2, 1, 2)
plot(ts(n1:n2),eeg3(n1:n2)), grid on
xlim([4.7 5.8]);
title ('����� ������� ��� �� �������� �� 4.7 �� 5.8 (eeg1-p4.txt)')
xlabel('���'), 
ylabel('��������');



%% ���������� ��� ������� ���
lgd1 = xcorr(eeg1, eeg3, maxlag);
figure(353)
plot(lgd1);
title('������ ���������������� ������ ������� ���');
xlabel('³����'); 
ylabel('��������');


%% ���������� ����������� �������� �������
Sx = abs(fft(lgd1)/length(lgd1));
Sy = Sx(1:length(lgd1)/2+1);
Sy(2:end-1)=2*Sy(2:end-1);
f = fs*(0:(length(lgd1)/2))/length(lgd1);
figure(354)
plot(f,Sy), grid on;
title('����������� �������� ������� ���');
xlabel('�������'); 
ylabel('��������');

%% �������� 3.6 
%% ������������ ������� ��� ���� 

fs = 100;
eeg = load('eeg1-f3.txt');
eeg1 = detrend(eeg);
t = (0:length(eeg1)-1)/fs;
eeg2 = load('eeg1-f4.txt');
eeg3 = detrend(eeg2);
ts = (0:length(eeg3)-1)/fs;
figure(361)
subplot (2, 1, 1)
plot(t,eeg1)
title ('��� (eeg1-f3.txt)')
xlabel('���'), 
ylabel('��������');
subplot (2, 1, 2)
plot(ts,eeg3)
title ('��� (eeg1-f4.txt)')
xlabel('���'), 
ylabel('��������');

%% �������� ����� ������� ��� �� t1 = 5,71 � �� t2 = 6,78 �
t1 = 4.13;
t2 = 4.96;
t3 = 1.43;
t4 = 2.26;
n1 = fix(t1*fs)+1;
n2 = fix(t2*fs)+1;
n3 = fix(t3*fs)+1;
n4 = fix(t4*fs)+1;
eeg4 = detrend(eeg(n1:n2));
eeg5 = detrend(eeg2(n3:n4));
figure(362)
subplot (2, 1, 1)
plot(t(n1:n2),eeg1(n1:n2)), grid on
xlim([4.13 4.96]);
title ('����� ������� ��� �� �������� �� 4.13 �� 4.96(eeg1-f3.txt)')
xlabel('���'), 
ylabel('��������');
subplot (2, 1, 2)
plot(ts(n3:n4),eeg3(n3:n4)), grid on
xlim([1.43 2.26]);
title ('����� ������� ��� �� �������� �� 1.43 �� 2.26 (eeg1-f4.txt)')
xlabel('���'), 
ylabel('��������');


%% ���������� ��� ������� ���
maxlag=250;
lgd1 = xcorr(eeg1, eeg3, maxlag);
figure(363)
plot(lgd1);
title('������ ���������������� ������ ������� ���');
xlabel('³����'); 
ylabel('��������');


%% ���������� ����������� �������� �������
Sx = abs(fft(lgd1)/length(lgd1));
Sy = Sx(1:length(lgd1)/2+1);
Sy(2:end-1)=2*Sy(2:end-1);
f = fs*(0:(length(lgd1)/2))/length(lgd1);
figure(364)
plot(f,Sy), grid on;
title('����������� �������� ������� ���');
xlabel('�������'); 
ylabel('��������');