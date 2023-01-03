% M0521003 - Adi Prasetya
h=linspace(0,10);
y=f(h);
plot(h,y)

line([min(h),max(h)],[0,0]);
line([0,0],[min(y),max(y)]);

##%Annotation
title('Grafik h^3-15*h^2+(900/pi)');
gtext('y=h^3-15h^2-900/pi')
gtext('Akar')

% a = 5 dan b = 6

% function untuk perhitungan dengan metode Biseksi
function c = Biseksi(f,a,b,jumlahIterasi,batasError)
  fa = f(a);
  fb = f(b);
  if fa*fb > 0
    error('Warning: sama tanda.')
  endif
  fprintf('Iterasi :\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');
  for i=1:jumlahIterasi
    c = (a+b)/2;
    fc = f(c);
    fprintf ('%d\t\t%f\t%f\t%f\t%f\t%f\t%f\n',i,a,b,fa,fb,c,fc);
    if abs(c-a) <= batasError || abs(c-b) <= batasError
      break;
    endif
    if fa*fc == 0
      break;
    elseif fa*fc < 0
      b = c;
      fb = f(b);
    else
      a = c;
      fa = f(a);
    endif
  endfor
end

% function untuk perhitungan dengan metode Regula Falsi
function c = RegulaFalsi(f,a,b,jumlahIterasi,batasError)
  fa = f(a);
  fb = f(b);
  if fa*fb > 0
    error('Warning: sama tanda.')
  endif
  fprintf('Iterasi :\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');
  for i=1:jumlahIterasi
    c = (a*fb-b*fa)/(fb-fa);
    fc = f(c);
    fprintf ('%d\t\t%f\t%f\t%f\t%f\t%f\t%f\n',i,a,b,fa,fb,c,fc);
    if abs(c-a) <= batasError || abs(c-b) <= batasError
      break;
    endif
    if fa*fc == 0
      break;
    elseif fa*fc < 0
      b = c;
      fb = f(b);
    else
      a = c;
      fa = f(a);
    endif
  endfor
end
