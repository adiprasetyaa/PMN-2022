% M0521003 - Adi Prasetya

function c = RegulaFalsi(fungsi,a,b,jumlahIterasi,batasError)
tic;
  fa = fungsi(a);
  fb = fungsi(b);
  if fa*fb > 0
    error('Warning: sama tanda.')
  endif
  fprintf(' Iterasi\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');
  for i=1:jumlahIterasi
    c = (a*fb-b*fa)/(fb-fa);
    fc = fungsi(c);
    fprintf (' %d\t\t%f\t%f\t%f\t%f\t%f\t%f\n',
            i,a,b,fa,fb,c,fc);
    if abs(c-a) <= batasError || abs(c-b) <= batasError
      break;
    endif
    if fa*fc == 0
      break;
    elseif fa*fc < 0
      b = c;
      fb = fungsi(b);
    else
      a = c;
      fa = fungsi(a);
    endif
  endfor
toc;
end
