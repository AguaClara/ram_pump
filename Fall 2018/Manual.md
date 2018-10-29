# Ram Pump, Fall 2018
#### Alycia Storch, Matthew Snyder [Fix these formats.]
#### September 28, 2018
[Shuo: Hello Ram Pump! I'll write comments in the square brackets like this. Please feel free to delete these after revising or updating your report. Basically, good job on your first manual draft. Fix some format problems and make your statements more persuasive by putting some accurate numbers. You guys don't need to worry much about the grade of the first manual draft.  Focus on where you guys can improve. Looking forward to your second manual draft!]
## Abstract
The goal of the Ram Pump is to provide the AguaClara plant with treated water without using electricity. Previous work on the Ram Pump was essential in creating a mathematical model for the velocity experienced in the Ram Pump. This model was then used to find the minimum spring constant, also known as the k value, for a spring needed. The main goals for this semester lie in increasing the efficiency of the pump. The team this semester will explore creating a model to find the ideal spring for a Ram Pump in any AguaClara plant, present or future, with the highest efficiency.

## Introduction
The ram pump is a gravity power pump that will provide a convenient automatic movement of water around AguaClara plants from low to high elevations in order to provide clean, treated water to the plumbing system of the plant which provides water for chemical dosage systems as well as sinks and toilets. This tool will alleviate the burden of manually having to carry water from the plant effluent up to other parts of the plant. The problem with the current prototype however is its inefficiency which can be attributed to a variety of factors ranging from head loss to an inefficient spring constant. Previously during Spring 2018, the AguaClara team focused on creating a mathematical model to find the optimal spring constant for the ram pump. During the Fall 2018 semester, the ram pump subteam will build on these previously proposed models so that a more accurate value for the spring constant can be found. This analysis will allow for an efficient way to finding the optimal springs in a variety of different cases.

## Previous Work
The team began the semester by reviewing the manuals, presentations, and other documentation from previous semesters. During the previous semester, Spring 2018, work on the Ram Pump was mainly centered around creating a mathematical model to find the ideal spring constant that will allow for the most efficient pump. The Spring 2018 team used python code to model the ideal velocity of the water in the drive pipe of the pump and used this model along with force balances to create a code that returns the minimum spring force and spring constant needed. The graph below was created by the team last semester. The red line represents the equation for the velocity of water in the drive pipe when the plate is open and the blue line is the velocity of the water when the plate is closed. The intersection is where the plate closes. The area under the blue line when the plate is closed is the amount of water pumped.

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

The team also tried to use the ideal velocity to find the theoretical efficiency of the pump and compared this to the measured efficiency which was obtained through experimentation and data collection using ProCoda. However they were unable to obtain accurate data from ProCoda and could not calculate an even feasible efficiency so one of the main goals this semester is to figure out how to calculate the efficiency of the ram pump and increase it so that it can perform its intended function in an actual AguaClara plant. The team's code for calculating the efficiency can be found here: https://github.com/AguaClara/ram_pump/blob/master/Spring%202018/IdealEfficiency.py


In the past, it has been determined that the main problem to be addressed is that the plate of the ram pump is not staying closed long enough. This can be seen in the above graph of ideal velocity; if the blue line (water decelerating) had a less steep slope and extended for a longer time, the area under that line, which corresponds to the amount of water pumped, would be greater. There are three potential causes for this: the spring force is too large and overcomes the force downward on the plate too quickly, the spring force is too weak and the water reaches a small fraction of its maximum possible value and decelerates quickly, or the force on the plate from the water causes the plate to close quickly and just bounce back up. All of these scenarios are strongly related to the spring used in the pump so this will be the teams main focus this semester. The team plans to use ProCoda to collect data on the pressure in the pump to be able to get an idea of what motion the plate is experiencing. The team hopes to find out the main contributor to the small closure time and move forward first with mathematical modeling and code and then with real-world implementation and experimentation to address said problem. The team hopes to obtain values for headlosses throughout the system to use in conjunction with the ideal models to be able to model the ram pump more accurately. One goal that the team has for the semester is to write a code whose inputs are the head parameters of a plant and outputs the specifications of the required spring.

##Background and Fabrication Details
The ram pump itself is composed of two 1,5" metal check valves connected by a 4" female-female metal fitting. The upper check valve houses the functional interior components of the ram pump. The interior components of the ram pump are composed of a threaded metal rod with two metal standoffs screwed on. Additionally, one end of the rod has been tapped to encase the the threaded metal plate. The spring fits into the interior of the pump by fitting over the end of the metal rod below the bottom standoff. The standoffs are there to change the length of the oscillations for the pump. 

The metal plate is able to screw into the top of the metal rod. The rod drives the oscillation of the metal plate through the top check valve under the power of the spring force. The metal rod is able to slide freely into the bottom check valve, which holds the spring in place while not hindering the vertical oscillation. The spring is unable to fit through the bottom check valve because the check valve is fit precisely for the rod's diameter. When the spring compresses, this causes the force from the spring to increased which gives the oscillations.

