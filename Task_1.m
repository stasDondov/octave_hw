disp('Task 1')

U = [1 -1 4;
     1 4 -2;
     1 4 2;
     1 -1 0];

function vect = proj(u, v)
  vect = dot(u, v) / dot(v, v) * v;
endfunction

V = zeros(4, 3);
V(:, 1) = U(:, 1);
V(:, 2) = U(:, 2) - proj(U(:, 2), V(:, 1));
V(:, 3) = U(:, 3) - proj(U(:, 3), V(:, 2)) - proj(U(:, 3), V(:, 1));

n1 = norm(V(:, 1));
n2 = norm(V(:, 2));
n3 = norm(V(:, 3));
if n1 != 1 || n2 != 1 || n3 != 1
  V(:, 1) = V(:, 1)./n1;
  V(:, 2) = V(:, 2)./n2;
  V(:, 3) = V(:, 3)./n3;
endif

ans1 = dot(V(:, 1), V(:, 2));
ans2 = dot(V(:, 2), V(:, 3));
ans3 = dot(V(:, 3), V(:, 1));

# ѕерев≥р€Їмо попарн≥ скал€рн≥ добутки
if ans1 == ans2 == ans3 == 0
  disp('Cистема вектор≥в ортогонал≥зована за методом √рама-Ўм≥дта:')
  disp(V)
endif

