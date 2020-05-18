%% Gauss-Seidel method
% example: [A|b]=[5 -1 0 4;-1 5 -1 3;0 -1 5 4]
% Manoj K. Yadav
%%
a=input('Enter augmented matrix [A b]\n');
x0=input('Enter initial guess\n');
[m,n]=size(a);
A=a(:,1:m); b=a(:,n);
if norm(tril(A)\(-triu(A,1)))>=1   % inv(tril(A))*triu(A,1)
   disp('Gauss-Seidel method does not converge')
   return
end
tol=10^(-5);
iter=0;
r0=A*x0-b;
while norm(r0,inf)>=tol
    for i=1:m
        x0(i)=(a(i,n)-a(i,1:i-1)*x0(1:i-1)-a(i,i+1:m)*x0(i+1:m))/a(i,i);
    end
    r0=A*x0-b;
    iter=iter+1;
end

disp('No. of iterations')
disp(iter)
disp('Gauss-Seidel Solution')
disp(x0)
