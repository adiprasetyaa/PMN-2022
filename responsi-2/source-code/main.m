% M0521003 - Adi Prasetya

# Source Code untuk kasus 2
# Interpolasi Polinomial 1.2

f = ndd(xy)
marker_x= xy(:,1);
marker_y= xy(:,2);
x=linspace(min(marker_x),max(marker_x));
hold on
plot(x,f(x))
plot(marker_x,marker_y,"wo","MarkerFaceColor","r")
hold off


