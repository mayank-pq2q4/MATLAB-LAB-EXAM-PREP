%% Gauss-Jacobi method
% Manoj K. Yadav
%%
a=input('Enter augmented matrix [A b]\n');
x0=input('Enter initial guess\n');
x1=x0;
[m,n]=size(a);
A=a(:,1:m); b=a(:,n);
tol=10^(-5);
iter=0;
r0=A*x0-b;
while norm(r0,inf)>=tol
    for i=1:m
        x1(i)=(a(i,n)-a(i,1:i-1)*x0(1:i-1)-a(i,i+1:m)*x0(i+1:m))/a(i,i);
    end
    x0=x1;
    r0=A*x0-b;
    iter=iter+1;
end

disp('No. of iterations')
disp(iter)
disp('Gauss-Jacobi Solution')
disp(x0)