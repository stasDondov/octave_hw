disp('Task 5')

v = [4 -1 -3 4];
U = [1 1 1 1;
     1 2 2 -1;
     1 0 0 3];

[b, k] = rref(U);

disp('����� ���������� U:')
u1 = U(1, :)
u2 = U(2, :)

disp('����� �������������� ����������:')
w1 = [-b(1, 3), -b(2, 3), 1, 0]
w2 = [-b(1, 4), -b(2, 4), 0, 1]

S = [u1', u2', w1', w2', v'];
[uu1, uu2] = rref(S);
Ans = uu1(:, length(uu1(1, :)));

disp('������������ ��������:')
v_1 = Ans(1) * u1 + Ans(2) * u2;
printf("v' = \n")
disp(v_1)

disp('������������ ��������:')
v_2 = Ans(3) * w1 + Ans(4) * w2;
printf("v'' = \n")
disp(v_2)

disp('³������ �� ������� v �� �������� U:')
dist = sqrt(dot(v_2, v_2))

disp('��� �� �������� v �� ��������� U:')
angle = dot(v, v_1)/(sqrt(dot(v, v)) * sqrt(dot(v_1, v_1)))

