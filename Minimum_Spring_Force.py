# This code can be used to determine the minimum spring force necessary
# Force must be greater than hydrostatic force in order to reopen


# h_drive = height of drive pipe
# A_drive = Area of drive pipe
# x_max = maximum spring compression distance
# h_eff = Necessary pumping height
h1=

# Minimum force balance
# k_min = minimum k value needed to open from closed position
k_min=rho*g*h_drive*A_drive/x_max

# Equation for k value
# k = EA/L
# L_opt = optimal spring length

# Spring force = rho*g*h*Adrive = E*Ax/L
