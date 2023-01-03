%M0521003 - Adi Prasetya

fprintf('OPERASI MATRIKS\n');
x = [5 2 1 5; 4 6 1 9; 2 4 6 1]
y = [1 2]
a = x(y, 3)
b = x(3, y)

c = x(y,:)
d = x(:,y)

e = zeros(4)
e(1:2,:) = x(y,:)

f = ones(3)
f(1:2, 2:3) = x(2:3, 1:2)

g = rand(4,3)
g(1:2,1:3) = x(2:3,1:3)


%M0521003 - Adi Prasetya

h =[1 2 3; 9 8 7; 4 5 6];
i =[4 3 2; 5 2 4; 5 2 4];
j = h*i

k = h.*j

l = h.^j

m = det(i)

n = inv(h)

h'

i'




