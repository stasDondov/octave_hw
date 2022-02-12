disp('Task 3 1)')
pkg load symbolic
syms n
f = @(n)((-1).^(n+1))./(n.*n.^(1/3));
S1 = f(1);

ch1 = 0; # сходиться умовно
ch2 = 0; # сходиться абсолютно
ch3 = 0; # розходиться

m = 2;
Max_iter = 500;
while m < Max_iter
  S2 = S1;
  S1 = f(m);
  p1 = S1 / S2;
  p2 = abs(S1 / S2);
  if 0 <= p1 && p1 < 1
    ch1 = 1;
  endif
  if 0 <= p2 && p2 <1
    ch2 = 1;
  endif
  if isnan(p1)==1 || isinf(p1)==1
    ch3 = 1;
  endif
  m += 1;
endwhile


if S1 > 1
  disp('Ряд розходиться')
else
  if ch2
    disp('Ряд сходиться абсолютно')
  else
    disp('Ряд сходиться умовно')
  endif
endif


printf('\nTask 3 2)\n')
syms n
g = @(n)(3*n-2)./(2*n+5);
S1 = f(1);

ch1 = 0; # сходиться умовно
ch2 = 0; # сходиться абсолютно
ch3 = 0; # розходиться

m = 2;
Max_iter = 500;
while m < Max_iter
  S2 = S1;
  S1 *= g(m);
  
  p1 = S1 / S2;
  p2 = abs(S1 / S2);
  if 0 <= p1 && p1 < 1
    ch1 = 1;
  endif
  if 0 <= p2 && p2 <1
    ch2 = 1;
  endif
  if isnan(p1)==1 || isinf(p1)==1
    ch3 = 1;
  endif
  m += 1;
endwhile


if S1 > 1
  disp('Ряд розходиться')
else
  if ch2
    disp('Ряд сходиться абсолютно')
  else
    disp('Ряд сходиться умовно')
  endif
endif

