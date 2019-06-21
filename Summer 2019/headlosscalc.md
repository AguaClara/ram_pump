```python

## Major Head Loss Calculations
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from aide_design import physchem as pc
from aide_design.units import unit_registry as u
from aide_design import utility as ut

v_f = 2.3*u.m/u.s #terminal velocity
d = (1*u.inch).to(u.m) #diameter of drive pipe
L = 1.74*u.m #length of drive pipe

Q = v_f * np.pi * (d/2)**2 #flow rate in drive pipe (Q = terminal velocity * cross-sectional area of drive pipe)

nu = pc.viscosity_kinematic(20*u.degC)

h_L = pc.headloss_fric(Q, d, L, nu, 0)
#pc.headloss_fric(flow rate, diameter of pipe, length of pipe, nu, PipeRough)
#PipeRough assumed to be 0 because PVC is relatively smooth

print(h_L)
'''
