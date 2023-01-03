% M0521003 - Adi Prasetya

function b = NewtonRaphson_edited(f,a, jumlahIterasi, batasError)
tic;
  syms x;
  f_diff = matlabFunction(diff(sym(f),'x'));
  fprintf(' Iter\ta\t\tf(a)\t\tf_diff(b)\tb\t\tfb\n');
  for i=1:jumlahIterasi
    fa = f(a);
    fdiffa = f_diff(a);
    if fdiffa==0
      error("Pembagian dengan 0.")
    endif

    b = a-fa/fdiffa;
    fb = f(b);
    fprintf (' %d\t%f\t%f\t%f\t%f\t%f\n',
             i,a,fa,fdiffa,b,fb);
    if abs(b-a)<= batasError || fb==0
      toc;
      return;
    else
      a=b;
    endif
  endfor
end
