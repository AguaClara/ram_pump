```python
#### Calculating MAJOR HEADLOSS along DRIVE PIPE
# (Major headloss is the same for both the new and old pump design)
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from numpy import pi
from aide_design import physchem as pc
from aide_design.units import unit_registry as u
from aide_design import utility as ut

#Parameters and Constants for headloss calculation
v_f = 2.3*u.m/u.s #terminal velocity
d = (1*u.inch).to(u.m) #diameter of drive pipe
L = 1.74*u.m #length of drive pipe
Q = (1*u.liter/u.s).to(u.m**3/u.s) #steady state flow rate in drive pipe assumed to be 1.0 L/s
nu = pc.viscosity_kinematic(20*u.degC)

h_f = pc.headloss_fric(Q, d, L, nu, 0)
#INPUT DETAILS: pc.headloss_fric(flow rate, diameter of pipe, length of pipe, nu, PipeRough)
#PipeRough assumed to be 0 because PVC is relatively smooth

####################################################################
#### Calculating MINOR HEADLOSS

## OLD DESIGN (0.25in diam. effluent)_______________________________

# Minor Headloss at Effluent Valve
v_f = 2.3*u.m/u.s #terminal velocity
d = (0.25*u.inch).to(u.m) #diameter of drive pipe
L = 1.74*u.m #length of drive pipe

A_out = np.pi*(d/2)**2 #cross-sectional area of effluent valve
A_in = np.pi*((0.5*u.inch).to(u.m))**2 #cross-sectional area of drive pipe
Q = A_in*v_f #flow rate in (steady state flow rate in drive pipe assumed to be 1.0 L/s)
k_minor = (A_out/A_in-1)**2

h_eff = pc.headloss_exp(Q, d, k_minor)

# Minor Headloss at Elbow Joint
k_elbow = 0.9
h_elbow = pc.headloss_exp(Q, d, k_elbow)

# Minor Headloss at Entrance of Air Chamber
d = (1*u.inch).to(u.m)
A_out = np.pi*(d/2)**2 #cross-sectional area of effluent valve
A_in = np.pi*((0.25/2*u.inch).to(u.m))**2 #cross-sectional area of drive pipe
Q = A_in*v_f #flow rate in (steady state flow rate in drive pipe assumed to be 1.0 L/s)
k_minor = (A_out/A_in-1)**2

h_air = pc.headloss_exp(Q, d, k_minor)

# Total Minor Headloss
h_eold = h_eff + h_air + h_elbow

## NEW DESIGN (1.00in diam. effluent)_______________________________

# Elbow bend headloss (count twice: at effluent valve and at entrance of air chamber)
v_f = 2.3*u.m/u.s #terminal velocity
d = (1*u.inch).to(u.m) #diameter of elbow joint
A = np.pi*(d/2)**2 #cross-sectional area of elbow joint
Q = A*v_f

h_enew = pc.headloss_exp(Q, d, k_elbow) * 2 # doubled headloss because headloss due to 90 deg bends occur twice

####################################################################
#### Comparing Total Headloss

## Old Model (summing major and minor headloss calculated above)
h_Lold = h_f + h_eold
h_Lnew = h_f + h_enew

print(h_Lold, h_Lnew)
'''
