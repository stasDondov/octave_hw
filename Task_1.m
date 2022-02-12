disp('Task 1.a)')

function Ans = Matr(A)
  n = length(A);
  for i = (1:n)
    E = eye(n);
    E(i, i) = 1 / A(i, i);
    disp(E^(-1));
    printf('\n         *\n')
    A(i, 1:n) = A(i, 1:n) / A(i, i);
    for j = (1:n)
      if  i != j
        E = eye(n);
        E(j, i) = E(j, i) - A(j, i);
        disp(E^(-1));
        printf('         *\n')
        A(j, 1:n) = A(j, 1:n) - A(i, 1:n)*A(j, i);
      end
    end
  end
  Ans = A;
end

A = [3 1 -2;
     2 1 0;
     2 3 3]
printf('      =\n')
Q = Matr(A);
disp(Q)


printf('\n\nTask 1.b)\n')

B = [-2 -3 5 3;
     1 2 -1 -1;
     -8 -13 18 9;
     13 21 -30 -13]

printf('      =\n')
Q = Matr(B);
disp(Q)

