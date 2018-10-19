# This code can be used to determine the minimum spring force necessary
# Force must be greater than hydrostatic force in order to reopen

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from aide_design import physchem as pc
from aide_design.units import unit_registry as u
from aide_design import utility as ut

# h_drive = height of drive pipe
# A_drive = Area of drive pipe
# x_max = maximum spring compression distance, equal to plate ampltitude
# h_eff = Necessary pumping height
# A_eff = Area of effluent flow

# Minimum force balance
# k_min = minimum k value needed to open from closed position
temp = u.Quantity(22, u.degC)
# Assume room temperature.
rho = pc.density_water(temp)
g = pc.gravity
x_max = .045*u.m
h_drive = .51*u.m
d_drive = 0.025273*u.m
A_drive = pc.area_circle(d_drive)
P_hydrostatic = rho*g*h_drive
k_min = P_hydrostatic*A_drive/x_max

# Equation for k value
# k = EA/L
# L_opt = optimal spring length
# A_spring = Area of spring

# Spring force = rho*g*h_drive*A_drive = E*A_spring*x/L
# L_opt = E*A_spring*x/(rho*g*h_drive*A_drive)
