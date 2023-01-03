%M0521003 - Adi Prasetya

a = input('Masukkan nilai suhu Celcius : ');
if(a>100)
  fprintf('Maaf, batas titik didih Celcius 100 derajat Celcius\n');
elseif(32<0)
  fprintf('Maaf, batas titik beku Celcius 0 derajat Celcius\n');
else
  b = input('Tentukan konversi suhu : ');
  switch(b)
    case 1
      a = 0.8*a;
      fprintf('Sukses Konversi ke Reamur, maka nilai R: %g\n', a);
    case 2
      a = 1.8*a + 32;
      fprintf('Sukses Konversi ke Fahrenheit, maka nilai F: %g\n', a);
    case 3
      a = a + 273;
      fprintf('Sukses Konversi ke Kelvin, maka nilai K: %g\n', a);
    otherwise
      fprintf('Pilihan Anda tidak ada dalam sistem ini');
  end
end
