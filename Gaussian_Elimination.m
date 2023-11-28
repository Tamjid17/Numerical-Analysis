clc;
t1 = input('Enter time of first moment: ');
v1 = input('Enter velocity of first moment: ');
t2 = input('Enter time of second moment: ');
v2 = input('Enter velocity of second moment: ');
t3 = input('Enter time of third moment: ');
v3 = input('Enter velocity of third moment: ');
t12 = t1*t1;
t22 = t2*t2;
t32 = t3*t3;
A = [t12 t1 1 v1; t22 t2 1 v2; t32 t3 1 v3];

%Row reduction
for i=1:2
  for j=i+1:3
   key = A(j,i)./A(i,i);
   A(j,:) = A(j,:) - key.*A(i,:);
  endfor
end
disp('Upper Traingular Matrix');
disp(A);

%Backward substitution
a3 = A(3,4)./A(3,3);
a2 = (A(2,4) - A(2,3).*a3)./A(2,2);
a1 = (A(1,4) - A(1,2).*a2 - A(1,3).*a3)/A(1,1);

%Printing results
fprintf('a1 = %0.3f\na2 = %0.3f\na3 = %0.3f\n', a1, a2, a3);
t = input('Enter time to print velocity: ');
v = (t*t)*a1 + t*a2 + a3;
fprintf('The velocity for %d seconds is %0.3f\n', t, v);
