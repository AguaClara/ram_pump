# Ram Pump, Fall 2018
#### Alycia Storch, Matthew Snyder
#### December 8, 2018

## Abstract
The goal of the Ram Pump is to provide the AguaClara plant with treated water without using electricity. Previous work on the Ram Pump was essential in creating a mathematical model for the velocity experienced in the Ram Pump. This model was then used to find the minimum spring constant, also known as the k value, for a spring needed. The main goal for this semester was to increase the efficiency of the pump. The team this semester explored creating a model to find the ideal spring for a Ram Pump in any AguaClara plant, present or future, with the highest efficiency.

## Introduction
The ram pump is a gravity powered pump that will provide a convenient movement of water around AguaClara plants from low to high elevations in order to provide clean, treated water to the plumbing system of the plant. The plumbing system of AguaClara plants provide water for chemical dosage systems as well as sinks and toilets. This tool will alleviate the burden on operators to manually carry treated water from the plant effluent up to other parts of the plant. The problem with the current prototype is that it is highly inefficient, which can be attributed to a variety of factors ranging from head loss to an inefficient spring. Previously during Spring 2018, the AguaClara team focused on creating a mathematical model to find the optimal spring constant for the ram pump. During the Fall 2018 semester, the Ram Pump subteam will build on these previously proposed models so that a more accurate value for the spring constant can be found. This analysis will allow for an efficient way to  find the optimal spring for any given system.

## Previous Work
During the previous semester, Spring 2018, work on the Ram Pump was mainly centered around creating a mathematical model to find the ideal spring constant that will allow for the most efficient pump. **maybe rephrase, a bit wordy; make the spring 2018 team the subject of the sentence**. The Spring 2018 team used python code to model the ideal velocity of the water in the drive pipe of the pump and used this model along with force balances to create a code that returns the minimum spring force and spring constant needed. The graph below was created by the team last semester. The red line represents the equation for the velocity of water in the drive pipe when the plate is open and the blue line is the velocity of the water when the plate is closed. The intersection is where the plate closes. The area under the blue line when the plate is closed is the amount of water pumped.
<center>
<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ideal%20Velocity%20graph.png" size = 400px >

Figure 1: Graph produced by Python Code of ideal velocity cycle; before intersection is when the water is accelerating, after the intersection is deceleration
</center>


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

The Spring 2018 team also tried to use the ideal velocity to find the theoretical efficiency of the pump and compared this to the measured efficiency which was obtained through experimentation and data collection using ProCoda. However they were unable to obtain accurate data from ProCoda and could not calculate a feasible efficiency, so one of the main goals this semester was to calculate the efficiency of the ram pump. Then, the team could determine how to best optimize the efficiency to create a working pump for the AguaClara plants. The team's code for calculating the efficiency can be found here: https://github.com/AguaClara/ram_pump/blob/master/Spring%202018/IdealEfficiency.py

In the past, teams have determined that the primary inefficiency is that the plate of the ram pump in the upper check valve is not staying closed long enough. This problem can be seen in the above graph of ideal velocity; the area under the blue line is equal to the volume of water pumped so if the blue line (water decelerating) had a shallower slope and extended for a longer time the amount of water pumped would be greater. There are three potential causes for this: the spring force is too large and overcomes the force downward on the plate too quickly, the spring force is too weak and the water reaches a small fraction of its maximum possible value and decelerates quickly, or the force on the plate from the water causes the plate to close quickly and just bounce back up. **Consider making this into a numbered list** All of these scenarios are strongly related to the spring used in the pump, so this will be the team's main focus this semester. The team plans to use ProCoda to collect data on the pressure in the pump to be able to get an idea of what forces the plate is experiencing. The team hopes to determine the main contributor to the small closure time and move forward first with mathematical modeling and code ~and then with real-world implementation and experimentation to address said problem.~ **Sentence is wordy! Somehow change the phrase "main contributor"** The team hopes to obtain values for head losses throughout the system to use in conjunction with the ideal models to  model the ram pump more accurately. The team plans to write a code whose inputs are the parameters of a plant (including available head, pipe diameter, head losses, etc) and outputs the specifications of the required spring.

