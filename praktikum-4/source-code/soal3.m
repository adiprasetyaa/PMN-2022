% M0521003 - Adi Prasetya
fprintf('M0521003 - Adi Prasetya\n');

# Menentukan nilai galat dengan Deret Taylor

% Menghitung nilai cos(phi) dengan nilai eksak
Eksak = cos(pi);

% Menghitung nilai cos(x) dengan Deret Taylor
n = input('Input nilai n: ');
deretTaylor = 0;

for i = 0:n,
   deretTaylor = deretTaylor + (((-1)^i) * ((pi^(2*i))/ factorial(2*i)));
end

fprintf('Eksak : \n')
fprintf('%5.20f\n',Eksak)
fprintf('Deret Taylor : \n')
fprintf('%5.20f\n',deretTaylor)
e = abs(Eksak-deretTaylor);
fprintf('Galat : ')
fprintf('%5.20f\n',e)

