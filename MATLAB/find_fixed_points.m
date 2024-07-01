function fixed_points = find_fixed_points(A, B, mu_values, initial_guess)
    % Define the function representing the system of equations
    fixed_point_equations = @(chi) [A + B*chi(1) + mu_values(1)*chi(1)^2 + chi(1)*mu_values(2)*chi(2) + chi(1)*mu_values(3)*chi(3);
                                    A + B*chi(2) + chi(2)*mu_values(4)*chi(1) + mu_values(5)*chi(2)^2 + chi(2)*mu_values(6)*chi(3);
                                    A + B*chi(3) + chi(3)*mu_values(7)*chi(1) + chi(3)*mu_values(8)*chi(2) + mu_values(9)*chi(3)^2];

    options = optimoptions('fsolve', 'Algorithm', 'trust-region-dogleg', 'Display', 'off');

    % Use fsolve to find the roots (fixed points) of the system
    fixed_points = fsolve(fixed_point_equations, initial_guess, options);

    % Filter out positive fixed points
    fixed_points = fixed_points(fixed_points > 0);
end