## Background and Fabrication Details
The ram pump itself is composed of two 1.5" metal check valves connected by a 4" female-female metal fitting. The upper check valve houses the functional interior components of the ram pump. The interior components of the ram pump are composed of a threaded metal rod with two metal standoffs screwed on. Additionally, one end of the rod has been tapped to encase the threaded metal plate. The spring fits into the interior of the pump by fitting over the end of the metal rod below the bottom standoff. The standoffs are there to change the length of the oscillations for the pump.
<center>
<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/Ram%20pump%20structure.png">
Figure 2: Components of the Ram Pump
</center>
</br>
The metal plate is is screwed into the top of the metal rod. The rod drives the oscillation of the metal plate through the top check valve under the power of the spring force. The metal rod slides freely into the bottom check valve, which holds the spring in place while not hindering the vertical oscillation. The spring is unable to fit through the bottom check valve because the check valve is fit precisely for the rod's diameter. When the spring compresses, the force from the spring increases. The force from the spring is the main component behind the oscillations of the spring.

The main force component of the ram pump is not the force over the plate, but the pressure differential created by the movement of the upper check valve. When the plate is shut, the pressure above the check valve increases. This increase eventually exceeds the pressure in the effluent tube, thus forcing the water into the effluent. Once this occurs, the pressure above the plate is relived and thus allows the spring to force open the plate. Then once the hydrodynamic force hits a maximum, the increased velocity around the pump creates a "suction force," which reinitiates the pressure differential. **Explain what you mean by suction force since you have it in parenthases**

The upper check valve connects to the drive pipe carrying the treated water from the AguaClara plant. This connection is produced by a male-to-male connector made of PVC and screwed into a nipple then into the top check valve. For lab testing purposes, previous Ram Pump subteams have established a system to simulate flow from a plant. A sump pump circulates water into a raised head tank. The water in the bucket, which now contains an elevation head, then flows into the drive pipe, this initiating the pumping process.

<center>
<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ram%20pump%20setup.jpeg">

Figure 3: Experimental setup in the lab
</center>

## Special Components
The ram pump consists of multiple components that are not easily accessible in the AguaClara research lab or on campus. These pieces must be specially ordered, and are listed below.

**Check valve**
Team can order new check valves from McMaster-Carr online store.
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

[**What is the thread measurement for the rod? Is there somewhere to get a new one?**]

**tbh I don't know**

**Brass Connector**
The team ordered a new, brass connector to connect the two check valves because the PVC connector threads were getting worn by the metal threads of the check valves. The team ordered a 4" long piece but there are other lengths available on McMaster-Carr as well. https://www.mcmaster.com/4568k226

**This might read better in a table**

## Running the Pump
When running the pump with a spring that has a k value within the calculated range, the team found that it needed enough water for full flow in the pipe for the whole system to work. This makes sense because the calculations on the pump were done assuming a constant full flow. Making sure there is constant full flow is something to be aware of and make sure of when running the pump. **This sentence is confusingly worded** Once there was full flow, it would take a few seconds for the plate to close and start pumping. It would pump for a few cycles and then stop. A few seconds later it would do this again. The team observed that right before the ram pump would start pumping, there was a gurgling sound coming from the bucket on top of the drive pipe and that the water that exited the pipe after the first cycle seemed to have a higher flowrate than the water exiting when it wasn't pumping. This led the team to the theory that as the pump is running, it is pumping air bubbles into the drive pipe, decreasing the amount of water. Eventually, the amount of water is decreased to the point of not having enough to force the plate back down, which is why it stops pumping. Then, as the water is flowing but the pump is not moving, the air gets forced out by incoming water and the force from the water becomes strong enough to push down the plate again and start the pump. However, after further observation the team learned that what was actually happening was that the sump pump that pumps water up to the overhead bucket was pumping in bursts instead of continuously. This was causing there to be a rush of water when these bursts would occur and much less flow at all other times. These bursts were what was initiating the ram pump to start pumping. This was fixed by adding more water to the system so that the sump pump was never running dry and would be continuously pumping water up to the over head bucket. **This is extremely important. There should always be enough water for the sump pump to pump water continuously. If there isn't, there will be bursts of water and at all other times there will not be full flow in the drive pipe.**

**Consider making this into multiple paragraphs, it was a bit hard to follow**

