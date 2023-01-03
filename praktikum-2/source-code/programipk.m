%M0521003 - Adi Prasetya

a = input('Masukkan Nilai IPK : ');
if(a >= 85)
  fprintf('Anda dapat A\n');
elseif(a >= 80 && a < 85)
  fprintf('Anda dapat A-\n');
elseif(a >= 75 && a < 80)
  fprintf('Anda dapat B+\n');
elseif(a >= 70 && a < 75)
  fprintf('Anda dapat B\n');
elseif(a >= 65 && a < 70)
  fprintf('Anda dapat C+\n');
else
  fprintf('Anda dapat C\n');
end
