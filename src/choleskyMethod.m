M = [0.9 0.06 -0.39 -0.24; 0.06 1.604 0.134 0.464; -0.39 0.134 2.685 0.802; -0.24 0.464 0.802 1.977]
n = length( M );
L = zeros( n, n );
for i=1:n
   L(i, i) = sqrt(M(i, i) - L(i, :)*L(i, :)')
   for j=(i + 1):n
      L(j, i) = (M(j, i) - L(i,:)*L(j ,:)')/L(i, i)
   end
end
disp(L)
