% M0521003 - Adi Prasetya
fprintf('M0521003 - Adi Prasetya\n\n');

# Menghitung nilai Eksak
eksak = sqrt(2);

# Menghitung dengan Pendekatan
x = 0;
n = input('Masukkan nilai N: ');
for i = 1:n;
  y = x;
  x = (y+2/2)/2;
end
E = abs(eksak-x);
fprintf('Pendekatan\t= %f\n',x);
fprintf('Eksak\t\t= %f\n', sqrt(2));
fprintf('Error\t\t= %f\n', E);
fprintf('Relatif\t\t= %f\n\n\n\n\n', E/x);
