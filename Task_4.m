disp("Task 4, c)");

eps = 10^(-5);
x = 0 + 10^(-6);
y0 = 0;
y1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < eps
  y0 = (sqrt(1 + tan(x)) - sqrt(1 + sin(x))) / x^3;
  difference = abs(y0 - y1);
  y1 = y0;
  x += 10^(-6);
endwhile
printf("Limit: %.2f\n\n", y0)


disp("Task 4, d)");

eps = 10^(-6);
x = pi/4 - eps;
y0 = 0;
y1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < pi / 4 - 10^(-7)
  y0 = tan(x)^(tan(2*x));
  difference = abs(y0 - y1);
  y1 = y0;
  x += 10^(-7);
endwhile
printf("Limit: %.2f\n", y0)

# якщо шукати границю за допомогою пакету symbolic, ви€вимо, що
# в≥дпов≥дь: e^(-1) = 0.36788

