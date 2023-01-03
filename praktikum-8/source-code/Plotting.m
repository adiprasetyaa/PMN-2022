% M0521003 - Adi Prasetya
% Plot Kurva untuk metode eksak dan ketiga metode lainnya

x=linspace(0,2);
fasli = @(x) sqrt(4-x)
y=fasli(x);

plot(x,y, 'r', x_euler, y_euler, 'g', x_heun, y_heun, 'y', x_runge4, y_runge4, 'b')

line([min(x),max(x)],[0,0]);
line([0,0],[min(y),max(y)]);

%Anotasi
legend ("eksak", "euler", "heun", "runge4")
title('Grafik Fungsi')
xlabel('Sumbu X')
ylabel('Sumbu Y')

