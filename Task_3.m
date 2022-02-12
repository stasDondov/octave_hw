disp('Task 3');

#y_1 = 1/x;
#y_2 = sqrt(x);

x_0 = 1; # точка перетину графіків

pkg load symbolic
syms x
y_1 = 1/x;
dydx = diff(y_1);
dy_1 = double(subs(dydx, x_0));

syms u
y_2 = sqrt(u);
Dydx = diff(y_2);
dy_2 = double(subs(Dydx, x_0));

tan = (dy_2 - dy_1)/(1 + dy_1 * dy_2);
Ans = atan(tan);
printf('Кут між графіками = %d', rad2deg(Ans))

X = linspace(-1, 5);
Y = dy_1 * (X - x_0) + 1; #  дотична до y_1
YY = dy_2 * (X - x_0) + 1;  #  дотична до y_2
plot(X, Y, 'r', X, YY, 'b')
