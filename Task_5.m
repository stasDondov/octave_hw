disp('Task 5')

y = @(x)((x-3).^3).*e.^abs(x);
[xmin ymin] = fminbnd(y, -1, 4);
plot(xmin, ymin, 'o', 'LineWidth', 3);hold on;
x = -1:.01:4;
f = y(x);
plot(x, f);
g = @(x) -y(x);
[xmax ymax] = fminbnd(g, -1, 4);
plot(xmax, -ymax, 'o', 'LineWidth', 3);hold on;

printf("\n�������� �������� ������� y=(x-3)^3*e^abs(x) �� ������ [-1; 4] \
����������� � �����: �=%d y=%d", 
       round(100*xmin)/100, round(100*ymin)/100)
printf("\n�������� �������� ������� y=(x-3)^3*e^abs(x) �� ������ [-1; 4] \
����������� � �����: �=%d y=%d\n", 
       round(100*xmax)/100, round(-ymax*100)/100)

