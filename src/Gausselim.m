%Gaussian Elimination Method:
format long

A = [-1,1,0,-3 ; 1,0,3,1 ; 0,1,-1,-1 ; 3,0,1,2];
b = [4 ; 0 ; 3 ; 1];
X = [0;0;0;0];


A = [A,b]; %A|b
fprintf('[A|b]:\n');
disp(A);

n = 4;

%Conversion into Echlon form:
for i = 1:n-1
    for j = i+1:n
        A(j, :) = A(j, :) - ( A(i,:)* A(j,i) / A(i,i) );
    end
    fprintf('Step %d: [A|b]:\n', i);
    disp(A);
end

%Separating [A] and [b] from [A|b]: 
b = A( : ,n+1);
fprintf('New [b]:\n');
disp(b);

A = A( : ,1:n);
fprintf('New [A]:\n');
disp(A);

fprintf('Values of each x:\n');
%To find the X vector:
%{
for i = n:-1:1
    sum = 0;
    for j = (i+1):n
        sum = sum + A(i,j)*X(j);
        fprintf('   %d   ', j);
    end
    X(i) = (1/A(i,i))*(b(i)-sum);
    fprintf('x_%d = %d\n', i, X(i));
end
%}
Xt = X.';
At = A.';
for i = n:-1:1
    X(i) = [b(i) - At(i, i+1:n)*X(i+1:n)]/At(i,i);
end
fprintf('\n[X]:\n');
disp (X);