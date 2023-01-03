% M0521003 - Adi Prasetya

function b = FPI(g,a,jumlahIterasi,batasError)
tic;
  syms x;
  g_diff = matlabFunction(diff(sym(g),'x'));
  c_score = abs(g_diff(a))
  if c_score < 0 || c_score > 1
    error("Fungsi tidak layak digunakan.")
  endif
  fprintf(' Iter\ta\t\tb\t\tgb\n');
  for i=1:jumlahIterasi
    b = g(a);
    gb = g(b);
    fprintf (' %d\t%f\t%f\t%f\n',
             i,a,b,gb);
    if abs(b-a)<=batasError || gb==0
      toc;
      return;
    else
      a=b;
    endif
  endfor
end
