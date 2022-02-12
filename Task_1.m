disp('Task 1.a)')

eps = 0.001;
sum = 0;
x1 = 0;
x2 = 1;
f = @(x) 1./(1+x.^2);
n = (x2-x1)/eps;
for i = 1:n;
  x1 += eps;
  sum += f(x1)*eps;
endfor          
Ans1 = sum;
printf('≤нтеграл 1/(1+x^2) €к границ≥ ≥нтегральних сум: %d\n', Ans1)

f1 = @(x1)1./(1+x1.^2);
Int1 = integral(f1, 0, 1);
printf('integral(1/(1+x^2)) = %d\n', Int1)

if abs(Ans1 - Int1) < eps
  printf('–езультати в≥др≥зн€ютьс€ несуттЇво\n\n')
else
  printf('–езультати в≥др≥зн€ютьс€ суттЇво\n\n')
endif


disp('Task 1.b)')
eps = 0.001;
sum = 0;
x1 = -1;
x2 = 1;
f = @(x) abs(x);
n = (x2-x1)/eps;
for i = 1:n;
  x1 += eps;
  sum += f(x1)*eps;
endfor          
Ans2 = sum;
printf('≤нтеграл abs(x) €к границ≥ ≥нтегральних сум: %d\n', Ans2) 

f2 = @(x2)abs(x2);
Int2 = integral(f2, -1, 1);
printf('integral(abs(x)) = %d\n', Int2)

if abs(Ans2 - Int2) < eps
  printf('–езультати в≥др≥зн€ютьс€ несуттЇво\n')
else
  printf('–езультати в≥др≥зн€ютьс€ суттЇво\n')
endif

