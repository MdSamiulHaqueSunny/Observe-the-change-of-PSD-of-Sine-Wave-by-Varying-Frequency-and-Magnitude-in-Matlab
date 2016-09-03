%PSD observation of Sine wave with Different Frequency and Same magnitude 
%Author: Sunny
%date: 03/09/2016

n=200;
Fs=2000;
%change Frequency Here
f1=50;
f2=100;
f3=150;
%change Magnitude Here
Mg1=1;
Mg2=1;
Mg3=1;

ts=1/fs;
t = ts*(0:n-1);
x1=Mg1*sin(2*pi*f1*t);
x2=Mg2*sin(2*pi*f2*t);
x3=Mg3*sin(2*pi*f3*t);

figure
subplot(321)
plot(t,x1)
grid on
title(['Sine wave of ',num2str(f1),' Hz',' with Magnitude ',num2str(Mg1)])
N1= length(x1);
xdft1 = fft(x1);
xdft1 = xdft1(1:N1/2+1);
psdx1 = (1/(Fs*N1)) * abs(xdft1).^2;
psdx1(2:end-1) = 2*psdx1(2:end-1);
freq1 = 0:Fs/length(x1):Fs/2;
subplot(322)
plot(freq1,10*log10(psdx1))
grid on
title('Periodogram Using FFT')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')

subplot(323)
plot(t,x2)
grid on
title(['Sine wave of ',num2str(f2),' Hz',' with Magnitude ',num2str(Mg2)])
N2= length(x2);
xdft2 = fft(x2);
xdft2 = xdft2(1:N2/2+1);
psdx2 = (1/(Fs*N2)) * abs(xdft2).^2;
psdx2(2:end-1) = 2*psdx2(2:end-1);
freq2 = 0:Fs/length(x2):Fs/2;
subplot(324)
plot(freq2,10*log10(psdx2))
grid on
title('Periodogram Using FFT')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')

subplot(325)
plot(t,x3)
grid on
title(['Sine wave of ',num2str(f3),' Hz',' with Magnitude ',num2str(Mg3)])
N3= length(x3);
xdft3 = fft(x3);
xdft3 = xdft3(1:N3/2+1);
psdx3 = (1/(Fs*N3)) * abs(xdft3).^2;
psdx3(2:end-1) = 2*psdx3(2:end-1);
freq3 = 0:Fs/length(x3):Fs/2;
subplot(326)
plot(freq3,10*log10(psdx3))
grid on
title('Periodogram Using FFT')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')



