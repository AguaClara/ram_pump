# This code can be used to determine the minimum spring force necessary
# Force must be greater than hydrostatic force in order to reopen


# h_drive = height of drive pipe
# A_drive = Area of drive pipe
# x_max = maximum spring compression distance, equal to plate ampltitude
# h_eff = Necessary pumping height
# A_eff = Area of effluent flow

# Minimum force balance
# k_min = minimum k value needed to open from closed position
h_drive = .51 m
A_drive = (pi*(.995/2)^2)*.0254
k_min = rho*g*h_drive*A_drive/x_max

# Equation for k value
# k = EA/L
# L_opt = optimal spring length
# A_spring = Area of spring

# Spring force = rho*g*h_drive*A_drive = E*A_spring*x/L
L_opt = E*A_spring*x/(rho*g*h_drive*A_drive)
