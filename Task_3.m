disp("Task 3, a)");

eps = 10^(-6);
x = 2 - eps;
y0 = 0;
y1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < 2 - 10^(-7)
  y0 = (x^3 - 2*x^2 - 4*x + 8) / (x^4 - 8*x^2 + 16);
  difference = abs(y0 - y1);
  y1 = y0;
  x += 10^(-7);
endwhile

printf("Limit: %.2f\n\n", y0);


disp("Task 3, b)");

eps = 10^(-6);
x = 2 - eps;
y0 = 0;
y1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < 2 - 10^(-7)
  y0 = (x^2 - x - 2)^20 / (x^3 - 12*x + 16);
  difference = abs(y0 - y1);
  y1 = y0;
  x += 10^(-7);
endwhile

printf("Limit: %.2f\n", y0);

