% M0521003 - Adi Prasetya
% Plot Kurva untuk Grafik pada Soal 1

x=linspace(0,4);
f1=@(x) x.^2 -5;
y=f1(x);
plot(x,y)

line([min(x),max(x)],[0,0]);
line([0,0],[min(y),max(y)]);

%Anotasi
legend('x^2 - 5')
title('Grafik untuk x^2 - 5')
xlabel('Sumbu X')
ylabel('Sumbu Y')

