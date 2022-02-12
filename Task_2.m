disp('Task 2');

x_0 = 2;
y_0 = x_0^x_0;

pkg load symbolic
syms x
y = x^x;
dydx = diff(y);
dy = double(subs(dydx, x_0)); # ������� ���� �������

# ������ ������� 
X = linspace(0, 3);
Y = dy * (X - x_0) + y_0;
# ������ �������
Q = X.^X;
# ������ ������
W = (X - x_0)/(-dy) + y_0;

plot(X, Y, 'r', X, Q, 'g', X, W, 'b')

