#Ram Pump, Fall 2018
####Alycia Storch, Matthew Snyder, Paul Joo
#### September 28, 2018

## Abstract
The goal of the Ram Pump is to provide the AguaClara plant with treated water without using electricity. Previous work on the Ram Pump was essential in creating a mathematical model for the velocity experienced in the Ram Pump. This model was then used to find the minimum k value for a spring needed. The main goals for this semester lie in increasing the efficiency of the pump. The team this semester will explore creating a model to find the ideal spring for a Ram Pump in any AguaClara plant, present or future, with the highest efficiency.

## Introduction
The ram pump is a gravity power pump that will provide a convenient automatic movement of water around AguaClara plants from low to high elevations in order to provide clean, treated water to the plumbing system of the plant which provides water for chemical dosage systems as well as sinks and toilets. This tool will alleviate the burden of manually having to carry water from the plant effluent up to other parts of the plant. The problem with the current prototype however is its inefficiency which can be attributed to a variety of factors ranging from head loss to an inefficient spring constant. Previously during Spring 2018, the AguaClara team focused on creating a mathematical model to find the optimal spring constant for the ram pump. During the Fall 2018 semester, the ram pump subteam will build on these previously proposed models so that a more accurate value for the spring constant can be found. This analysis will allow for an efficient way to finding the optimal springs in a variety of different cases.

## Literature Review and Previous Work
The team began the semester by reviewing the manuals, presentations, and other documentation from previous semesters. During the previous semester, Spring 2018, work on the Ram Pump was mainly centered around creating a mathematical model to find the ideal spring constant that will allow for the most efficient pump. The Spring 2018 team used python code to model the ideal velocity of the water in the drive pipe of the pump and used this model along with force balances to create a code that returns the minimum spring force and spring constant needed.

<img src="https://github.com/AguaClara/ram_pump/blob/master/Ideal%20Velocity%20graph.png?raw=true" size = 400px >

###### Figure 7: Graph produced by Python Code of ideal velocity cycle; before intersection is when the water is accelerating, after the intersection is deceleration
```python
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
```
For the Spring 2018 semester, the team calculated a minimum k constant of .38. The team also began testing many springs of different lengths and k values to find a range of springs that the ram pump functions with.

The team also used the ideal velocity to find the theoretical efficiency of the pump and compared this to the measured efficiency which was obtained through experimentation and data collection using ProCoda. By comparing theoretical efficiency to actual efficiency, the team was able to identify inefficiencies of the actual pump. The team found that the ram pump currently has an extremely small efficiency so one of the main goals this semester is to figure out how to increase the efficiency of the ram pump so that it can perform its intended function in an actual AguaClara plant.  

In the past, it has been determined that the main problem to be addressed is that the plate of the ram pump is not staying closed long enough. There are two potential causes for this: the spring force is too large and overcomes the force downward on the plate too quickly or the force on the plate from the water causes the plate to close quickly and just bounce back up. Both of these scenarios are strongly related to the spring used in the pump so this will be the teams main focus this semester. The team plans to use ProCoda to collect data on the pressure in the pump to be able to get an idea of what motion the plate is experiencing. The team hopes to find out the main contributor to the small closure time and move forward first with mathematical modeling and code and then with real-world implementation and experimentation to address said problem. The team hopes to obtain values for headlosses throughout the system to use in conjunction with the ideal models to be able to model the ram pump more accurately. One goal that the team has for the semester is to write a code whose inputs are the head parameters of a plant and outputs the specifications of the required spring.
