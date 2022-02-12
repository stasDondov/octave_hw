disp('Task 2')

A = rot90(eye(4));
d = eig(A);
lambda1 = d(1);
E_lambda1 = null(A - lambda1*eye(4));
r1 = rank(E_lambda1);

lambda2 = d(3);
E_lambda2 = null(A - lambda2*eye(4));
r2 = rank(E_lambda2);

if r1+r2 == length(A)
  [V, D] = eig(A);
  disp('Матриця А є діагоналізовною')
  disp('Відповідний діагональний вигляд:')
  disp(D)
endif

