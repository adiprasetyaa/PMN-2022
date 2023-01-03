% M0521003 - Adi Prasetya
fprintf('M0521003 - Adi Prasetya\n\n');

# Perhitungan secara Eksak

eksak = 0;
for i = 1:100;
  result = sqrt(i);
  eksak = eksak + result;
end

fprintf('result\t= %f\n', eksak);

