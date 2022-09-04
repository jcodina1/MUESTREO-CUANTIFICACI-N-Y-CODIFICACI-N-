  clc
    clear 
    
    %ítem A. Graficar la señal entre 0 y 1ms
    f0=1000;
    fmax=5000;
    t=0:1e-6:1e-3;
    A=5;
    X=A*(sin(f0*2*pi*t) +((1/3)*sin(3*f0*2*pi*t)) +((1/5)*sin(5*f0*2*pi*t)));
    
    figure(1)
     plot(t,X,'b','LineWidth',3)
    grid on
    
    ylabel('Amplitud')
    xlabel('Tiempo(ms)')
    title('Gráfica de la señal x(t) entre 0 y 1 ms')
    hold on
    %ítem B. Muestrear la señal a 2 veces el valor de su frecuencia máxima
    fs=2*fmax;
    n=fs;
    Ts=0:1/fs:1e-3;
    Xn=A*(sin(f0*2*pi*Ts) +((1/3) *sin(3*f0*2*pi*Ts)) +((1/5)*sin(5*f0*2*pi*Ts)));
    
     stem(Ts,Xn,'r','LineWidth',3)
    grid on
    
    ylabel('Amplitud')
    xlabel('Tiempo(ms)')
    title('Gráfica de la señal x(t) muestreada 2 veces el valor de su frecuencia máxima')
    hold off
    %ítem C. Muestrear la señal a 4 veces el valor de su frecuencia máxima
    fs=4*fmax;
    n=fs;
    Ts=0:1/fs:1e-3;
    Xn=A*(sin(f0*2*pi*Ts) +((1/3) *sin(3*f0*2*pi*Ts)) +((1/5)*sin(5*f0*2*pi*Ts)));
    
    figure(2)
     plot(t,X,'b','LineWidth',3)
    grid on
    ylabel('Amplitud')
    xlabel('Tiempo(ms)')
    title('Gráfica de la señal x(t) entre 0 y 1 ms')
    hold on
     stem(Ts,Xn,'r','LineWidth',3)
    grid on
    ylabel('Amplitud')
    xlabel('Tiempo(ms)')
    title('Gráfica de la señal x(t) muestreada 4 veces el valor de su frecuencia máxima')
    hold off
    
    %%ítem D. Cuantificar la señal usando 5 bits.
    bits =5;
    xq=round(Xn*((2^(bits))-1))/((2^(bits))-1);
    xr=spline(Ts,(xq),t);
    error=abs(Xn-xq);
    error_max=max(error);
    figure(3)
    plot(t,X,'k');
    hold on
    stem(Ts,Xn,"filled",'bo')
    stem(Ts,xq,"filled",'ro')
    plot(t,xr,'g')
    ylabel('Amplitud')
    xlabel('Tiempo(s)')
    title('Gráfica de la señal X(t) muestreada, codificada y cuantificada a 5 bits')
    hold off
    grid on