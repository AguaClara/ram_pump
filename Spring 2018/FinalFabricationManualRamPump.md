# Ram Pump Operation and Testing Manual
# Spring 2018
## Maile McCann, Will Lopez, and Steven Lopez

*The goal of the Ram Pump subteam is to optimize the pumping efficiency of the hydraulic ram pump, where efficiency is measured in energy of water entering the pump over the energy of the water pumped. The hydraulic ram pump pumps clean water through the plumbing system of an AguaClara water treatment plant, which provides treated water for use in the chemical dosing system as well as sinks and toilets, and saves operators time and energy transporting treated water up by hand. The ram pump system is entirely electricity-free.*

*A major goal of Spring 2018 was to examine maximum energy efficiency. The value of calculating  experimental energy efficiency is that the team is then able to compare the values to calculated theoretical energy efficiency. From there, we can exclude terms in the theoretical calculations to determine the main contributors to inefficiency.*

*This manual outlines procurement, fabrication, testing, and cleaning of the current hydraulic ram pump model as of Spring 2018.*

## Background and Fabrication Details
The ram pump itself consists of two 1.5" threaded metal check valves connected by a custom PVC fitting. The upper check valve contains the functional interior of the ram pump. The interior of the ram pump consists of a threaded metal rod with two metal standoffs screwed on, and a hole in one end that has been tapped to accommodate a threaded metal plate. The spring fits into the interior by fitting concentrically over the end of the metal rod below the standoff. The purpose of the standoffs is to determine the maximum oscillatory period of the pump.

The threaded standoffs can screw up or down to accommodate a larger or smaller distance of oscillation. The metal plate is able to screw into the stop of the metal rod. The rod drives the oscillation of the metal plate through the check valve via the spring force. The metal rod is able to slip inside the bottom check valve, holding it in place horizontally but allowing vertical oscillation. The spring, with a larger radius than the rod, does not fit through the bottom check valve opening, and instead compresses when, on a downward drive, the metal drive rod encounters the bottom check valve. The compression of the spring causes an upward spring force that subsequently drives the metal plate back upward. See Figure 2 for interior setup in the inverted configuration.

The driving force of the ram pump is provided not by the force of the plate, however, but the pressure gradient created by the oscillation of the upper check valve. When the plate slams shut, the pressure above the upper check valve exceeds the pressure external to the effluent tube, thus driving flow through the effluent. When pressure has been released, the spring is able to overcome the sole hydrostatic force on the metal plate, and thus the plate oscillates open. When the hydrodynamic force of the drive flow hits a maximum, the drag on the plate closes the plate again, reinitiating the pressure gradient.

The upper check valve connects to the PVC drive pipe which provides the influent flow, or the treated water exiting the AguaClara plant. The connection is made by a PVC male to male connector that screws into a male metal nipple and into the top check valve. For lab testing purposes, previous subteams have established system to simulate flow from the plant. A sump pump carries water to a raised tank, and the water from this tank flows the drive pipe which initiates the pumping process.  The elevation of the head tank creates the energy input in order to drive the pressure oscillation in the ram pump. See Figure 1 for exterior setup.

<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Exterior%20Set%20up%20Pump.jpg" size = 400px >

###### Figure 1: Exterior Ram Pump Set Up. This is the schematic of the ram pump fittings from an exterior view, showing how each piece threads to the next.

### Calculating Minimum Spring Force

The compressed spring when the plate is in the closed position causes an upward force to open the plate, proportional to the k constant of the spring. In order to increase the time in the closed position and thus increase water pumped (see Python Calculations section for mathematical explanation) the k value for the spring should be minimized.

The spring force at most overcome the hydrostatic force when the plate is closed. Therefore, to  find the minimum possible spring force, the team created a force balance in a python code to find the k value that will produce enough force to overcome the hydrostatic force of the water in the drive pipe.

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
For the Spring 2018 semester, the team calculated a minimum k constant of .38. The team then ordered springs of that k constant at varying lengths to look for a correlation between length and pumping efficiency.

### Check Valve Inverted Configuration
A possible modification to the current set up to increase efficiency was the inverted configuration. The purpose of the inverted check valve configuration is to reverse the force balance in the ram pump. The configuration involves reversing the upper valve so that the upward spring force pushes the plate into the closed position, and the hydrostatic force of water opens the valve. The effect is that the spring force has to only resist the hydrostatic force in the closed position, thus potentially lengthening the time in the closed position. Due to the increase in time for the closed position, more water flows through the effluent therein increasing the efficiency.

