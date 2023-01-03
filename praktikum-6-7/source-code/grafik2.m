%Plot Kurva
x=linspace(-0.3,2.5);
f1=@(x) x.^3-4*x.^2;
f2=@(x) -6*x+3;
y1=f1(x);
y2=f2(x);
plot(x,y1,x,y2)

line([-1,3],[0,0]) %Sumbu X
line([0,0],[-6,6]) %Sumbu Y

%Annotation
gtext('y_1=x^3-4x^2')
gtext('y_2=-6x+3')
gtext('Akar')
