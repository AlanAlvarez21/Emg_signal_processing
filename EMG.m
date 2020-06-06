    figure;
    plot(T1); % grafica señal original
   

    fs1 = 2040;   %frecuencia señal 1
    
    Time1 = 1/fs1:1/fs1:6000/fs1; % vector de tiempo

    figure;
    plot(Time1 , T1); %primer valor eje x , segundo el y "grafica señal 1 T" y grafica señal en 2D
    


    RMST =  rms(T1, 2);   %se especifican que se quiere en 2 dimensiones ,2  

    figure;
    plot(Time1, RMST); % se grafica señal rms T1
   
    
    
    ST1 = movmean(RMST,10);       %se hace una media movil para realizar un suavizado de la señal, sirve para determinar mejor la forma de la señal
   % SD2 = movmean(RMSD,50);       %se hace una media movil para realizar un suavizado de la señal

    figure;
    plot(Time1, ST1);      % se grafica T1 ya con el valor suavizado mediande media movil para tener menos variaciones, sirve para darle un umbral a las magnitudes de la señal 
  
    MEANT = mean(T1);    %media 
    
    
     MRMST = mean(RMST); %media rms, sirve para ver el nivel de activacion muscular 
    
     SDT = std(T1);  %se obtiene la desviacion estandar de la señal original 
    
     SDrmst = std(RMST); %se obtiene la desviacion estandar de la señal rms 
    
    %despues realizar analasis estadistico descriptivo, se procede a hacr
    %utilizando histograms y grafica de densidad ya pregeterminadas de matlab , en la consola introduccir
    
     histogram(T1)
     ksdensity(T1)
     figure;histogram(T1);
    
     WT = pwelch(T1);
    % WD = pwelch(D2);
    
    % convertir señal al dominio de la frecuencia, vamos a las graficas de
    % matlab: periodriagram, calculo de potencia (figure;pwelch(T1,'power');)  ---> welch power specturm 
    
     % figure;fourier(T1); 
   % FD = fourier(D2); "se obtiene transformada de fourier" 
    
     figure;
     plot(WT);
    % ylim([00 200]); % se establecen limites para la graficaion en el eje x, [limite inferior, limite superior]
    % figure;
    % plot(WD);
    % xlim ([00 200]);
    

    
    