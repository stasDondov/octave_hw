disp('Task 4')

x0 = 0.5;
n1 = 100;
n2 = 1000;
n3 = 10000;
l = 1; # проміжок [-l;l]

pkg load symbolic
syms x n N
f = x - 1;
a0 = (1/l) * (int(f, -l, l));
an = (1/l) * (int(f * cos(n*x*pi/l), -1, 1));
bn = (1/l) * (int(f * sin(n*x*pi/l), -1, 1));

f_fourier = a0/2 + symsum(an * cos(n*x*pi/l) + bn*sin(n*x*pi/l), n, 1, N);
f_fourier10 = subs(f_fourier, N, 10);
disp("Ряд Фур'є:")
disp(f_fourier10)

#для n=100
f1_fourier = a0/2 + symsum(an * cos(n*x*pi/l) + bn*sin(n*x*pi/l), n, 1, n1);
f1_fourier10 = subs(f1_fourier, n1, 10);
f1_fourier10 = double(subs(f1_fourier10, sym(x0, 'r')));
printf('Відносна похибка при n=100: %d\n', abs(f1_fourier10))

#для n=1000
f2_fourier = a0/2 + symsum(an * cos(n*x*pi/l) + bn*sin(n*x*pi/l), n, 1, n2);
f2_fourier10 = subs(f2_fourier, n2, 10);
f2_fourier10 = double(subs(f2_fourier10, sym(x0, 'r')));
printf('Відносна похибка при n=1000: %d\n', abs(f2_fourier10))

#для n=10000
f3_fourier = a0/2 + symsum(an * cos(n*x*pi/l) + bn*sin(n*x*pi/l), n, 1, n3);
f3_fourier10 = subs(f3_fourier, n3, 10);
f3_fourier10 = double(subs(f3_fourier10, sym(x0, 'r')));
printf('Відносна похибка при n=10000: %d\n', abs(f3_fourier10))

