disp('Task 1 1)')

pkg load symbolic
syms n
p10 = symprod((1-(1/n^2)), 2, 10);
pN = symprod((1-(1/n^2)), 2, n);
p = double(limit(pN, Inf));

printf('Частковий добуток ряду при n=10: %d\n', eval(p10))
printf('Нескінченний добуток ряду: %d\n\n', p)

disp('Task 1 2)')

pkg load symbolic
syms n
pp10 = symprod((1-(2/(n*(n+1)))), 2, 10);
ppN = symprod((1-(2/(n*(n+1)))), 2, n);
pp = double(limit(ppN, Inf));

printf('Частковий добуток ряду при n=10: %d\n', eval(pp10))
printf('Нескінченний добуток ряду: %d\n', pp)

