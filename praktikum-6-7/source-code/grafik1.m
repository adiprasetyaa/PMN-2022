%Plot Kurva

x=linspace(0,4);
f=@(x) x-sqrt(5);
y=f(x);
plot(x,y)

line([min(x),max(x)],[0,0]);
line([0,0],[min(y),max(y)]);

%Anotasi
legend('x-sqrt(5)')
title('Grafik untuk x - sqrt(5)')
xlabel('Sumbu X')
ylabel('Sumbu Y')

