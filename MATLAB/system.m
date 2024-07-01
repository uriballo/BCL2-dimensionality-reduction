function dydt = system(t, y)
    % Define the constants
    mu11 = 16273.465487425427;
    mu22 = 7800.653148254713;
    mu33 = 140.00867213154856;
    mu12 = 8.841868906761077e-7;
    mu13 = 0.0;
    mu23 = 11.674613405026601;
    mu21 = 0.0583254283653529;
    mu31 = 0.0;
    mu32 = 23.34605808990502;
    
    % Parameters
    A = 1201.64059;
    B = 0.255;
    chi1 = y(1);
    chi2 = y(2);
    chi3 = y(3);
    
    dchi1_dt = A - B*chi1 + mu11*chi1^2 + chi1*mu12*chi2 + chi1*mu13*chi3;
    dchi2_dt = A - B*chi2 + chi2*mu21*chi1 + mu22*chi2^2 + chi2*mu23*chi3;
    dchi3_dt = -B*chi3 + chi3*mu31*chi1 + chi3*mu32*chi2 + mu33*chi3^2;
    
    dydt = [dchi1_dt; dchi2_dt; dchi3_dt];
end