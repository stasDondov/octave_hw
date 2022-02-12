disp('Task 1')

A = [3 -5 2 7 -1;
     3 8 1 2 5;
     7 -8 4 2 6;
     2 19 0 9 3;
     -18 6 -9 6 -25];

[R, K] = rref(A);
rang = length(K);
basis = A(:, K);

printf("\nРанг матриці А: %d", rang);
disp("\nМЛНЗ підсистема:");
disp(basis);
