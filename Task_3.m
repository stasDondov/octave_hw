disp('Task 3')

printf('Գ���� ������ �������� y = 4*(1-(x^2)/25)^(1/2)\n')
printf('� ������� �����, �� ���� �����: a=5, b=4\n')

a = 5;
b = 4;
S = pi*a*b;

pkg load symbolic
syms x

f1 = x*4*(1-(x^2)/25)^vpa(1/2);
x_0 = vpa(1/S) * int(f1, x, 0, b);
x_0 = double(x_0);

f2 = (16*(1-(x^2)/25));
y_0 = vpa(1/(2*S)) * int(f2, x, 0, a);
y_0 = double(y_0);

printf('���������� ������ ���� ������: (%d, %d)\n', x_0, round(y_0*100)/100)

