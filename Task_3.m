disp('Task 3')

U = [2 6 2 0 -6;
     4 3 3 8 5;
     -7 -4 -4 -14 -10;
     3 7 5 4 -3;
     1 2 7 7 5];
%----------------------------------------------------
V = [8 -4 28 16 0;
     -2 -2 -4 -1 6;
     6 6 12 3 -8;
     8 2 22 10 8;
     2 17 -11 -14 19];
%------------------------------------------------
[rU, kU] = rref(U);
dim_U = length(kU);
basis_U = U(:, kU);

disp("\n Базис U:")
disp(basis_U)
printf(" dim(U) = %d\n", dim_U)
%------------------------------------------------
[rV, kV] = rref(V);
dim_V = length(kV);
basis_V = V(:, kV);

disp("\n Базис V:")
disp(basis_V)
printf(" dim(V) = %d\n", dim_V)
%------------------------------------------------
INT = [U, -V];
[rINT, kINT] = rref(INT);
dim_INT = length(kINT);
basis_INT = INT(:, kINT);

disp("\nБазис intersection(U, V):")
disp(basis_INT)
printf(" dim(intersection(U, V)) = %d\n", dim_INT)
%------------------------------------------------
SUM = [U, V];
[rSUM, kSUM] = rref(SUM);
#dim_SUM = dim_V + dim_U - dim_INT;
dim_SUM = length(kSUM);
basis_SUM = [];
for i = kSUM
  basis_SUM = [basis_SUM, SUM(:, i)];
endfor

disp("\n Базис U+V:")
disp(basis_SUM);
printf(" dim(U+V) = %d\n", dim_SUM)
