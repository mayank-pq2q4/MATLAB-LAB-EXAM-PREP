format long

A0 = [-1,1,0,-3 ; 1,0,3,1 ; 0,1,-1,-1 ; 3,0,1,2];
L = eye(4)
X = [0;0;0;0];
A = A0;

disp("nw L");
disp(L);
fprintf('[A|L]:\n');
disp(A);

n = 4;

%Conversion into Echlon form:
for i = 1:n-1
    for j = i+1:n
        L(j, i) = A(j,i) / A(i,i);
        A(j, :) = A(j, :) - ( A(i,:)* A(j,i) / A(i,i) );
    end
    fprintf('Step %d: [A|L]:\n', i);
    disp("A");
    disp(A);
    disp("L");
    disp(L);
end
R = A
disp("L*R");
disp(L*R);
disp("A");
disp(A0);
