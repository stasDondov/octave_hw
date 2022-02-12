disp('Task 2 a)')

disp('Дослідимо ряд за ознакою Даламбера')
pkg load symbolic
syms n
f = @(n)(1000.^n)./factorial(n);
S1 = f(1);

m = 2;
Max_iter = 500;
while true
  S2 = S1;
  S1 = f(m);
  p = S1 / S2;
  if 0 <= p && p < 1
    disp('Ряд сходиться')
    break
  endif
  if isnan(p)==1 || isinf(p)==1 || m == Max_iter
    disp('Ряд розходиться')
    break
  endif
  m += 1;
endwhile


printf('\nTask 2 b)\n')

disp('Дослідимо ряд за ознакою Коші')
pkg load symbolic
syms n
f = @(n)(((n+1)./n).^n)./3^n;

m = 1;
Max_iter = 500;
while true
  S1 = f(m);
  p = nthroot(S1, m);
  if 0 <= p && p < 1
    disp('Ряд сходиться')
    break
  endif
  if isnan(p)==1 || isinf(p)==1 || m == Max_iter
    disp('Ряд розходиться')
    break
  endif
  m += 1;
endwhile