The team also found that sometimes the plate would be stuck in the closed position and manually jarring the rod would loosen it up and allow it to run. This is an issue to look into because in a plant there won't be access to the rod nor will there be someone to wiggle it every time it gets stuck. Additionally, any particles in the water could lead to the rod getting stuck so a method of cleaning these particles out of the ram pump would be necessary.

## Force Balance Calculations

#### Finding Initial Compression of Spring
The magnitude of the force exerted by the spring is equal to the spring constant times the total compression (or elongation) of the spring as shown in the equation
$$F_{spring}= -kx $$ In order to find the compression of the spring, the team measured the original length of the spring, and used dimensions of the check valve, rod, and plate to find the original compression of the spring when the plate is open and the additional compression it experiences when the plate is closed. In order to find the original compression, the team measured the distance between the bottom of the threads on the rod (which is what constrains the spring on the top end) and the plate stopper in the bottom check valve (which is what constrains the spring on the bottom end). To find this distance, the team measured the thickness of the plate stopper, the length of the bottom of the rod below the plate stopper, and the total distance of the rod below the threads. The measured values are shown below.
<center><img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/spring%20compression.png">

Figure 4: Interior rod between the check valves
</center>
</br>

Using these measurements the team found that the distance the spring ~had when the plate was open, labeled original compressed length above, was~ **rephrase this, I had a hard time understanding what was being communicated**
10 cm - 1 cm - 1.5 cm = 7.5 cm. The original, free length of the spring we were using is 10.16 cm so the original compression of the spring when the plate is open is the free length minus the compressed length which is 2.66 cm. To find the total compression, the team added the distance the plate moves to this value. The distance the plate moves was found by measuring from the bottom of the plate (top of the rod it is attached to) to the top of the threads on the rod that is attached to the plate. This value was 1.3 cm making the total compression of the spring 3.96 cm.
<center><img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/plate%20diagram.png">

Figure 5: The plate in the Ram Pump

**A numbered list could ve helpful for your paragraphs explaining steps in arriving to a outcome**

</center>
</br>
####K Values
##### Original Approach
The minimum K value needed for the spring in any Ram Pump system is related to the weight of the water in the water column when the water is completely stopped. The team found this relationship by taking the measurements of the water column on the Ram Pump in the lab. The team found that the height of the water column is approximately 2 meters while the inner radius of the pipe is .0127 m. The team determined that when the water is not moving and the plate is completely closed, the force opposing the spring force is the sum of the force on the plate from the water column, $W_{wc}$, and the weight of the plate and rod in water. The force on the plate from the water is equal to the weight of the water column which is given by: $$W_{wc}=\rho_{water}gV $$ where $\rho_{water}$ is the density of water in $kg/{m^3}$, where $g$ is gravity and $V$ is the volume of the water column $$W_{wc}= \rho_{water}g\pi*r^{2}h $$ $$W_{wc}= 1000kg/m^{3}9.81m/s^{2}\pi*.0127^{2}2m^{3} $$ $$W_{wc}= 9.9416N $$

The team found the weight of the plate and rod in water by finding the volume of the submerged plate and rod in a known volume of water and measuring the change in volume of the system. This change in volume is the volume of the plate and the rod. The weight of the component is given by: $$W_{rod}=\rho_{water}* g * V_{rod}$$ $$V_{rod}= 2*10^{-5} m^3$$ $$W_{rod}= 0.1962 N$$

The spring force must be at least the sum of these two values or else it will never be able to open the plate when the water column is full. Since the force of the spring is related to its compression and K value, the team used the total compression of the spring to find the K value associated with this minimum force required. The team measured the total compression of the spring to be 3.96cm or .0396m. The team then plugged in the values for the minimum force needed and compression of the spring into $$F_{spring}= -kx $$ giving us the equation $$W_{wc}+W_{rod}=F_{spring}$$ $$9.9416N + 0.1962N= -k.0396m $$ $$k= 256N/m $$ The team found the minimum spring constant (k) to be 256 N/m.

Using these findings, the team determined that the spring cannot be stronger than the force of the water in the water column moving at its final velocity. They then used this force to find the maximum K value a spring can have. The team determined that the drag force across the plate is not a sufficient enough force to explain the plate movement. The team decided that the force must be computed experimentally. They created an experiment to measure the force on the plate just as it moves.

