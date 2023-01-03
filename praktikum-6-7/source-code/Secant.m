% M0521003 - Adi Prasetya

function c = Secant(f,a,b,jumlahIterasi,batasError)
  fprintf(' Iter\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');
tic;
  for i=1:jumlahIterasi
    fa = f(a);
    fb = f(b);
    if fb==fa
      error("Pembagian dengan 0.")
    endif
    c = b-(fb*(b-a))/(fb-fa);
    fc = f(c);
    fprintf (' %d\t%f\t%f\t%f\t%f\t%f\t%f\n',
            i,a,b,fa,fb,c,fc);
    if abs(c-b)<=batasError || fc==0
      toc;
      return;
    else
      a=b;
      b=c;
    endif
  endfor
toc;
end
