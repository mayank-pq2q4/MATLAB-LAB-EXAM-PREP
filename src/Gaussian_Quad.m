% Gaussian Quadrature

format long
% N=input('Enter a natural number: \n');
f=input('Enter the integrand function: \n');
a=input('Enter lower limit of integration: \n');
b=input('Enter upper limit of integration: \n');

% 2-point Gaussian Quadrature
w_2=[1., 1.]; % weights
x_2=[-1./sqrt(3), 1./sqrt(3)]; % Nodes
y_2=0.5*(b-a)*x_2 + 0.5*(a+b);
I_2G=0.5*(b-a)*w_2*f(y_2)';
disp(I_2G)

% 3-point Gaussian Quadrature
w_3=[5./9, 8./9, 5./9]; % weights
x_3=[-sqrt(3./5.), 0, sqrt(3./5.)]; % Nodes
y_3=0.5*(b-a)*x_3 + 0.5*(a+b);
I_3G=0.5*(b-a)*w_3*f(y_3)';
disp(I_3G)

I=integral(f,a,b);
disp(I)