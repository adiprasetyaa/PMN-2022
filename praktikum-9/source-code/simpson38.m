% M0521003 - Adi Prasetya

function S38 = simpson38(f,a,b,N)
  h = (b-a)/N;
  x = a;
  S = f(a);
  for i = 1:N-1
    x = x+h;
    if mod(i,3) == 0
      S = S+2*f(x);
    else
      S = S+3*f(x);
    endif
  endfor
  S = S+f(b);
  S38 = (h*3/8)*S;
end
