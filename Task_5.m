disp("Task 5, a)");

eps = 10^(-5);
x = 0 + 10^(-6);
y0 = 0;
y1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < eps + 10^(-6)
  y0 = sin(x) / abs(x);
  difference = abs(y0 - y1);
  y1 = y0;
  x += 10^(-6);
endwhile
printf("√раниц€ справа: %.2f\n", y0)

eps = 10^(-5);
x = - eps;
y0 = 0;
y1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < 0 - 10^(-6)
  y0 = sin(x) / abs(x);
  difference = abs(y0 - y1);
  y1 = y0;
  x += 10^(-6);
endwhile
printf("√раниц€ зл≥ва: %.2f\n\n", y0);


disp("Task 5, b)");

eps = 10^(-5);
x = 1 + 10^(-6);
y0 = 0;
y1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < eps + 1
  y0 = -2 * x;
  difference = abs(y0 - y1);
  y1 = y0;
  x += 10^(-6);
endwhile
printf("√раниц€ зл≥ва: %.2f\n", y0)

eps = 10^(-5);
x = 1 - eps;
y0 = 0;
y1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < 1 - 10^(-6)
  y0 = x;
  difference = abs(y0 - y1);
  y1 = y0;
  x += 10^(-6);
endwhile
printf("√раниц€ справа: %.2f\n", y0)

