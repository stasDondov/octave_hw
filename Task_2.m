disp('Task 2')

pkg load symbolic
syms t
x = nthroot((1 - sqrt(t)), 3);
x_t = diff(x);
y = sqrt(nthroot((1 - (t)), 3));
y_t = diff(y);
y_x = y_t/x_t;
y_xx = diff(y_x)/x_t
#Ans = limit(y_xx, t, 1)

