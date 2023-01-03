% M0521003 - Adi Prasetya
% Plot Kurva untuk Grafik pada Soal 2

x=linspace(0,4);
f2=@(x) (log(4*sin(2*x)+5)/3)-(2*x/3);
y=f2(x);
plot(x,y)

line([min(x),max(x)],[0,0]);
line([0,0],[min(y),max(y)]);

%Anotasi
legend('(ln(4*sin(2*x)+5)/3)-(2*x/3)')
title('Grafik untuk (ln(4*sin(2*x)+5)/3)-(2*x/3)')
xlabel('Sumbu X')
ylabel('Sumbu Y')
