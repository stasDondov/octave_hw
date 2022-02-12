disp('Task 3')

A = [3 1 1;
     -1 3 1];
     
printf('SVD-розкад матриці:\n')
[U, S, V] = svd(A)
printf("Перевірка:\nU*S*V' =\n")
disp(U*S*V')

