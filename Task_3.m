disp('Task 3')

pkg load symbolic
syms x n
f = ((factorial(n)^2)/(factorial(2*n))) * x^n;

pN = symprod(f, 1, n);
p = double(limit(pN, Inf));

if isinf(p)
  r = '0';
  i = 'x = 0';
  x1 = 0;
  x2 = 0;
elseif p == 0
  r = 'Inf';
  i = '��������� �� R'
  x1 = -Inf;
  x2 = +Inf;
else
  r = num2str(1/p);
  i = '��������� �� [-%s;%s]'.format(num2str(r), num2str(r));
  x1 = -1/p;
  x2 = 1/p;
end
printf('����� ������� ����������� ����: %s\n', r)
printf('�������� ������� ����������� ����: %s\n', i)

#�������� ������� � ������� ������ ���������
l1 = double(limit(((factorial(n)^2)/(factorial(2*n))) * x^n, n, x1));
l2 = double(limit(((factorial(n)^2)/(factorial(2*n))) * x^n, n, x2));

if l1 != 0
  disp('��� � ������ ��� ����� ������')
else
  disp('��� � ������ ��� ����� ��������')
end

if l2 != 0
  disp('��� � ������ ����� ����� ������')
else
  disp('��� � ������ ����� ����� ��������')
end

