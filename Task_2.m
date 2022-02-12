disp('Task 2')

A = [1 -1 4;
     1 4 -2;
     1 4 2;
     1 -1 0];
[Q, R] = qr(A)

a = round(Q*Q')
b = round(Q'*Q)
c = eye(4);

[m, n] = size(a);

a == c
# Перевірка
if sum(sum(a == c)) == m*n && sum(sum(b == c)) == m*n
  disp('QR - розклад матриці:')
  Q
  R
end

