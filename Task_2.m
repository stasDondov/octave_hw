disp('Task 2')

disp('�������� ����������� ������� �� �������')
pkg load symbolic
syms n
pN = symprod((((n+1)^2)/(n*(n+2))), 1, n);
p = double(limit(pN, Inf));
if p != 0
  disp('����������� ������� ������')
else
  disp('����������� ������� ��������')
end

