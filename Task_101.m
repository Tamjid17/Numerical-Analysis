a = input('Enter first matrix: ');
b = input('Enter second matrix: ');
r = rows(b);
c = columns(a);

%Max value of first matrix
d = max(a(:));
fprintf('Max value of A matrix: %d\n', d);

%Matrix Multiplication
if r == c
  res = a*b;
  fprintf('Product of A and B: \n');
  disp(res);
else
  fprintf('Matrix multiplication is not possible');
end

