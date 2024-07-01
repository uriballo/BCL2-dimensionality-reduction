% Define the symbolic variables and constants
syms x1 x2 x3 A1 A2 A3 B

mu11 = 16273.465487425427;
mu22 = 7800.653148254713;
mu33 = 140.00867213154856;

mu12 = 8.841868906761077e-7;
mu13 = 0.0;
mu23 = 11.674613405026601;

mu21 = 0.0583254283653529;
mu31 = 0.0;
mu32 = 23.34605808990502;

% Define the system of equations
eq1 = A1 - B*x1 - mu11*x1^2 - x1*mu12*x2 == 0;
eq2 = A2 - B*x2 - x2*mu21*x1 - mu22*x2^2 - x2*mu23*x3 == 0;
eq3 = A3 - B*x3 - x3*mu32*x2 - mu33*x3^2 == 0;

% Solve the system of equations
solution = solve([eq1, eq2, eq3], [x1, x2, x3]);

% Display the symbolic solutions
disp('Symbolic solution for x1:');
disp(solution.x1);
disp('Symbolic solution for x2:');
disp(solution.x2);
disp('Symbolic solution for x3:');
disp(solution.x3);

% Convert the solutions to numerical values
x1_numeric = double(solution.x1);
x2_numeric = double(solution.x2);
x3_numeric = double(solution.x3);

% Display the numerical solutions
disp('Numerical solution for x1:');
disp(x1_numeric);
disp('Numerical solution for x2:');
disp(x2_numeric);
disp('Numerical solution for x3:');
disp(x3_numeric);
