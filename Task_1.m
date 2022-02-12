disp('Task 1.a)')

eps = 10^(-5);
x_0 = 0;
x = x_0 - eps;
y_0 = (asin(x_0)/sqrt(1-x_0^2)) + 0.5*log((1-x_0)/(1+x_0));
y = 0;
dif_1 = abs(y - y_0)/(x - x_0);
difference = eps + 1;

while abs(difference) > eps || x < x_0 - eps/10
  y = (asin(x)/sqrt(1-x^2)) + 0.5*log((1-x)/(1+x));
  dif_2 = (y - y_0)/(x - x_0);
  difference = dif_1 - dif_2;
  dif_1 = dif_2;
  x += eps/10;
endwhile
ans1 = round(dif_1*10^(3))/10^(3);

%---------------------------------------------------------------------------------------

x_0 = 0;
y = @(x)(asin(x)/sqrt(1-x^2)) + 0.5*log((1-x)/(1+x));
ans2 = gradient(y, x_0, eps/10);
ans2 = round(ans2*10^(3))/10^(3);

%---------------------------------------------------------------------------------------

if ans1 == ans2
  disp('–езультати однаков≥')
  printf(" y' = %d\n\n", ans1)
else
  disp('–езультати в≥др≥зн€ютьс€')
  printf(" y1' = %d\n", ans1)
  printf(" y2' = %d\n\n", ans2)
endif


disp('Task 1.b)');

eps = 10^(-5);
x_0 = 1;
x = x_0 - eps;
y_0 = sqrt(x_0 + sqrt(x_0 + sqrt(x_0)));
y = 0;
dif_1 = abs(y - y_0)/(x - x_0);
difference = eps + 1;

while abs(difference) > eps || x < x_0 - eps/10
  y = sqrt(x + sqrt(x + sqrt(x)));
  dif_2 = (y - y_0)/(x - x_0);
  difference = dif_1 - dif_2;
  dif_1 = dif_2;
  x += eps/10;
endwhile
ans1 = round(dif_1*10^(3))/10^(3); #округлимо ans1 до сотих

%---------------------------------------------------------------------------------------

x_0 = 1;
y = @(x)sqrt(x + sqrt(x + sqrt(x)));
ans2 = gradient(y, 1, eps/10);
ans2 = round(ans2*10^(3))/10^(3);

%---------------------------------------------------------------------------------------

if ans1 == ans2
  disp('–езультати однаков≥')
  printf(" y' = %d\n", ans1)
else
  disp('–езультати в≥др≥зн€ютьс€')
  printf(" y1' = %d\n", ans1)
  printf(" y2' = %d\n", ans2)
endif