The main force component of the ram pump is not the force over the plate, but the pressure differential created by the movement of the upper check valve. When the plate is shut, the pressure above the check valve increases. This increase eventually exceeds the pressure in the effluent tube, thus forcing the water into the effluent. Once this occurs, the pressure above the plate is relived and thus allows the spring to force open the plate. Then once the hydrodynamic force hits a maximum, the increased velocity around the pump creates a "suction force," which reinitiates the pressure differential.

The upper check valve connects to the drive pipe carrying the treated water from the AguaClara plant. This connection is produces by a male-to-male connector made of PVC and screwed into a nipple then into the top check valve. For lab testing purposes, previous Ram Pump subteams have established a system to simulate flow from a plant. A sump pump pushes water into a raised head tank. This created head flows into the drive pipe, this initiating the pumping process.

##Special Components
The ram pump consists of multiple components that are not easily accessible in the AguaClara research lab or on campus. These pieces must be specially ordered, and are listed below.

**Check valve**
Team can order new check valves from McMaster Carr online store.
Generally, check valves can be used from the previous year unless severely deformed or threading has degraded.
https://www.mcmaster.com/#check-valves/=1chzv9q

**Metal plates**
The metal plates can be reused from previous years.
However, if new plates need to be ordered they are generally only available with the purchase of a new check valve.
https://www.mcmaster.com/#check-valves/=1chzv9q

**Springs**
The 2018 Spring team purchased spring of desired k constants from Century Spring Corp, and most testing can be accomplished with springs purchased in previous semesters.
https://www.centuryspring.com/?matchtype=e&network=g&device=c&adposition=1t1&keyword=centuryspringcorp&gclid=EAIaIQobChMIgYee1ejJ2gIVhFmGCh0IGgQZEAAYASAAEgLUXPD_BwE

**Metal rod and standoffs**
The unit consists of an 1/4 inch threaded metal rod and two metal standoffs that thread onto the rod.
Generally, this piece does not have to be replaced unless lost. The rod does not experience excessive wear.

**Brass Connector**
The team ordered a new, brass connector to connect the two check valves because the pvc connector threads were getting worn by the metal threads of the check valves. The team ordered a 4" long piece but there are other lengths available on McMaster Carr as well. https://www.mcmaster.com/4568k226

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
The minimum K value needed for the spring in any Ram Pump system is related to the weight of the water in the water column when the water is completely stopped. The team found this by taking the measurements of the water column on the Ram Pump in the lab. We found that the height of the water column was approximately 2 meters. Additionally, the inner radius of the pipe is .0127 m. The team determined that when the water is not moving and the plate is completely closed, the force opposing the spring force is the sum of the force on the plate from the water column $$(W_{wc})$$ and the weight of the plate and rod in water. The force on the plate from the water is equal to the weight of the water column which is given by:
$$W_{wc}=\rho_{water}gV $$
$$\text{where } \rho_{water} \text{ is the density of water in } kg/m^{3}$$ $$\text{g is gravity}$$ $$\text{and V is the volume of the water column in }m^{3}$$
$$W_{wc}= \rho_{water}g\pi*r^{2}h $$
$$W_{wc}= 1000kg/m^{3}9.81m/s^{2}\pi*.0127^{2}2m^{3} $$
$$W_{wc}= 9.9416N $$

The team found the weight of the plate and rod in water by finding the volume. The team did this by submerging the plate and rod in a known volume of water and measuring the change in volume of the system. This change in volume is the volume of the plate and the rod. The weight of this component is given by:
$$W_{rod}=\rho_{water}*g*V_{rod}$$
$$V_{rod}= 2*10^{-5} m^3$$
$$W_{rod}= 0.1962 N$$

The spring force must be at least the sum of these two values or else it will never be able to open the plate when the water column is full. Since the force of the spring is related to its compression and K value, the team used the total compression of the spring to find the K value associated with this minimum force required. The team measured the total compression of the spring to be 3.96cm or .0396m. The team then plugged in the values for the minimum force needed and compression of the spring into
$$F_{spring}= -kx $$
giving us the equation
$$W_{wc}+W_{rod}=F_{spring}$$
$$9.9416N + 0.1962N= -k.0396m $$
$$k= 256N/m $$
The team found the minimum spring constant (k) to be 256 N/m.

####Maximum K Value
The team determined that the spring cannot be stronger than the force of the water in the water column moving at its final velocity. The team then used this force to find the maximum K value a spring can have. The team has decided that the drag force across the plate is not a sufficient enough force to explain what is causing the plate to move. The team determined that to find this force, the team has comprised an experiment to measure the force on the plate just as it moves. The team ran a string from the top of the head tank and connect it to the plate on one end and a weight on a balance on the other. Then the team will produce one-half the final velocity of the system. The team will run the system and watch the initial change in the force on the balance.

