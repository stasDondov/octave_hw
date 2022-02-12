disp("Task 2, a)")

x = 0;
sup = 0;
inf = Inf;
difference = 1;
n = 0;
Max_iter = 500;
while difference <= Max_iter
  xn = (1 + 2*(-1)^n)/(3+(-1)^n);
  if (xn > sup)
    sup = xn;
  endif
  if (xn<inf)
    inf = xn;
  endif
  difference = difference + 1;
  n++;
endwhile

printf("Max iter. = %d reached\n", Max_iter);
printf("Верхня границя: %.2f\n", sup);
printf("Нижня границя: %.2f\n\n", inf);


disp("Task 2, b)");

eps = 10^(-5);
x = 0;
sup = 0;
inf = Inf;
difference = 1;
n = 0;
Max_iter = 500;
while abs(difference) > eps
  xn = (-1)^n*((n+1)/(n+2))+sin((pi*n)/2);
  if (xn > sup)
    sup = xn;
  endif
  if (xn < inf)
    inf = xn;
  endif
  difference = xn - x;
  if n > Max_iter
    printf("Max iter. = %d reached\n", Max_iter);
    break
  endif
  n++;
endwhile
printf("Верхня границя: %.2f\n", sup);
printf("Нижня границя: %.2f\n", inf);

