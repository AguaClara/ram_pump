#Ram Pump, Fall 2018
####Alycia Storch, Matthew Snyder, Paul Joo
#### September 28, 2018

## Abstract
The goal of the Ram Pump is to provide the AguaClara plant with treated water without using electricity. Previous work on the Ram Pump was essential in creating a mathematical model for the velocity experienced in the Ram Pump. This model was then used to find the minimum k value for a spring needed. The main goals for this semester lie in increasing the efficiency of the pump. The team this semester will explore creating a model to find the ideal spring for a Ram Pump in any AguaClara plant, present or future, with the highest efficiency.

## Introduction
The ram pump is a gravity power pump that will provide a convenient automatic movement of water around AguaClara plants from low to high elevations in order to provide clean, treated water to the plumbing system of the plant which provides water for chemical dosage systems as well as sinks and toilets. This tool will alleviate the burden of manually having to carry water from the plant effluent up to other parts of the plant. The problem with the current prototype however is its inefficiency which can be attributed to a variety of factors ranging from head loss to an inefficient spring constant. Previously during Spring 2018, the AguaClara team focused on creating a mathematical model to find the optimal spring constant for the ram pump. During the Fall 2018 semester, the ram pump subteam will build on these previously proposed models so that a more accurate value for the spring constant can be found. This analysis will allow for an efficient way to finding the optimal springs in a variety of different cases.

## Literature Review and Previous Work
The team began the semester by reviewing the manuals, presentations, and other documentation from previous semesters. During the previous semester, Spring 2018, work on the Ram Pump was mainly centered around creating a mathematical model to find the ideal spring constant that will allow for the most efficient pump. The Spring 2018 team used python code to model the ideal velocity of the water in the drive pipe of the pump and used this model along with force balances to create a code that returns the minimum spring force and spring constant needed.

<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ideal%20Velocity%20graph.png" size = 400px >

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
# x_max = maximum spring compression distance, equal to plate amplitude
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

##Background and Fabrication Details


##Special Components

##Force Balance Calculations

####Finding Initial Compression of Spring
The magnitude of the force exerted by the spring is equal to the spring constant times the total compression (or elongation) of the spring.
$$F_{spring}= -kx $$
In order to find the compression of the spring, the team measured the original length of the spring, and used dimensions of the check valve, rod, and plate to find the original compression of the spring when the plate is open and the additional compression it experiences when the plate is closed. In order to find the original compression, the team had to find the distance between the bottom of the threads on the rod (which is what constrains the spring on the top end) and the plate stopper in the bottom check valve (which is what constrains the spring on the bottom end). To find this distance, the team measured the thickness of the plate stopper, the length of the bottom of the rod below the plate stopper, and the total distance of the rod below the threads. The measured values are shown below.
<center><img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/spring%20compression.png"></center>
Using these measurements the team found that the distance the spring had when the plate was open, labeled original compressed length above, was
10 cm - 1 cm - 1.5 cm = 7.5 cm. The original, free length of the spring we were using is 10.16 cm so the original compression of the spring when the plate is open is is the free length minus the compressed length which is 2.66 cm. To find the total compression, the team added the distance the plate moves to this value. The distance the plate moves was found by measuring from the bottom of the plate (top of the rod it is attached to) to the top of the threads on the rod that is attached to the plate. This value was 1.3 cm making the total compression of the spring 3.96 cm.
<center><img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/plate%20diagram.png"></center>

