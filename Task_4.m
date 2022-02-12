disp('Task 4.a)')

y = @(x)3*x-x.^3;
[xmin ymin] = fminbnd(y, -5, 5);
plot(xmin, ymin, 'o', 'LineWidth', 3);hold on;
x = -5:.01:5;
f = y(x);
plot(x, f);hold on;
g = @(x) -y(x);
[xmax ymax] = fminbnd(g, -5, 5);
plot(xmax, -ymax, 'o', 'LineWidth', 3);hold on;

printf("\n��������� ����� ������� y=3x-x^3 �� ������ [-5; 5] \
����������� � �����: �=%d y=%d", 
       round(100*xmin)/100, round(100*ymin)/100)
printf("\n��������� �������� ������� y=3x-x^3 �� ������ [-5; 5] \
����������� � �����: �=%d y=%d\n\n", 
       round(100*xmax)/100, round(-ymax*100)/100)

       
disp('Task 4.b)')

y = @(x)2.^(-x).*x.^2;
[xmin ymin] = fminbnd(y, -2, 6);
plot(xmin, ymin, 'o', 'LineWidth', 3);hold on;
x = -2:.01:6;
f = y(x);
plot(x, f); hold on;
g = @(x) -y(x);
[xmax ymax] = fminbnd(g, -2, 6);
plot(xmax, -ymax, 'o', 'LineWidth', 3);hold on;

printf("\n��������� ����� ������� y=2^(-x)*x^2 �� ������ [-2; 6] \
����������� � �����: �=%d y=%d", 
       round(100*xmin)/100, round(100*ymin)/100)
printf("\n��������� �������� ������� y=2^(-x)*x^2 �� ������ [-2; 6] \
����������� � �����: �=%d y=%d\n", 
       round(100*xmax)/100, round(-ymax*100)/100)