In the proposed experiment, the team ran a string from the top of the head tank and connect it to the plate on one end and a weight on a balance on the other. The experiment produced one-half the final velocity of the system. The team's experiment ran the system and watch the initial change in the force on the balance.

**Do you have pictures? List the steps in the experimental setup more comprehensively**

#####New Approach to K values

The team came to the realization that the opening and closing states cannot be looked at separately for finding a k value and fixing the length of the spring is not the best way to find a k value. The team came up with this equation,$$k=\frac{|F_{opening}-F_{closing}|}{\Delta x}.$$ In this equation, $F_{opening}$ is the force at which the plate opens and $F_{closing}$ is the force at which the plate closes. The team currently assumes that $F_{opening}$ is the hydrostatic force from the water column above the plate. $F_{closing}$ is the force on the plate when the plate is open from water moving at the ideal closing velocity. The closing velocity is the velocity at which the plate should close at. Since the velocity of the water in the drive pipe has an asymptote, it may take a long time for the velocity to become very close to $V_f$ so there may be a more efficient velocity for the plate to close at. More information on how to find this closing velocity is detailed in the Future Work section.

To begin to find the values in this equation, the team started looking at $F_{closing}$. While a general equation to find this value based on velocity or Reynolds Number would be ideal, the unique geometry of the valve made this difficult so the team decided to begin with an experiment to find the force on the plate from the water in the system in the lab.

### Finding Force on Plate
In order to find the maximum k value that the pump can function with, it is necessary to know the maximum force that would be exerted on the plate at the target closing velocity in order to complete a force balance. In the past, the target velocity of $\frac{1}{2}V_f$ was arbitrarily chosen. The team has not yet looked into the ideal target velocity but continued with the choice of $\frac{1}{2}V_f$. Everything that the team did using $\frac{1}{2}V_f$ can be replicated for any other target velocity.

Since the plate is within the check valve the force on the plate cannot be approximated as drag across a plate in infinite fluid. Since it is very difficult to mathematically find the force on the plate, the team decided to move forward with finding the value for our system experimentally. To do this, the team decided to connect flexible tubing to the end of the ram pump and have its outlet at a specific height that would make the the new final velocity of the system be half of the final velocity of the original system. Since $V_f$ is proportional to $\sqrt{H}$, the theoretical height to have the outlet is $\frac{1}{4}H$.
$$V_f= \sqrt{\frac{2gH}{\sum_{}^{}K+\frac{fl}{d}}}$$
$$\sqrt{\frac{2gh}{\sum_{}^{}K+\frac{fl}{d}}}=\frac{1}{2}\sqrt{\frac{2gH}{\sum_{}^{}K+\frac{fl}{d}}}$$
The $\frac{fl}{d}$ term represents the friction loses in the system. While the $\frac{fl}{d}$ term is different for the two different systems, in both cases this value is very small compared to $\sum_{}^{}K$ and can be neglected. This simplification leads to:
$$h=\frac{1}{4}H$$
Since this is a theoretical value and head losses and other real world factors could affect where the actual correct outlet height is, the team decided to measure the final velocity of the normal system with the normal outlet and then measure the final velocity with the flexible tubing outlet at the calculated height to see if the velocity at this height is close enough to $\frac{1}{2}V_f$.

#### Finding Final Velocity
**Explain which final velocity this is, I got a little confused with terminal velocity**
In order to find the final velocity of the system with the normal outlet, the team connected flexible tubing to the end of the ram pump and had the outlet at the same level as the end of the ram pump but in another bucket that was on a scale. The team ran the pump for approximately 10 second trials and measured the change in weight of the bucket with the scale. The team executed this by having one person turn on the pump while the valve on the drive pipe was closed and then hold the flexible tubing in place. The other person started a timer and opened the valve at a certain time. That same person then closed the valve when the timer read 10 seconds later. The final velocity was found by the following calculations:
$$\Delta W = \rho_{water}gV$$
$$V= \frac{\Delta W}{\rho_{water}g}$$
$$Q= \frac{V}{t} $$
$$V_f= \frac{Q}{A}$$
$$V_f= \frac{V}{\rho_{water}gtA}$$
The team found the final velocity to be approximately 1.55 m/s.

