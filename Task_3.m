disp('Task 3')

A = [3 1 1;
     -1 3 1];
     
printf('SVD-������ �������:\n')
[U, S, V] = svd(A)
printf("��������:\nU*S*V' =\n")
disp(U*S*V')

