disp('Task2')

pkg load symbolic
syms x
f1 = sym('(1-x^2)^(1/2)');
f2 = sym('x^2-1');
f3 = minus(f2,f1);
kxs = solve(f3,x);
kx = double(kxs);
a = min(kx);
b = max(kx);
ans = eval(abs(int(f3, a, b)));
printf('Площа фігури: %d\n', ans)

