disp('Task 5.a)')

#f = (1+x)^(1/x)-e;
#g = x;
b = 0;
# знайдемо похідну чисельника
eps = 10^(-3);
x_0 = b;
x = x_0 - eps;
y_0 = 0;
dif_1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < x_0 - eps/10
  y = (1+x)^(1/x)-e;
  dif_2 = (y - y_0)/(x - x_0);
  difference = dif_1 - dif_2;
  dif_1 = dif_2;
  x += eps/10;
endwhile
ans1 = dif_1; 

#знайдемо похідну знаменника
eps = 10^(-3);
x_0 = b;
x = x_0 - eps;
y_0 = 0;
dif_1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < x_0 - eps/10
  y = x;
  dif_2 = (y - y_0)/(x - x_0);
  difference = dif_1 - dif_2;
  dif_1 = dif_2;
  x += eps/10;
endwhile
ans2 = dif_1; 

Ans = ans1/ans2;
Ans = round(Ans*10^(3))/10^(3);
printf('Limit = %d\n\n', Ans)


disp('Task 5.b)')

#f =  x-1-log(x);
#g = (x-1) * log(x);
b = 1;

# знайдемо похідну чисельника 
eps = 10^(-3);
x_0 = b;
x = x_0 - eps;
y_0 = 0;
dif_1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < x_0 - eps/10
  y = x-1-log(x);
  dif_2 = (y - y_0)/(x - x_0);
  difference = dif_1 - dif_2;
  dif_1 = dif_2;
  x += eps/10;
endwhile
ans1 = dif_1; 

# знайдемо похідну чисельника
eps = 10^(-3);
x_0 = b;
x = x_0 - eps;
y_0 = 0;
dif_1 = 0;
difference = eps + 1;
while abs(difference) > eps || x < x_0 - eps/10
  y = (x-1) * log(x);
  dif_2 = (y - y_0)/(x - x_0);
  difference = dif_1 - dif_2;
  dif_1 = dif_2;
  x += eps/10;
endwhile
ans2 = dif_1; #округлимо ans1 до сотих

Ans = round(ans1/ans2*100)/100;
printf('Limit = %d\n', Ans)