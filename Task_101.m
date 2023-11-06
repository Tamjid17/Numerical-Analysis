a = input('Enter first matrix: ');
b = input('Enter second matrix: ');
r = rows(b);
c = columns(a);
d = max(a);
fprintf('Max value of A matrix: %d\n', d);
if r == c
  res = a*b;
  fprintf('Product of A and B: \n');
  disp(res);
else
  fprintf('Matrix multiplication is not possible');
end

