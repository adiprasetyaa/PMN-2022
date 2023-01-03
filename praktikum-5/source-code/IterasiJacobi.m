% M0521003 - Adi Prasetya
function x = IterasiJacobi(A,b,tol,max_iter);
tic;
[n,m] = size(A);
for i = 1:n,
    xlama(i) = b(i)/A(i,i);
end
xlama = xlama';
C = -A;
for i = 1:n,
    C(i,i) = 0.0;
    C(i,:) = C(i,:)/A(i,i);
    d(i,1) = xlama(i);
end
i = 1;
while (i <= max_iter)
    xbaru = C*xlama + d;
    if (abs(xbaru - xlama) <= tol)
        x = xbaru;
        disp ('Jacobi method konverge');
        toc;
        return;
    else
        xlama = xbaru;
    end
##    disp([i xbaru']);
    i = i + 1;
end
disp ('Jacobi method not konverge');
toc;
