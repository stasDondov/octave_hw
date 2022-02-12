disp('Task 4')

M = [0, 1, 2, 1, 2];
DX = gradient(M)

printf(" f'(1) = %d\n", DX(1))
printf(" f'(3) = %d\n", DX(3))

