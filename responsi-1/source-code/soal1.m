% M0521003 - Adi Prasetya

% function utama (main function)
function Utama()
    t = 0 : 0.01 : 4;
    h_Eksak = eksakWave(3, 20, 5, t, 10);
    h_Approx25 = ApproxWave(3, 10,t, 25);
    h_Approx26 = ApproxWave(3, 10,t, 26);
    h_Approx27 = ApproxWave(3, 10,t, 27);

    % Memanggil function PrintResult untuk mencetak hasil ke command window
    PrintResult(mean(h_Eksak), mean(h_Approx25), mean(h_Approx26), mean(h_Approx27));

    % Memanggil function plot untuk membuat grafik
    plot(t, h_Eksak, "r", t, h_Approx25, "m", t, h_Approx26, "g", t, h_Approx27, "b");
    xlabel('Waktu (t)');
    ylabel('h');
    gtext('fEksak')
    gtext('fn = 25')
    gtext('fn = 26')
    gtext('fn = 27')
    title('Grafik Perbandingan untuk Perhitungan secara Eksak dan Pendekatan')
endfunction

% function untuk melakukan perhitungan secara langsung (Eksak)
function h_eksakMethod = eksakWave(hNol, v, lambda, t, x)
  degree = t*v/lambda;
  h_eksakMethod = hNol*(cos(degree)+ exp(x));
endfunction

%function untuk melakukan perhitungan secara Pendekatan dg jumlah iterasi tertentu
function h_Approximation = ApproxWave(hNol, x,t, jumlahIterasi)
  degree = t*20/5;
  cosApprox = 0;
  eApprox = 0;

  for i = 0 : jumlahIterasi-1,
    cosApprox = cosApprox + power((-1), i) * power(degree, 2*i)/factorial(2*i);
    eApprox = eApprox + (x^i)/ factorial(i);
  endfor
  h_Approximation = hNol*((cosApprox)+eApprox);
endfunction

% function untuk mencetak hasil dari perhitungan dan galat dari perhitungan
% secara langsung (eksak) dan secara pendekatan

function PrintResult(h_Eksak, h_Approx25, h_Approx26, h_Approx27)
fprintf('Hasil Perhitungan Eksak dan Pendekatan : \n');
fprintf('Hasil perhitungan secara langsung (Eksak)         : %f\n', h_Eksak);
fprintf('Hasil perhitungan dengan 25 iterasi               : %f\n', h_Approx25);
fprintf('Hasil perhitungan dengan 26 iterasi               : %f\n', h_Approx26);
fprintf('Hasil perhitungan dengan 27 iterasi               : %f\n', h_Approx27);

Galat25 = abs(mean(h_Eksak) - mean(h_Approx25));
Galat26 = abs(mean(h_Eksak) - mean(h_Approx26));
Galat27 = abs(mean(h_Eksak) - mean(h_Approx27));
AverageGalat = (Galat25 + Galat26 + Galat27) / 3;

fprintf('\n\nHasil Perhitungan Galat secara Pendekatan : \n');
fprintf('Galat untuk perhitungan dg 25 Iterasi             : %f\n', Galat25);
fprintf('Galat untuk perhitungan dg 26 Iterasi             : %f\n', Galat26);
fprintf('Galat untuk perhitungan dg 27 Iterasi             : %f\n', Galat27);
fprintf('Galat rerata untuk perhitungan dengan pendekatan  : %f\n', AverageGalat);
endfunction
