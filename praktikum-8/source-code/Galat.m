% M0521003 - Adi Prasetya
% Perhitungan Galat pada TItik Terakhir dan Keseluruhan Iterasi

eksak = fasli(2);
fprintf('Hasil Perhitungan dengan 3 Metode : \n')

digitsOld = digits(12);

eksak_8 = vpa(eksak)
euler_8 = vpa(euler)
heun_8 = vpa(heun)
runge4_8 = vpa(runge4)

fprintf('\nHasil Perhitungan Galat pada Titik Terakhir: \n')
err_euler = abs((eksak-euler)/eksak)
err_heun = abs((eksak-heun)/eksak)
err_runge4 = abs((eksak-runge4)/eksak)

fprintf('\nHasil Perhitungan Galat pada Keseluruhan Iterasi: \n')
all_error_euler = vpa(mean(abs((fasli(x_euler)-y_euler)-fasli(x_euler))))
all_error_heun = vpa(mean(abs((fasli(x_heun)-y_heun)-fasli(x_heun))))
all_error_runge4 = vpa(mean(abs((fasli(x_runge4)-y_runge4)-fasli(x_runge4))))
