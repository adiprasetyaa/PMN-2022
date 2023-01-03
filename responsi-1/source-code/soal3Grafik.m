% M0521003 - Adi Prasetya
%Plot Kurva
h=linspace(0,10);
y=f(h);
plot(h,y)

line([min(h),max(h)],[0,0]);
line([0,0],[min(y),max(y)]);

##%Annotation
gtext('y=h^3-15h^2-900/pi')
gtext('Akar')
