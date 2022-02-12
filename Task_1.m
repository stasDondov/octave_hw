disp('Task 1.a)')

xx = 0.04;
eps = 10^(-5);
x_0 = 8;
x = x_0 - eps;
y_0 = x_0^(1/3);
y = 0;
dif_1 = abs(y - y_0)/(x - x_0);
difference = eps + 1;

while abs(difference) > eps || x < x_0 - eps/10
  y = x^(1/3);
  dif_2 = (y - y_0)/(x - x_0);
  difference = dif_1 - dif_2;
  dif_1 = dif_2;
  x += eps/10;
endwhile
ans1 = round(dif_1*10^(3))/10^(3);
F = y_0 + ans1*xx;
printf('Наближене значення 8.04^(1/3) = %d\n\n', F)


disp('Task 1.b)')

xx = 0.05;
eps = 10^(-5);
x_0 = 1;
x = x_0 - eps;
y_0 = atan(x);
y = 0;
dif_1 = abs(y - y_0)/(x - x_0);
difference = eps + 1;

while abs(difference) > eps || x < x_0 - eps/10
  y = atan(x);
  dif_2 = (y - y_0)/(x - x_0);
  difference = dif_1 - dif_2;
  dif_1 = dif_2;
  x += eps/10;
endwhile
ans1 = dif_1;
F = y_0 + ans1*xx;
printf('Наближене значення arctg(1.05) = %d\n', F)

