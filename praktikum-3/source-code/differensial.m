% M0521003 - Adi Prasetya
f = input('Masukkan bentuk persamaan f(x) = ');
f_real = sym (f)
f_differential = diff(f_real, 'x')
