disp("Task 1, a)")

eps = 10^(-8);
n = 1;
y_0 = 1/8;
y_1 = 0;
difference = eps + 1;
while abs(difference) > eps
  n = n + 1;
  y_0 = (y_0 * (n^3) + n^2) / (n+1)^3;
  difference = y_0 - y_1;
  y_1 = y_0;
endwhile

printf("Limit: %.2f\n\n", y_1);


disp("Task 1, b)")
eps = 10^(-8);
n = 1;
y_0 = 1/2;
difference = y_0 - y_1;
y_1 = y_0;
while abs(difference) > eps
  n = n + 1;
  y_0 = y_0 + 1/(n*(n+1));
  difference = y_0 - y_1;
  y_1 = y_0;
endwhile

printf("Limit: %.2f\n", y_1);

