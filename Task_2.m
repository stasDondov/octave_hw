disp('Task 2')

A = [3 -5 2 7 -1;
     3 8 1 2 5;
     7 -8 4 2 6;
     2 19 0 9 3;
     -18 6 -9 6 -25];

function Ans = isNotZero(Matrix, n)
  for line = (1 : 5 - n)
    for stovp = (1 : 5 - n)
      Minor = Matrix(line:line+n, stovp:stovp+n);
      if round(det(Minor)) != 0
        Ans = round(det(Minor));
        return
      else
        Ans = 0;
      endif
    endfor
  endfor
endfunction

for j = (1:5)
  if isNotZero(A, j) == 0
    printf("\nМінорний ранг матриці А: %d\n", j)
    break
  endif
endfor
