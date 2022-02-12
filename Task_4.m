disp('Task4')

A = [2 0 -1;
     -1 1 -1;
     1 1 4];

pkg load symbolic
A = sym(A);
[Va, Ja] = jordan(A);
printf('\nЖНФ матриці А:\n')
disp(Ja)
disp('Жордановий базис матриці А:')
disp(Va)
disp('Перевірка:')
disp(Va*Ja*Va^(-1))


B = [3 1 2;
     1 3 0;
     -1 -1 1];

B = sym(B);
[Vb, Jb] = jordan(B);
printf('\nЖНФ матриці B:\n')
disp(Jb)
disp('Жордановий базис матриці B:')
disp(Vb)
disp('Перевірка:')
disp(Vb*Jb*Vb^(-1))


C = [2 2 1;
     1 4 2;
     0 -2 1];

C = sym(C);
[Vc, Jc] = jordan(C);
printf('\nЖНФ матриці C:\n')
disp(Jc)
disp('Жордановий базис матриці C:')
disp(Vc)
disp('Перевірка:')
disp(Vc*Jc*Vc^(-1))