The CEE machine shop is equipped to fabricate the inverted valve. The inverted check valve consists of a standard metal check valve with the following modifications. Contact Tim or Paul of the CEE Machine Shop (in the basement of Hollister next to the AguaClara lab) to assist with the modifications to the unaltered metal check valve. They are both equipped to operate the drill and tap for this modification. Additionally, Tim or Paul are both resources to assist in follow-up alterations or fabrication questions.

### Check Valve Modification
1. Drill a .25" diameter hole 2.4" up from the bottom of the valve and another .5" hole at the same elevation at the opposite side of the valve, as visually represented in Figure 2: Interior Ram Pump Set Up below.
2. Tap both holes in order to accommodate threaded pipe fittings for the pressure test valve and the effluent valve, as shown in Figure 2.
3. Screw in the pressure test valve and the effluent valve.
4. Apply acrylic flex sealant tape around connection between threads and valve in order to ensure water tightness.

<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Inverted%20Config%20Pump.png" size = 400px >

###### Figure 2: Interior Ram Pump Set Up After Modification. From this image, you can see how the metal plate fits into the upper check valve and attaches to the metal rod. The spring, as shown, inserts concentrically around the drive rod and it held in place by the bottom check valve.

### PVC Fitting Fabrication
This component connects the two metal check valves to hold the inner metal rod in place. This fitting was fabricated by this semester's subteam and can be reused until water tightness fails or the fitting undergoes significant internal pitting, however this section will outline how to fabricate a new piece.

1. Purchase two 1" male connectors for which one side is threaded and the other is smooth.
2. Depending on the length of the rod and spring on interior of pump, use band saw to cut one connector so that both connectors together allow the inner rod to rest on spring inside valves without compression initially. The spring will be approximately 2.5" in length, but make measurements and mark male connectors to appropriate size for current configuration being tested.
3. Weld the smooth ends together using PVC welder.
4. Allow the apparatus to cool completely before attaching to ram pump. This is crucial to ensure that the weld sets correctly and the piece doesn't break during testing.

<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Male%20to%20male%20connector.jpg" size = 400px >

###### Figure 3: Spring 2018 Fabricated Male to Male PVC fitting. This is the current team's fitting fabricated in Spring 2018, where you can see the welds done with the hand held PVC welder.

## Special Components
The ram pump consists of multiple components that are not easily accessible in the AguaClara research lab or on campus. These pieces must be specially ordered, and are listed below.
1. Check valve
  * Team can order new check valves from McMaster Carr online store.
  * Generally, check valves can be used from the previous year unless severely deformed or threading has degraded.
  * https://www.mcmaster.com/#check-valves/=1chzv9q
2. Metal plates
  * The metal plates can be reused from previous years.
  * However, if new plates need to be ordered they are generally only available with the purchase of a new check valve.
  * https://www.mcmaster.com/#check-valves/=1chzv9q
3. Springs
  * The team purchased spring of desired k constants from Century Spring Corp, but most testing can be accomplished with springs purchased in previous semesters.
  * If springs must be ordered, contact grader that is in charge of ordering parts with a copy of your shopping cart and instructions on how to order. For Spring 2018, this was Casey Ching.
  * https://www.centuryspring.com/?matchtype=e&network=g&device=c&adposition=1t1&keyword=century%20spring%20corp&gclid=EAIaIQobChMIgYee1ejJ2gIVhFmGCh0IGgQZEAAYASAAEgLUXPD_BwE

  4. Metal rod and standoffs
  * The unit consists of an 1/4 inch threaded metal rod and two metal standoffs that thread onto the rod.
  * Generally, this piece does not have to be replaced unless lost. The rod does not experience excessive wear.

## Experimental Methods
The following instruction details how to conduct energy efficiency testing of the ram pump. This determines how efficiently the system pumps effluent for the amount of volumetric flow entering the pump from of the drive pipe. Energy of both the effluent pumped as well as the incoming drive flow is the product of flow  rate  and  hydraulic  head. The energy pumped is the product of volumetric effluent flow and effluent head, or the equivalent pressure that the ram pump is pumping against to pump the water to a higher elevation. The pressure head can be measured using a 7 kPa pressure sensor linked to ProCoDA. Volumetric flow rate is determined by recording the amount of time it takes to pump a certain volume, as shown in the following equation:

 $Q= \frac{V}{t}$


 The overall equation for energy efficiency of the ram pump is as follows:

 <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/equations.png" size = 400px >

  ###### Figure 5: Energy Efficiency Equation, where
  ###### $Q_{eff}$ = volumetric flow rate of effluent
  ###### $h_{eff}$ = pressure head of effluent being pumped, eg: how high the effluent is theoretically being pumped
  ###### $Q_{waste}$ = volumetric flow rate of the wasted water during the same time interval measured for the effluent flow rate
  ###### $h_{drive}$ = height of the drive pipe, representative of the incoming energy to the ram pump

