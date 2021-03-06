function motor = design_motor(x)

    motorData = csvread('motortable.csv', 1, 2, [1, 2, 24, 9]); %load starting from 2nd row, 2nd col
    
    % temp is our motor choice
    temp =  motorData(x(4), :);
    % For R0, convert to Ohms
    motor.kv = temp(1); 
    motor.R0 = temp(2)/1000; 
    motor.I0 = temp(3);
    motor.Imax = temp(4); 
    motor.Pmax = temp(5); 
    motor.Mass = temp(6) / 1000; 
    motor.Cost = temp(7); 
    motor.Diam = temp(8) / 1000;
    motor.planArea=(pi/4) * motor.Diam^2;
    motor.Num=double(x(4));
end