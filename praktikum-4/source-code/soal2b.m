% M0521003 - Adi Prasetya
fprintf('M0521003 - Adi Prasetya\n\n');

# Menghitung dengan membulatkan masing-masing akar

rounding = 0;
for i = 1:100;
  result = round(sqrt(i));
  rounding = rounding + result;
end

fprintf('result\t= %f\n', rounding);
