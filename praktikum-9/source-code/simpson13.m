% M0521003 - Adi Prasetya

function S13 = simpson13(f,a,b,N)
  h = (b-a)/N;
  x = a;
  S = f(a);
  for i = 1:N-1
    x = x+h;
    if mod(i,2) == 1
      S = S+4*f(x);
    else
      S = S+2*f(x);
    endif
  endfor
  S = S+f(b);
  S13 = (h/3)*S;
end
