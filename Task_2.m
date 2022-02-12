disp('Task 2')

disp('Дослідимо нескінченний добуток на збіжність')
pkg load symbolic
syms n
pN = symprod((((n+1)^2)/(n*(n+2))), 1, n);
p = double(limit(pN, Inf));
if p != 0
  disp('Нескінченний добуток збіжний')
else
  disp('Нескінченний добуток незбіжний')
end