####Minimum K Value
The minimum K value needed for the spring in any Ram Pump system is related to the weight of the water in the water column when the water is completely stopped. The team found this by taking the measurements of the water column on the Ram Pump in the lab. We found that the height of the water column was approximately 2 meters. Additionally, the inner radius of the pipe is .0127 m. The team determined that when the water is not moving and the plate is completely closed, the force on the plate is the weight of the water column (W_{wc}). This can be found by using
$$W_{wc}=\rho_{water}gV $$
$$\text{where } \rho_{water} \text{ is the density of water in } kg/m^{3}$$ $$\text{g is gravity}$$ $$\text{and V is the volume of the water column in }m^{3}$$
$$W_{wc}= \rho_{water}g\pi*r^{2}h $$
$$W_{wc}= 1000kg/m^{3}9.81m/s^{2}\pi*.0127^{2}2m^{3} $$
$$W_{wc}= 9.9416N $$
The spring force must be at least this value or else it will never be able to open the plate when the water column is full. Since the force of the spring is related to its compression and K value, the team used the total compression of the spring to find the K value associated with this minimum force required. The team measured the total compression of the spring to be 3.96cm or .0396m. The team then plugged in the values for the minimum force needed and compression of the spring into
$$F_{spring}= -kx $$
giving us the equation
$$9.9416N= -k.0396m $$
$$k= 251N/m $$
The team found the minimum spring constant (k) to be 251 N/m.

####Maximum K Value
The team determined that the spring cannot be stronger than the force of the water in the water column moving at its final velocity. The team then used this force to find the maximum K value a spring can have. The team determined the force of the water in the water column moving at its final velocity can be found by finding the weight of the water and adding the force associated to the velocity of the water. The weight of the moving water is the same as the weight of the stopped water in the water column so the team used the value of 9.9416 N we found when determining the minimum spring constant. The team used the equation
$$F_{w}= \frac{1}{2}\rho_{water}v^{2}A $$
where $$v^2\text{ is the velocity of the water }$$
and $$\text{A is the area of the plate}$$
The team used the final velocity found by the previous Ram Pump team of .349m/s and measured the radius of the plate to be 1.4cm or .014m. The team plugged those values in to determine the force from the moving water
$$F_{w}= \frac{1}{2}1000kg/m^{3}.349^{2}\pi*.014^2 $$
$$F_{w}= .0375N$$
The team found that the force to be .0357N. The team added this force to the weight of the water to determine the greatest the force from the spring could be is 9.9719N. Using the same amount of compression and the same equation for force of the spring the team determined the maximum k value
$$F_{spring}= -kx $$
$$9.9791N= -k.0396m $$
$$k= 252N/m $$
The team found the maximum spring constant (k) to be 252 N/m.

####Running the Pump
When running the pump with a spring that has a k value within the calculated range, the team found that it needed enough water for full flow in the pipe to work. This makes sense because the calculations were done assuming full flow but this is something to be aware of and make sure of when running the pump. Once there was full flow, it would take a few seconds for the plate to close and start pumping. It would pump for a few cycles and then stop. A few seconds later it would do this again. The team observed that right before the ram pump would start pumping, there was a gurgling sound coming from the bucket on top of the drive pipe and that the water that exited the pipe after the first cycle seemed to have a higher flowrate than the water exiting when it wasn't pumping. This led the team to the theory that as the pump is running, it is pumping air bubbles into the drive pipe, decreasing the amount of water. Eventually, the amount of water is decreased to the point of not having enough to force the plate back down, which is why it stops pumping. Then, as the water is flowing but the pump is not moving, the air gets forced out by incoming water and the force from the water becomes strong enough to push down the plate again and start the pump. However, after further observation the team learned that what was actually happening was that the sump pump that pumps water up to the overhead bucket was pumping in bursts instead of continuously. This was causing there to be a rush of water when these bursts would occur and much less flow at all other times. These bursts were what was initiating the ram pump to start pumping. This was fixed by adding more water to the system so that the sump pump was never running dry and would be continuously pumping water up to the over head bucket. **This is extremely important. There should always be enough water for the sump pump to pump water continuously. If there isn't, there will be bursts of water and at all other times there will not be full flow in the drive pipe.**

The team also found that sometimes the plate would be stuck in the closed position and wiggling the bottom of the rod a little would loosen it up and allow it to run. This is an issue to look into because in a plant there won't be access to the rod nor will there be someone to wiggle it every time it gets stuck. Additionally, any particles in the water could lead to the rod getting stuck so a method of cleaning these particles out of the ram pump would be necessary.
