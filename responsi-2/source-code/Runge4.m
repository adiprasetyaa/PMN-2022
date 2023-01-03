% M0521003 - Adi Prasetya

# Source Code untuk Kasus 1

function y = Runge4 (f,a,b,y0,N)
  h = (b-a)/N;
  fprintf('\n Hasil Perhitungan Metode Runge-Katta Orde 4\n i\txn\t\tk1\t\tk2\t\tk3\t\tk4\t\tyn\n')
  #Memulai iterasi ke-0
  x = a;
  y = y0;
  k = [];
  e = 5*10^6;
  fprintf(' %d\t%f\t-\t\t-\t\t-\t\t-\t\t%f\n',
          0, x, y);
  #Memulai iterasi pertama sampai selesai
  for i = 1:N;
    k(1) = f(x(i),y(i));
    k(2) = f(x(i)+h/2,y(i)+k(1)*h/2);
    k(3) = f(x(i)+h/2,y(i)+k(2)*h/2);
    k(4) = f(x(i)+h,y(i)+k(3)*h);
    y(i+1) = y(i)+h/6*(k(1)+2*k(2)+2*k(3)+k(4));
    x(i+1) = x(i)+h;
    fprintf(' %d\t%f\t%f\t%f\t%f\t%f\t%f\n',
            i, x(i+1), k(1), k(2), k(3), k(4), y(i+1));
         if(y (end) < e)
                  fprintf(' Konsentrasi dari polutan sudah mencapai batas aman.\n')
                  fprintf(' Iterasi berhenti pada iterasi ke-%g\n', y = i )
                  fprintf(' waktu yang dibutuhkan hingga air danau tersebut dinilai\n')
                  fprintf(' aman adalah setelah %g minggu\n\n', b)
                  break;
         endif
  endfor

  if(y (end) > e)
       fprintf(' Konsentrasi dari polutan masih berbahaya.\n\n\n')
end
