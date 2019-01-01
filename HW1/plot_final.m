x = [32,250,500,1000,2000,4000,8000,9000,10000,16000,20000];
y = [0.0025,0.002,0.002,0.0015,0.001,0.0009,0.0009,0.001,0.002,0.0025,0.0045];
y2 = [1.4e-03,9e-04,6e-04,6e-04,5e-04,3e-04,4e-04,8e-04,1e-03,1.8e-03,2.3e-03];
y3 = [9e-04,7e-04, 5e-04,4e-04,4e-04,2e-04, 2e-04,6e-04,7e-04,1e-03,2e-03];
y4 = [0.5e-03,4e-4,3e-04,1.5e-04,1e-04,9e-05,1e-04, 5e-04,8e-04,9.5e-04,2e-03];
y5 = [1.2e-03, 9.6e-04, 8.7e-04, 6.5e-04, 5.89e-04, 2.66e-04, 2e-04, 7.7e-04, 0.75e-03, 1.2e-03, 1.9e-03];
mean = [0.0013000, 0.0009920, 0.0008540, 0.0006600, 0.0005178, 0.0003512, 0.0003600, 0.0007340, 0.0010500, 0.0014900 ,0.0025400];
figure
plot(x,y,"r",x,y2,"b",x, y3,"green",x,y4,"black",x,y5,"m","LineWidth" ,2 );
hold on
plot(x,mean,"cyan--","LineWidth" ,2);
for i = 1:length(x)
    line([x(i) x(i)], get(gca, 'ylim'),"LineStyle","--");
end
hold off

title("Audiometric Test");
xlabel("Frequency (kHz)");
ylabel("Amplitude (dBm)");
leg = legend("Piero","Jovo","Andrea","Biko","Gaetano","mean",'Location','northwest');
title(leg,'Participants');
grid on;