####Running the Pump
When running the pump with a spring that has a k value within the calculated range, the team found that it needed enough water for full flow in the pipe to work. This makes sense because the calculations were done assuming full flow but this is something to be aware of and make sure of when running the pump. Once there was full flow, it would take a few seconds for the plate to close and start pumping. It would pump for a few cycles and then stop. A few seconds later it would do this again. The team observed that right before the ram pump would start pumping, there was a gurgling sound coming from the bucket on top of the drive pipe and that the water that exited the pipe after the first cycle seemed to have a higher flowrate than the water exiting when it wasn't pumping. This led the team to the theory that as the pump is running, it is pumping air bubbles into the drive pipe, decreasing the amount of water. Eventually, the amount of water is decreased to the point of not having enough to force the plate back down, which is why it stops pumping. Then, as the water is flowing but the pump is not moving, the air gets forced out by incoming water and the force from the water becomes strong enough to push down the plate again and start the pump. However, after further observation the team learned that what was actually happening was that the sump pump that pumps water up to the overhead bucket was pumping in bursts instead of continuously. This was causing there to be a rush of water when these bursts would occur and much less flow at all other times. These bursts were what was initiating the ram pump to start pumping. This was fixed by adding more water to the system so that the sump pump was never running dry and would be continuously pumping water up to the over head bucket. **This is extremely important. There should always be enough water for the sump pump to pump water continuously. If there isn't, there will be bursts of water and at all other times there will not be full flow in the drive pipe.**

The team also found that sometimes the plate would be stuck in the closed position and wiggling the bottom of the rod a little would loosen it up and allow it to run. This is an issue to look into because in a plant there won't be access to the rod nor will there be someone to wiggle it every time it gets stuck. Additionally, any particles in the water could lead to the rod getting stuck so a method of cleaning these particles out of the ram pump would be necessary.

### Finding Force on Plate
In order to find the maximum k value that the pump can function with, it is necessary to know the maximum force that would be exerted on the plate at the target velocity of $\frac{1}{2}V_f$ in order to complete a force balance. However, since the plate is within the check valve the force on the plate cannot be approximated as drag across a plate in infinite fluid. Since it is very difficult to mathematically find the force on the plate, the team decided to move forward with finding the value for our system experimentally. To do this, the team decided to connect flexible tubing to the end of the ram pump and have its outlet at a specific height that would make the the new final velocity of the system be half of the final velocity of the original system. Since $V_f$ is proportional to $\sqrt{H}$, the theoretical height to have the outlet is $\frac{1}{4}H$.
$$V_f= \sqrt{\frac{2gH}{\sum_{}^{}K+\frac{fl}{d}}}$$
$$\sqrt{\frac{2gh}{\sum_{}^{}K+\frac{fl}{d}}}=\frac{1}{2}\sqrt{\frac{2gH}{\sum_{}^{}K+\frac{fl}{d}}}$$
While the $\frac{fl}{d}$ term is different for the two different systems, in both cases this value is very small compared to $\sum_{}^{}K$ and can be neglected. This leads to:
$$h=\frac{1}{4}H$$
Since this is a theoretical value and headlosses and other real world factors could affect where the actual correct outlet height is, the team decided to measure the final velocity of the normal system with the normal outlet and then measure the final velocity with the flexible tubing outlet at the calculated height to see if the velocity at this height is close enough to $\frac{1}{2}V_f$.

#### Finding Final Velocity
In order to find the final velocity of the system with the normal outlet, the team connected flexible tubing to the end of the ram pump and had the outlet at the same level as the end of the ram pump but in another bucket that was on a scale. The team ran the pump for approximately 10 second trials and measured the change in weight of the bucket with the scale. The team executed this by having one person turn on the pump while the valve on the drive pipe was closed and then hold the flexible tubing in place. The other person started a timer and opened the valve at a certain time. That same person then closed the valve when the timer read 10 seconds later. The final velocity was found by the following calculations:
$$\Delta W = \rho_{water}gV$$
$$V= \frac{\Delta W}{\rho_{water}g}$$
$$Q= \frac{V}{t} $$
$$V_f= \frac{Q}{A}$$
$$V_f= \frac{V}{\rho_{water}gtA}$$
The team found the final velocity to be approximately 1.55 m/s.

In order to find the final velocity at the new height, the team attached the flexible tubing to the 80/20 framing using a hose clamp to have its outlet at the correct height. A bucket was then placed below the tubing on a ladder. A similar procedure was followed, the only difference being that the bucket was weighed before and after instead of staying on the scale. From this testing, the team found the flowrate to be approximately .8 m/s which is only 3% error from exactly .5. The team felt this was close enough to continue with our experimentation.
