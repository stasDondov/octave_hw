disp('Task 3')

pkg load symbolic
syms x n
f = ((factorial(n)^2)/(factorial(2*n))) * x^n;

pN = symprod(f, 1, n);
p = double(limit(pN, Inf));

if isinf(p)
  r = '0';
  i = 'x = 0';
  x1 = 0;
  x2 = 0;
elseif p == 0
  r = 'Inf';
  i = 'абсолютно на R'
  x1 = -Inf;
  x2 = +Inf;
else
  r = num2str(1/p);
  i = 'абсолютно на [-%s;%s]'.format(num2str(r), num2str(r));
  x1 = -1/p;
  x2 = 1/p;
end
printf('Радіус збіжності степеневого ряду: %s\n', r)
printf('Інтервал збіжності степеневого ряду: %s\n', i)

#Дослідимо збіжність у кінцевих точках інтервалу
l1 = double(limit(((factorial(n)^2)/(factorial(2*n))) * x^n, n, x1));
l2 = double(limit(((factorial(n)^2)/(factorial(2*n))) * x^n, n, x2));

if l1 != 0
  disp('Ряд в кінцевій лівій точці збіжний')
else
  disp('Ряд в кінцевій лівій точці розбіжний')
end

if l2 != 0
  disp('Ряд в кінцевій правій точці збіжний')
else
  disp('Ряд в кінцевій правій точці розбіжний')
end