Energy efficiency will become very useful in the final phase of Spring 2018's semester goals. The value of calculating experimental energy efficiency is that the team is then able to compare the values to calculated theoretical energy efficiency. From there, we can exclude terms in the theoretical calculations to determine the main contributors to inefficiency. For example, we can exclude the minor headloss term in the theotrical efficiency calculation to see how much minor headloss reduces effiency and if this is an issue to address as well as spring force. This analysis will be the focus of the last third of the semester, and will be further detailed in the final manual.

### Experiment

<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ram%20pump%20setup.jpeg" size = 400px >

###### Figure 4: Standard Configuration: the setup of the apparatus that the team uses in the laboratory to conduct all experimentation

1. Assemble ram pump in the configuration shown in the figure above, with the air chamber connected from the effluent pipe with a push to connect T fitting.

2. Fill the waste water bucket roughly half way to the brim.

3. Attach a push-to-connect ball valve to the end of the effluent flow pipe in order to create pressure within the air chamber.

3. Connect a pressure sensor to the effluent outlet to measure the effluent pressure of the system using ProCoDA

4. Open the bucket connector valve and close the drive pipe valve.

5. Plug in the electric sum pump and allow it to run until most of the water is removed from the collection bucket.  Then close the bucket connector valve and unplug the pump.  Mark the water level in the collection bucket using tape.

6. Connect the air chamber to the effluent pipe as displayed in Figure 4.  Attach a 200 kPa pressure sensor to the top of the air chamber and start ProCoDA data collection.  Open the drive pipe valve while starting a stopwatch at the same time.
Run the ram pump until roughly 30 seconds elapse.  Stop the timer and close the drive pipe valve simultaneously.  Stop the ProCoDA data collection.

7. Measure the volume of water in collection bucket underneath the drive pipe by subtracting the final volume by the initial volume marked by the tape.  Divide this value by the time measured to compute the flow rate of the effluent and waste streams. The waste stream is the flow that comes out of the bottom of the system and is recycled back through the sum pump. The effluent is the flow that that leaves through the check valve and is pumped to a designated height.

8. Measure the length of the drive pipe and compute the effluent head by dividing the pressure measured from the sensor using ProCoDA by the density of water multiplied by the gravitational acceleration constant.

$h = \frac{P}{\rho * g}$

9. Calculate energy efficiency using the pressure data from ProCoDa. This will be done by using the initial volume of the chamber and Boyle's Law as listed below. The initial volume and the pressure at two points are used to calculate the new volume for the second pressure. This is continuously interpolated until volume is obtained for every pressure measurement obtained. Using these volumes and the time we can calculate a volumetric flow rate.

$ P_{1} * V_{1} = P_{2}* V_{2} $

Writing the Python code for this data analysis is part of the team's focus for the last third of the semester, and will be included in the final research report.

### Cleaning Procedure
1. Run DI Water through the system
2. Close the valve to the sum pump while the water is running through to accumulate the water in the waste bucket
3. Drain the waste valve and remove all attached tubing
4. Run a 9:1 water to bleach solution through the tubing using a peristaltic pump
5. Allow the ram pump and PVC to air dry over night
6. Make sure there are no spills around the ram pump or on the lab station
7. Remove excess and unnecessary clutter from the lab station

## Experimental Checklist
1. Check that the water level in the waste water is above the outlet to the sum pump
2. Make sure every valve is set to open
3. Check that all the fittings are secured to prevent water leaks
4. Ensure that the spring and the rod are well aligned inside the valve
5. Make sure there is no water on the surface of the table when plugging in the sum pump
6. Check that the effluent flow valve is discharging into the container
7. Check that there are no obstructions in the tubing connected to the pressure sensor

## ProCoDA Methods

ProCoDA can be used to measure the pressure in the effluent valve in order to determine the head of the effluent valve when efficiency testing. In order to determine the max height that the effluent would achieve, measure the pressure and use equation

$P=\rho * g * h$

and rearranging to obtain

$h =\frac{P}{\rho*g}$

This height is then plotted using every pressure obtained to determine how height varies with pressure. To accomplish this, attach a short (no longer than 12 in) 1/4 inch plastic flex tube into the pressure test valve. Plug the pressure sensor into a port on the PC where ProCoDA will be accessed. Run the pump as explained in experimental procedures, this time recording pressure readings. After 30 seconds, stop the data file and examine the points of highest pressure. This will be the pressure when the plate just opened and effluent was being pumped. Average the highest pressure values in the pressure oscillation to obtain your average effluent pressure.

## Python Calculations

