disp('Task 1')

pkg load symbolic
syms n
f = @(n)1./((3.*n-2).*(3.*n+1));
ans1 = sum(f([1:2]));
printf('Часткова сума ряду для n=2: %d\n', ans1)

eps = 10^(-4);
n_0 = 1/4;
m = 2;
S1 = 1/((3*0.25-2)*(3*0.25+1));
difference = 2*eps;

Max_iter = 500;
while abs(difference) > eps && m < Max_iter
  S2 = sum(f([1:m]));
  difference = (S1 - S2);
  S1 = S2;
  m += 1;
endwhile

if m < Max_iter
  disp('Ряд збіжний')
end

series_sum = symsum(1/((3*n-2)*(3*n+1)), n, 1, inf);
printf('Сума ряду: %d\n', double(series_sum))

