% Define the symbolic variables
syms chi1 chi2 chi3 A B

% Define the mu values
mu11 = 278297.7336438724;
mu12 = 0.09999999324298087;
mu21 = 0.06078871143156872;
mu22 = 2.1673571434260136e6;
mu23 = 10.980172324408155;
mu32 = 23.34605808816895;
mu33 = 219.98223291208902;

% Define the system of equations symbolically
eq1 = A + B*chi1 + mu11*chi1^2 + chi1*mu12*chi2 + chi1*0*chi3;
eq2 = A + B*chi2 + chi2*mu21*chi1 + mu22*chi2^2 + chi2*mu23*chi3;
eq3 = A + B*chi3 + chi3*0*chi1 + chi3*mu32*chi2 + mu33*chi3^2;

% Solve the system of equations symbolically
fixed_points = solve([eq1, eq2, eq3], [chi1, chi2, chi3]);

disp(fixed_points)

% Access each element of the structure and display the symbolic expressions
for i = 1:numel(fixed_points.chi1)
    disp(['chi1_', num2str(i), ': ', char(fixed_points.chi1(i))]);
    disp(['chi2_', num2str(i), ': ', char(fixed_points.chi2(i))]);
    disp(['chi3_', num2str(i), ': ', char(fixed_points.chi3(i))]);
end

% Substitute numerical values for parameters
%fixed_points_chi1 = subs(fixed_points.chi1, {A, B}, {A_value, B_value});
%fixed_points_chi2 = subs(fixed_points.chi2, {A, B}, {A_value, B_value});
%fixed_points_chi3 = subs(fixed_points.chi3, {A, B}, {A_value, B_value});

% Display the resulting equations
%disp(fixed_points_chi1);
%disp(fixed_points_chi2);
%disp(fixed_points_chi3);