In order to find the final velocity at the new height, the team attached the flexible tubing to the 80/20 framing using a hose clamp to have its outlet at the correct height. A bucket was then placed below the tubing on a ladder. A similar procedure was followed, the only difference being that the bucket was weighed before and after instead of staying on the scale. From this testing, the team found the flow rate to be approximately .8 m/s which is only 3% error from exactly .5Vf.

####Force Experiment
#####Purpose
The purpose of this experiment is to find the force from the moving water exerted on the plate when it is open. The force from the moving water is very hard to find mathematically due to the unique geometry of the valve so the team decided to find this force through experimentation.

#####Failed Experiments
The team’s first experiment to find the force of the water was to move the stopper on the rod down to compress a spring more. Compressing the spring more would raise the force the spring was giving on the plate. Once the plate could no longer close, this would mean the water was not able to get to a high enough force to close the plate. The team then tried to zero in on the exact amount of compression needed for the plate to just fail to close. Then the team would have then known the force the water would get to. However, the team soon found that the amount of movement needed on the stopper was in the micrometer range so human error of moving the stopper was too much for any accurate results.

The team then comprised a second experiment to find this force. First, the team built up a pulley system around the top of the lab setup for the ram pump. Next, the team tied a string to the plate and connected it to a counterweight through the pulley system. The weight was on a balance in order to get the readings for the change in the weight when the system ran. However, in order to get accurate readings the team found that the weight needed to be tied in a way that had the plate disengaged from the check valve to start. This also required raising the weight by micrometers and was hard to do with materials at hand.

<center>
<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/IMG_6993.jpg">
Figure 6: Pulley system
</center>
</br>



#####Execution and Results
After several failed experiments, the team found a setup that worked. This experiment used the same pulley system as a previous one. The team threaded string through the drive pipe and pulleys. The team had the shop next door tap a hole in the top of the plate so that a hook could be screwed into the plate and one end of the string could be tied to it. The other end of the string was tied to a water bottle that was suspended in the air and acted as a counter weight. The bottle had enough water in it to keep the plate open while the pump was running. Then, with the pump still running, the team emptied the bottle little by little until the plate was no longer held open by the bottle. The team then used a pipette to slowly add water back into the bottle until the plate was held open again. The team then weighed the bottle. From a simple force balance, $$F_{water}+W_{rod}=W_{bottle}$$
$$F_{water}=W_{bottle}-W_{rod}$$
where $W_{rod}$ is the weight of the plate and rod in water.
<center>
<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/Screen%20Shot%202018-11-27%20at%205.30.14%20PM.png">
Figure 7: Diagram showing the important forces in the system and how they balance
</center>
</br>
The team got the following results for the weight of the bottle :
Trial 1: 7.613 N
Trial 2: 7.671 N
Trial 3: 7.573 N
These results yielded an average weight of 7.619 N. As detailed above, the weight of the rod in water is 0.1962 N. Therefore, $$F_{water}=7.619-0.1962=7.4228N.$$

<center>
<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/Screen%20Shot%202018-11-30%20at%205.48.19%20PM.png">
Figure 7: Plate with hook screwed in
</br>
</br>
<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/Screen%20Shot%202018-11-27%20at%205.37.48%20PM.png">
Figure 8: Experimental Setup of final experiment
</center>


####Future Work
The team began to look at pressure sensor readings to confirm that the pressure at the plate when the plate is closed nears hydrostatic pressure (the weight of the water column above the plate divided by the area of the plate). However, the team did not have enough time to fully analyze this data. In the future, this data should be analyzed to find the point at which the plate opens. If this pressure is not consistent with hydrostatic pressure, the team should work to find what the pressure does near.
Once the opening and closing forces are known (closing force from experiment and opening force from pressure sensor data), these values can be plugged into the equation $$k=\frac{|F_{opening}-F_{closing}|}{\Delta x}. $$
From here, the team can repeat the experiment to find the force on the plate from the moving water with the outlet of the pump at heights that correspond to different final velocities (for example: for example: 0.5Vf, 0.6Vf, 0.7Vf, 0.8Vf, and 0.9Vf, Vf is what the team found this semester). Then, these forces can be plugged into the k equation to get k values and lengths for springs that will close at the corresponding velocity. The team can then order these springs with specifications as close to the specifications found. McMaster Carr stock springs may be the best way to do this. The team can then run efficiency tests on the pump with these different springs to find the closing velocity that leads to the highest efficiency.
