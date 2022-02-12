disp('Task4')

A = [2 0 -1;
     -1 1 -1;
     1 1 4];

pkg load symbolic
A = sym(A);
[Va, Ja] = jordan(A);
printf('\n��� ������� �:\n')
disp(Ja)
disp('���������� ����� ������� �:')
disp(Va)
disp('��������:')
disp(Va*Ja*Va^(-1))


B = [3 1 2;
     1 3 0;
     -1 -1 1];

B = sym(B);
[Vb, Jb] = jordan(B);
printf('\n��� ������� B:\n')
disp(Jb)
disp('���������� ����� ������� B:')
disp(Vb)
disp('��������:')
disp(Vb*Jb*Vb^(-1))


C = [2 2 1;
     1 4 2;
     0 -2 1];

C = sym(C);
[Vc, Jc] = jordan(C);
printf('\n��� ������� C:\n')
disp(Jc)
disp('���������� ����� ������� C:')
disp(Vc)
disp('��������:')
disp(Vc*Jc*Vc^(-1))