As previously discussed, a goal of Spring 2018's subteam was to find a maximum efficiency value for the current apparatus in order to determine causes of inefficiency. To determine maximum efficiency, the team wrote a Python code that can be transferred to future teams in order to have a max efficiency value each semester for the current apparatus.

The governing equations for water pumped in both the deceleration and acceleration phases are the integrals of velocity in both cases.

While the plate is open, the velocity is accelerating and is governed by the following equation:

<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Longer%20V.jpg" size = 400px >

###### Figure 5: Full equation for velocity of a hydraulic transient during the acceleration phase

In order to determine headloss coefficients experimentally, the team measured the terminal velocity of water flowing through the drive pipe and used the following relationship to back calculate the headloss term:

<img src="https://github.com/AguaClara/ram_pump/blob/master/Vf%20eqn.jpg?raw=true" size = 300px >

###### Figure 6: Equation for verminal velocity, from which the team extracted a constant for head loss

After the plate closes, water begins to decelerate and the velocity during deceleration is governed by F=ma, with the force on the water caused by the pressure gradient from the drive pipe to the effluent. The full equation can be found in the Python code at the bottom of this manual.

In order to determine energy, the code takes the integral of each part of the equation. The bound of integration for acceleration are from 0 to the time when the plate closes. The bounds of integration for deceleration are from the time the plate closes to the time velocity goes to 0 (x intercept of deceleration). This is represented graphically below:

<img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ideal%20Velocity%20graph.png" size = 400px >

###### Figure 7: Graph produced by Python Code of ideal velocity cycle; before intersection is when the water is accelerating, after the intersection is deceleration

The final step in calculating efficiency is to multiply the integral of acceleration by the height of the drive pipe to obtain energy input; then multiply deceleration by the height of the effluent by the effluent pipe to obtain energy pumped. The full code is included below.

Due to lack of time in the semester, the team was unable to find an accurate experimental value for efficiency. The team performed multiple efficiency tests on the various springs with calculated spring forces. However, due to noise in pressure sensor readings the efficiency values were extremely inaccurate, averaging almost 60% efficient. See the following github issues for testing documentation:

[Efficiency Testing 4/10](https://github.com/AguaClara/ram_pump/issues/27)

[Efficiency Testing 4/11](https://github.com/AguaClara/ram_pump/issues/28)

[Efficiency Testing 4/13](https://github.com/AguaClara/ram_pump/issues/30)

### Code for Efficiency Calculations
```python

# Acceleration
# L = length of major losses, h_drive
# v_f = velocity of flow when plate is completely open

# k = constant for major and minor loss coefficients
import scipy.integrate as integrate
from aide_design.play import *
t = np.linspace(0, .2, 500) # 500 seconds, 4 intervals
H = 5  # Height of drive pipe.
L = 12  # Length of effluent pipe.
g = pc.gravity.magnitude
v_f = .349  # Experimentally measured terminal velocity.
k = (2*g*H)/(L*v_f ** 2)
def velocity_a(time):
    return np.sqrt(2*g*H/k)*np.tanh(time*np.sqrt(g*H*k/(2*L)))

v = velocity_a(t)
plt.plot(t, v)
plt.xlabel('Time')
plt.ylabel('Velocity')
plt.title('Ideal Velocity vs Time')
plt.show()

# Deceleration
# Governing equation is F = ma

# The deceleration of the water after the valve closes is directly proportional
# to the corresponding increase in pressure.
# The pressure spike generated the moment the valve closes will be measured in
# the lab.
a = DeltaP/(rho*H)

# Time when plate closes (measured or calculated)
t_c = 0.125

# Velocity at time plate closes.
b = velocity_a(t_c)

# Velocity while plate is closed and water is deccelerating.
def velocity_d(t):
    return a*t - t_c*a + b
v_d = velocity_d(t)

# Find t at v=0
b = len(v_d)
for x in range(0, b):
    if (v_d[x-1] >= 0 and v_d[x+1] <= 0):
        x_intercept = t[x]  # Where the deceleration crosses the x axis.
x_intercept

#  Plotting both
plt.plot(t, v)
plt.plot(t,v_d)
plt.xlabel('Time')
plt.ylabel('Velocity')
plt.title('Ideal Velocity vs Time')
plt.ylim((0,1))
plt.xlim((0,.14))
plt.show()

# Integrate acceleration and decceleration.
w_int = integrate.quad(velocity_a, 0, t_c)
p_int = integrate.quad(velocity_d, t_c, x_intercept)
p_int
waste = w_int[0]
pumped = p_int[0]

# Calculate efficiency.
h_eff = 10
max_E = (pumped*L)/(waste*H)
max_E * 100

```python
