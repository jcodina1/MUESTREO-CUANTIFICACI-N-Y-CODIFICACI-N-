 clc
clear 

%ítem A. Graficar la señal durante 3 periodos
t=0:0.001:1;
f=3;
A=5;
pha=0;
ft=A*cos(2*pi*f*t+pha);

figure(1)
%subplot(2,1,1), plot(t,ft,'b','LineWidth',3)
grid on

ylabel('Amplitud')
xlabel('Tiempo(s)')
title('Gráfica de la señal f(t) durante 3 períodos')

%ítem B. Muestreo de la señal a 4 veces el valor de la frecuencia
fs=4*f;
n=fs;
Ts=(0:n)./fs;
fn=A*cos(2*pi*f*Ts);

%subplot(2,1,2), stem(Ts,fn,'r','LineWidth',3)
grid on

ylabel('Amplitud')
xlabel('Tiempo(s)')
title('Gráfica de la señal f(t) muestreada a 4 veces el valor de la frecuencia')

%ítem C. Muestreo de la señal a 16 veces el valor de la frecuencia
fs=16*f;
n=fs;
Ts=(0:n)./fs;
fn=A*cos(2*pi*f*Ts);

figure(2)
%subplot(2,1,1), plot(t,ft,'b','LineWidth',3)
grid on

ylabel('Amplitud')
xlabel('Tiempo(s)')
title('Gráfica de la señal f(t) durante 3 períodos')
%subplot(2,1,2), stem(Ts,fn,'r','LineWidth',3)
grid on

ylabel('Amplitud')
xlabel('Tiempo(s)')
title('Gráfica de la señal f(t) muestreada a 16 veces el valor de la frecuencia')

%ítem D. Muestreo de la señal a 1.3 veces el valor de la frecuencia

fs=1.3*f;
n=fs;
Ts=(0:n)./fs;
fn=A*cos(2*pi*f*Ts);

figure(3)
%subplot(2,1,1), plot(t,ft,'b','LineWidth',3)
grid on

ylabel('Amplitud')
xlabel('Tiempo(s)')
title('Gráfica de la señal f(t) durante 3 períodos')
%subplot(2,1,2), stem(Ts,fn,'r','LineWidth',3)
grid on

ylabel('Amplitud')
xlabel('Tiempo(s)')
title('Gráfica de la señal f(t) muestreada a 1.3 veces el valor de la frecuencia')

%ítem E. Cuantificar y codificar la señal usando 3 bits.
bits =3;
fq=(fn*((2^(bits))-1))/((2^(bits))-1);
fr=spline(Ts,(fq),t);
error=abs(fn-fq);
error_max=max(error);
figure(4)
%plot(t,ft,'k');
hold on
stem(Ts,fn,"filled",'bo')
stem(Ts,fq,"filled",'g')
plot(t,fr,'bo')
ylabel('Amplitud')
xlabel('Tiempo(s)')
title('Gráfica de la señal f(t) muestreada, codificada y cuantificada a 3 bits')
hold off
grid on
