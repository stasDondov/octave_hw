disp('Task 3.a)')
x_0 = pi/4;
n = 25;
d = sin(x_0 + pi*n/2);
printf("\n25-та похідна функції y=sin(x)^2 у точці х=pi/4: %d\n\n", d);

printf('Task 3.b)')
x_0 = 1;
n = 25;
d = 5*((-1)^(n-1)*factorial(n-1)/x_0^n);
printf("\n25-та похідна функції y=5*ln(5x) у точці х=1: %d\n\n", d);

printf('Task 3.c)')
x_0 = 0;
n = 25;
d = 2^(-3*x_0)*(log(2))^(n);
printf("\n25-та похідна функції y=2^(-3x) у точці х=0: %d\n", d);

