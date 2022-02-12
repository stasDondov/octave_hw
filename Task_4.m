disp('Task 4')

a = 0; b = 1;
n = 8;
h = (b - a) / n;

pkg load symbolic
syms x

f = @(x)e^(x^2);
d = diff(diff(f(x)));
dd = @(x)eval(d);

Sum = 0;
i = 1;
x_list = zeros(1, n);
while i < n
  x_i = h*i;
  Sum += f(x_i);
  x_list(i) = dd(x_i);
  i += 1;
end
Ans = h * ((f(a) + f(b))/2 + Sum);

printf('За методом трапецій integral(e^(x^2)) = %d\n', Ans)

M = max(x_list);
E = (((b-a)^3)*M) / (12*n^2);
printf('Похибка обчислень за методом трапецій = %d\n', E)

x = a:0.05:b;
y = e.^(x.^2);
Metod = trapz(x, y);

p = round(abs(Metod - Ans)*10^5)/10^5;
printf("Інтеграл обчислений методом трапецій відрізняється від \
обчисленого за допомогою вбудованої функції на %d\n", p)

if p < E
  disp('Отже, метод трапецій досить точний')
else
  disp('Oтже, метод трапецій недостатньо точний')
endif

