clear all;
clc
A = [6,-2,2,4 ; 12,-8,6,10 ; 3,-13,9,3 ; -6,4,1,-18];        
[rows, cols] = size(A);
for r = 1:rows
    L(r, 1) = A(r, 1);
    U(r, r) = 1;
end
disp(rows);
disp(cols);
for j = 2:rows
    U(1, j) = A(1, j) / L(1, 1);
end

%for c = 2:rows
for r = 2:rows
    for j = 2:r
            L(r, j) = A(r, j) - L(r, 1:j - 1) * U(1:j-1, j);
    end
            
    for j = r + 1:rows
            U(r, j) = (A(r, j) - L(r, 1:r - 1) * U(1:r-1, j)) / L(r, r);
    end
end
disp(L*U); %will most probably display A.


