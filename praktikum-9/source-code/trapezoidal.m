% M0521003 - Adi Prasetya

function T = trapezoidal(f,a,b,N)
  h = (b-a)/N;
  x = a;
  S = f(a);
  for i = 1:N-1
    x = x+h;
    S = S+2*f(x);
  endfor
  S = S+f(b);
  T = (h/2)*S;
end
