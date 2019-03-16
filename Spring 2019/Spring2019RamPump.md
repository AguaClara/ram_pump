# Ram Pump, Spring 2019
#### Ching Pang, Cheer Tsang, Alyssa Ju, Iñigo Cabrera
#### March 15, 2019


## Abstract
The AguaClara Vertical Ram Pump (ACVRP) was an innovation that will enable water to be pumped from lower elevations to higher elevations using the driving force of falling water. The ACVRP improved on a conventional ram pump design by increasing its space efficiency and decreasing its capital cost. Although a prototype had been built, it had not reached the target pumping efficiency. The goal of this semester was to optimize the ram pump efficiency by finding the necessary forces to open and close the valve at the ideal times.

## Introduction

The purpose of a hydraulic ram pump was to pump water from a lower elevation to a higher elevation using only the energy of the falling water to drive the water up ([bin Mohammad Ali, 2011](https://www.scribd.com/doc/76535229/Hydraulic-Ramp-Pump-Hydram)). In an AguaClara plant, flow through a plant was driven solely by gravity, so treated water exited the plant at the lowest point of the plant. Thus, in order to fill chemical stock tanks with treated water, operators must carry up buckets of water from the outlet at the lowest point of the plant to manually fill tanks. The AguaClara Vertical Ram Pump (ACVRP) solved this issue by allowing treated water to be pumped from the outlet of the plant to where it was needed at higher elevations in the plant, all without using electricity ([Martinez et. al, 2016](https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view?usp=sharing)). In addition, this allowed the treated water to be pumped for utilization in the plant's plumbing system, which includes the plant's sinks and toilets.

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/AC_plant.png?raw=True" height=300>
</p>
<p align="center">

**Figure 1:** The treated water exits the stacked rapid sand filters in the basement ([Adelman et al., 2013](https://ascelibrary.org/doi/10.1061/%28ASCE%29EE.1943-7870.0000700)) and flows down to the ram pump.
The ram pump then pumps the treated water upwards to the chemical stock tanks. Image from [Martinez et. al, 2016](https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view?usp=sharing).

</p>


The ACVRP was an innovation that improves upon the conventional ram pump by making it easier to fabricate and more cost efficient. Conventional ram pumps that were used in previous AguaClara plants required an additional tank to be built to collect the water discharged from the ram pump and return it to the distribution tank, adding to the capital cost of the plant. The tank was cumbersome, and it was difficult to incorporate the tank in the pipe gallery at the basement of the plant ([Project Description Ram Pump](https://docs.google.com/document/d/1g4uX_CjjWllurb4KftwjLmaFy6Au-42kGi5e5m47YEI/edit#)).

The ACVRP was an inline ram pump, which eliminated the need for a collection tank. The ideal design would be able to be easily installed in new plants as well as incorporated in previously built AguaClara plants. The simple design would also make it easy to fabricate and repair, which would empower the community and advance sustainability. The vision was that the ACVRP will relieve some of the burden of the plant operators, which would further increase their pride in their role of providing safe water to their communities ([Project Description Ram Pump](https://docs.google.com/document/d/1g4uX_CjjWllurb4KftwjLmaFy6Au-42kGi5e5m47YEI/edit#)).

## Literature Review
Many water supply plants used electrically-powered ram pumps to redirect water from a lower to higher elevation (Figure 2).

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/rampumpelements.PNG?raw=True" height=300>
</p>
<p align="center">


**Figure 2:** Common ram pump systems include “(a) the header tank, (b) the drive pipe, (c) the pump with impulse and delivery valves, (d) the air chamber and (e) the delivery pipe” ([Young, 1995](https://doi.org/10.1243/PIME_PROC_1995_209_010_01)).

In conventional ram pump systems, the header tank (a) was placed higher than the ram pump in order to provide potential energy to power the pump. Realistically, as the water was directed down from the header tank to the pump (c) through the drive pipe (b), it experienced considerable head losses. This driving head was directed through the inlet valve of the pump and was expelled through the waste valve (c) until the velocity of the water provides enough force to shut the waste valve. Once the waste valve was shut, the water was redirected and stored into the air chamber (d) that was charged with air. The air pressure inside this chamber pushed the water up through the delivery pipe (e).

In the context of AguaClara plants, conventional ram pumps required tanks to be built around the waste water valve to guide the expelled water into the distribution system. This installment was more costly and highly inconvenient for the existing AguaClara plants due to the spatial constraints. In order to reduce such inefficiencies, our team redesigned the system and incorporated a vertical component to the pump to create the ACVRP.

The ACVRP aligned the head tank, the drive pipe, the pump, and the waste valve along one vertical axis. The vertical configuration required minimum space and eliminated the need for a tank around the waste valve because the water was expelled downwards into the distribution system. As opposed to conventional ramp pumps, this condensed design allows for easier installation into existing plants as it was more compact and versatile and also reduced labor in transporting treated water to the chemical stock tank.

The previous teams had adopted many of the elements of a conventional ram pump system and had been modifying this mechanism to satisfy the team’s gravity-powered water filtration design. The current AguaClara ram pump design consisted of a plate attached to a rod loaded with a spring that opens and closes. The naturally open state of the plate allowed for the water that flowed down through the drive pipe to pass by the effluent pipe and goes into waste. When enough force from the water flowing through the drive pipe overcame the spring force and the plate closed, the water was redirected up through the effluent pipe. Constantly alternating between these two states, open and closed, which allowed for the water to be pumped up (Figure 3).

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/valve_cycle.png?raw=True" height=300>
</p>
<p align="center">

**Figure 3:** This was a diagram of valve cycle from [Aggarwal et al., 2017](https://drive.google.com/file/d/1oVIHr27h-mA25sROwWSHHzI-v0FXReoA/view). When the valve was open, the driving force of falling water pushed the valve closed. When the valve was closed, the spring force pushed the valve to open again.

</p>


Previous teams worked on creating a mathematical model to calculate the necessary forces to open and close the check valve, which is a one-way valve that allowed the water to flow in only one direction. These forces dictated whether water entering the drive pipe exited at the bottom as waste or if it was driven through the effluent pipe. Once these forces were calculated, they could be used to design a toggle mechanism to open and close the check valve at optimal times that will maximize the efficiency of the pump. The current mechanism used for such movement was a spring. Thus, by finding a spring with an ideal spring constant, a more efficient ram pump could be designed.

The main concern regarding the ACVRP was prolonging the time that the plate was closed to allow a higher volume of water to travel up through the effluent valve. The Spring 2018 team worked on optimizing the output of water through the effluent pump by experimenting with springs that controlled the opening and closing of the plate. The energy efficiency of the ram pump was tested with a pulley system designed to calculate the minimum spring constant for the spring inside the pump. The current team was continuing the data collection of the force of water on the plate using a modified version of the pulley system from Fall 2018 to find the most efficient spring constant. In the past, the spring force had either been too large that it overcame the downward force from the water in the driving pipe too quickly, or too weak that the plate closed up too quickly. Therefore, by obtaining the optimal spring constant, the time that the plate was closed can be maximized, meaning the more water could be pumped through the effluent line. Thus, an optimal cycle which pumped water through the effluent for a maximum amount of time consistently could be obtained.

### Lab Setup

A lab apparatus was constructed to simulate conditions in an AguaClara plant (Figure 4). The electric sump pump, highlighted in red in Figure 4, provides a continuous source of water for the head tank. It also provides a constant water level because the water that is going through the overflow funnel is pumped up again by the electric pump. The drive pipe is where water with elevation head enters the ram pump, providing the driving energy needed for the ram pump to pump water up through the effluent valve. A pressure sensor located at the top of the sealed air chamber indicates the water pressure that exits the valve, which indicates the efficiency of the ram pump. This pressure can then be converted to an elevation head to see how high the effluent can be pumped to. Water that exits the ram pump as "waste" is the treated water that flow into the tank which contains the ramp pump. And Finally, it would be returned to the distribution tank (the tank which contains the electric pump).

<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ram%20pump%20setup.jpeg" height=400>

  **Figure 4:** Schematic of ram pump lab setup from [Galantino et al., 2016](https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view).

</p>
<p align="center">


The ram pump itself is composed of two metal check valves that are connected by a metal fitting. The upper check valve receives the influent flow from the head tank and allows the flow to exit through an effluent pipe. The bottom pipe is only for “waste” water. In the interior of the ram pump, there is a plate that connects with a threaded metal rod. The rod fits into the two valves allowing only two positions for the plate (open and close). If the force of the water was not able to shrink the spring, the valve would remain open and “waste” water can flow to exit the system. When the water force was higher than the one produced by the spring, the valve would be closed and water would be pumped up through the effluent pipe.

<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/Ram%20pump%20structure.png?raw=True" height=400>

  **Figure 5:** The internal components of the ACVRP includes two check valves, a rod, and a plate. More details are included below in the Fabrication and Methods section.

</p>
<p align="center">



### Water Velocity in Drive Pipe

The opening and closing of the check valve should be timed precisely so that the maximum amount of water is pumped in each cycle, maximizing the area under the curve in the graph below (Figure 5). Previous research found that under ideal conditions, the "terminal velocity of water in the drive pipe was 0.35 m/s" ([Aggarwal et al., 2017](https://drive.google.com/file/d/1oVIHr27h-mA25sROwWSHHzI-v0FXReoA/view)). Thus, using this benchmark, the target maximum velocity to trigger the valve to close should be less than the terminal velocity because the water accelerates towards terminal velocity asymptotically. An arbitrary velocity of 1/2 the terminal velocity was chosen as the target ([Aggarwal et al., 2017](https://drive.google.com/file/d/1oVIHr27h-mA25sROwWSHHzI-v0FXReoA/view)).

<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ideal%20Velocity%20graph.png" height=400>
</p>
<p align="center">

**Figure 5:** The graph of ideal velocity cycle and time shows the volume of water pumped over time ([McCann et. al, 2018](https://github.com/AguaClara/ram_pump/blob/master/Spring%202018/FinalFabricationManualRamPump.md#figure-6-equation-for-verminal-velocity-from-which-the-team-extracted-a-constant-for-head-loss)). The red line shows the increasing velocity of the water in the drive pipe until it reaches its terminal velocity. The intersection of the red and blue lines indicate the point in time when the check valve closes, causing the water to decelerate rapidly.

</p>



### Force Analysis

The main forces to design for are: 1) the force to close the check valve and 2) the force to open the check valve.

The force to close the check valve is supplied by the force of the falling water in the drive pipe. The force to open the check valve is supplied by a spring. The spring force must be greater than the combined downward forces of the weight of the water in the drive pipe and the weight of the check valve plate.

The formula for spring force is given by:

$$F = -kx$$

where k is the spring constant, a material property of the spring, and x is the compression/elongation displacement of the spring. To find this x, the distance that the spring was compressed when the valve is closed, the Fall 2018 team measured the distance the plate moved. They found this to be 1.3 cm ([Storch and Snyder, 2018](https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md)).


### Finding Forces Empirically

The Fall 2018 team ran experiments to find the force that the moving water in the drive pipe exerted on the plate when it was open ([Storch and Snyder, 2018](https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md)). The team implemented a pulley system to find the force empirically. Since the valve has a unique geometry, the team found that it was easier to find the force through experimentation, and so the team threaded a string through the drive pipe and a pulley system as shown in figure 6. One end of the string was attached to the metal plate in the valve, while the other end was attached to a water bottle suspended in air on the other end of the pulley as a counterweight. The bottle was filled with water initially to keep the plate opened with the pump running, and after that, the water in the bottle was emptied gradually until the plate was not longer held opened. Since the point that the team would like to obtain was right before the plate was closed, the team then used a pipette to gradually add water back until the plate was held opened again. The weight of the bottle at this point was taken, and a simple force balance was applied to find the force:  
$$F_{water}+W_{rod}=W_{bottle}$$
$$F_{water}=W_{bottle}-W_{rod}$$

where:

- $W_{rod}$ is the weight of the plate and rod in water
- $W_{bottle}$ is the weight of the bottle, which is used to experimentally determine the force required to lift and open the check valve.
- T is the tension force of the pulley string
- $F_{water}$ is the force of falling water in the drive pipe


<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/Screen%20Shot%202018-11-27%20at%205.30.14%20PM.png" height=400>
</p>
<p align="center">

**Figure 6:** Free body diagram of forces acting on the check valve in the ram pump from [Storch and Snyder, 2018](https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md).

Thus, by finding the mass needed to keep the check valve open, $F_{water}$ can be solved for. This can be set equal to the spring force, $F = -kx$, which will allow the spring constant, k, to be solved for. This will give the optimal spring constant needed to keep the valve open. The Fall 2018 team found that the minimum spring constant (k) was 256 N/m.


# Manual


## Fabrication Details
The ACVRP was fabricated using the following materials:
- Metal plate with diameter of
- Two check valves of 1" pipe size
- Threaded rod of length
- Spring of chosen length and k constant
- Two stoppers of hexagon

The OnShape design for the components of the ACVRP can be found here:
- [Metal Plate and Rod](https://cad.onshape.com/documents/4e73b2e01f40050da6dc53e5/w/505d309a289216ef94331ebd/e/9bef45d7eddc1444e77d6a46)
- [Check Valves](https://cad.onshape.com/documents/9268b604d6ced6c7f52b783c/w/49e0393fad2ca8fed995e1f5/e/83d112abae6ce4cc4505adeb)

## Methods
### Experimental Apparatus
Figure 4 details the current experimental apparatus, which is the same setup from [Galantino et al., 2016](https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view).

### Procedure

Prior to running the ram pump, the air chamber was pressurized to 6 m of head in order to simulate the elevation head at which the ram pump would be required to pump water in an AguaClara plant. In order to pressurize the air chamber:

1. Connect tubing from the peristaltic pump to the top of the air chamber.
2. Open ProCoDA, and go to Graphs. In the "data to plot" section on the right, select the Air Chamber pressure sensor.
3. Turn on the peristaltic pump. Run the pump, allowing it to pump air into the air chamber.
4. Observe the pressure in the air chamber using the graph generated by ProCoDA. When the pressure reaches 600 cm, turn off the peristaltic pump. Immediately seal the system by inserting a plug into the push-to-connect on the end of the peristaltic pump tubing.
5. The pressure should remain relatively constant at 600 cm. If the pressure is decreasing rapidly, check that all connections are airtight.

Pressure data was collected at two locations: the waste valve and the top of the air chamber. In order to track pressure data:
1. Zero the pressure sensors at atmospheric pressure before running experiments.
2. Measure the initial height of water in the air chamber.
3. Start a datalog file, writing text comments to indicate experiment start and end.
3. Run the ACVRP system as detailed below.

The steps for running the ACVRP system are as follows:
1. Fill the bucket containing the ram pump with water until both buckets (one containing the electric sump pump, one containing the ram pump) are full.
2. Open all ball valves. There are 3 valves in total: one in the pipe connecting the two buckets, one at the bottom of the ram pump, and one on the overflow pipe from the head tank.
2. On ProCoDA, go to the Process Operation tab and turn on the sump pump by changing the Operator Selected State to `Pump On`
3. Throttle the flow of water being pumped into the head tank by closing the valve slightly. **The electric sump pump should be submerged in water at all times.**
4. Once the water level in the head tank reaches the the line (marked on the head tank at a height of 16 cm), water will begin to flow out of the overflow pipe and return to the bucket with the sump pump.

### Experimental Methods

The Spring 2019 team followed a similar procedure to the Fall 2018 team to experimentally determine the force required to open the check valve (see Figure 6 for details) ([Storch and Snyder, 2018](https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md)).
1. Attach the end of the string hanging from the drive pipe to the hook located on the plate within the check valve of the ACVRP. (insert picture)
2. Screw on the ram pump to the drive pipe. Open the ball valve at the bottom of the ram pump.
3. Turn on the electric sump pump, following the procedure from above. When the water in the head tank reaches the line, begin running experiments.
4. Measure the initial mass of the empty bottle.
5. Attach the empty bottle to the free end of the string.
6. Gradually add water and other weights, if necessary, to the bottle until the check valve opens, allowing water to flow out of the waste valve.
7. Remove the bottle from the string, and measure the mass of the contents of the bottle.

#### Observing Pressure Cycles
The change in pressure for each cycle was observed by manually opening and closing the check valve. The pressure at the waste valve and the air chamber was recorded.  

1. Record the initial height of water in the air chamber to calculate the initial volume of air. Pressurize the air chamber to 600 cm, and run the ram pump as detailed above.
2. Use ProCoDA to track pressure changes as detailed above.
3. Pull on the string to open the valve for a few seconds.
4. Release the string to close the valve for a few seconds.
5. Graph the data using the Python code detailed below in the Results and Analysis section.

## Results and Analysis
Present an observation (results), then explain what happened (analysis).  Each paragraph should focus on one aspect of your results. In that same paragraph, you should interpret that result.  
In other words, there should not be two distinct paragraphs, but instead one paragraph containing one result and the interpretation and analysis of this result. Here are some guiding questions for results and analysis:

The pressure cycles were analyzed to determine the volume of water pumped during each cycle. The ideal gas law was used to calculate the change in volume of air with each pressure cycle. As the ram pump pumps water at its effluent to the air chamber, the air in it is compressed. Thus, the change in air volume is equal to the change in water volume that is pumped into the air chamber. The ideal gas law can be rearranged as follows:

$$ PV = nRT $$
$$ \Delta V = \frac{nRT}{\Delta P} $$

where:
- $\Delta V:$ the change in air volume (equal to the change in water volume)
- $n$: the initial number of moles of air in the air chamber, calculated using the initial air volume in the air chamber. Then, using $density = mass/volume$, the mass of the air can be found and converted to moles.
- $R:$ the universal gas constant, 8.314 J/(mol*K)
- $T:$ standard air temperature, 293 K
- $\Delta P$: change in pressure in the air chamber during each cycle (opening and closing the valve once), measured experimentally

The following Python code graphs the pressure data to obtain the graphs below (Figures 8, 9, & 10):

```python
import aguaclara.research.procoda_parser as pp
import matplotlib.pyplot as plt
import numpy as np
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-7-19_manual_operationwith650Pi.xls'
pp.notes(url)
start = 40683 #should be more than 'start'
end = 62529 #should be less than 'stop'

x = (pp.ftime(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

plt.clf()
plt.plot(x,pressure,'-', label = 'Waste Valve')
plt.plot(x,airchamber,'-', label='Air Chamber')
plt.xlabel('Time')
plt.ylabel('Pressure (cm)')
plt.legend()
#plt.show()

plt.savefig('pressure_trace_initialpressure1.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)
```

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/pressure_trace_initialpressure1.jpg?raw=True" height=400>
</p>
<p align="center">

**Figure 8:** The pressure was recorded as the valve was manually opened and closed using the pulley system (Trial 1).

```python
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-7-19_manual_operationwith650Pitrial2.xls'
pp.notes(url)
start = 4454 #should be more than 'start'
end = 22416 #should be less than 'stop'

x = (pp.ftime(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

plt.clf()
plt.plot(x,pressure,'-', label = 'Waste Valve')
plt.plot(x,airchamber,'-', label='Air Chamber')
plt.xlabel('Time')
plt.ylabel('Pressure (cm)')
plt.legend()
#plt.show()
plt.savefig('pressure_trace_initialpressure2.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)

```

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/pressure_trace_initialpressure2.jpg?raw=True" height=400>
</p>
<p align="center">

**Figure 9:** The pressure was recorded as the valve was manually opened and closed using the pulley system (Trial 2).

The air pressure in the air chamber increased with each cycle, as more water was pumped into the air chamber, compressing the air.

The following Python code graphs the pressure of the waste valve and air chamber at one cycle, so that the pressure difference in the air chamber can be observed, which can be used to calculate the volume of water that the ram pump pumps during each cycle:

```python
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-7-19_manual_operationwith650Pitrial2.xls'
pp.notes(url)
start = 7000 #should be more than 'start'
end = 10000 #should be less than 'stop'

x = (pp.ftime(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

plt.clf()
plt.plot(x,pressure,'-', label = 'Waste Valve')
plt.plot(x,airchamber,'-', label='Air Chamber')
plt.xlabel('Time')
plt.ylabel('Pressure (cm)')
plt.legend()
#plt.show()

plt.savefig('one_cycle.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)

```
<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/one_cycle.jpg?raw=True" height=400>
</p>
<p align="center">

**Figure 10:** The pressure of the air chamber was observed as the valve was opened and closed. The pressure difference was then used to calculate the volume of water pumped by the ram pump.

Based on the one cycle observed in Figure 10, the difference in pressure was 16.4 centimeters. Using the ideal gas law, the volume of water pumped during each cycle was calculated:

```Python

import aguaclara.core.physchem as pc
import aguaclara.core.constants as c

#find volume of air using ideal gas law
#deltaV = nRT/deltaP

#pressure difference, deltaP (measured as difference in pressure in air chamber)
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-7-19_manual_operationwith650Pitrial2.xls'

start = 7000 #should be more than 'start'
end = 10000 #should be less than 'stop'

airchamber = pp.column_of_data(url, start, 2, end, 'cm')

head = airchamber[-1]-airchamber[0]

#n, initial number of moles of air
diam = 1*u.inch
height_water = 1.5 * u.inch #initial height of water in air chamber
vol_water = (pc.area_circle(diam)*height_water).to(u.m**3) #initial volume of water in air chamber
height_ac = 26.5*u.inch #height of air chamber
vol_airchamber = (pc.area_circle(diam)*height_ac).to(u.m**3)

init_vol = vol_airchamber - vol_water #initial volume of air in air chamber
mass = (c.AIR_DENSITY*init_vol).to(u.kg)
mol_mass = 28.97*u.g/u.mol

n = (mass/mol_mass).to(u.mol)

#gas constant
R = 8.314 * u.J/(u.mol*u.K)

#standard temp
T = 293*u.K

#convert head to pressure
deltaP = pc.density_water(T)*c.GRAVITY*head

#calculate change in volume of air, which is equal to the volume of water pumped
deltaV = (n*R*T)/(deltaP).to(u.Pa)

```
*There is an error in this code, so we were unable to calculate the volume of water pumped at the moment, but we will get this fixed soon.*

Thus, the volume of water pumped in each cycle was ???

### Force Analysis

The force required to open the valve was calculated using the following Python code, based on the equations detailed in Figure 6:

```Python
from aguaclara.core.units import unit_registry as u
import numpy as np
import aguaclara.core.physchem as pc
import aguaclara.core.constants as c

#Weight of content in the bottle at the instance that the plate opens
#force to just open the plate= 1261.5, 1277.9, 1262.5, 1254.2, 1269.4]); #in grams
#Filling the water bottle until the plate opens, and then transfer the water in the bottle to another empty beaker until the plate closes

#Mass of contents in bottle: 743.2 g
#Mass of contents in beaker: 639.5 - 71.12 g = 568.38 g
#Plate open content: 568.38 g + 743.2 = 1311.58 g
#Mass of plate + rod + hook = 105.9 g

#Weight of bottle = tension
#Tension = Weight of water + Weight of Rod
#Force of water = Weight of Bottle -Weight of rod

G=c.GRAVITY
mass_rod = 105.9*u.g
w_rod = (mass_rod*G).to(u.N)
print('The weight of the rod is '+ str(w_rod))

p_open = 1311.58*u.g
F_open = (G*p_open).to(u.N) #F in Newtons
print('The weight of the contents of the bottle is ' + str(F_open))

F_water=(F_open-w_rod).to(u.N)
print('The force required to open the valve is ' + str(F_water))
```

The force required to open the valve is 11.82 newtons. Using this, the required spring force can be calculated.


## Conclusions

From extensive data collection and analysis, the team calculated that the force required to open the valve was 11.82 N; this force was determined by a force analysis of water being added to the bottle until the valve opened. With this calculation, the team was able to determine the ideal spring constant using Hooke's Law (F=kx). The use of the ideal spring increased the amount of water driven up through the effluent pipe.

## Future Work

Over the span of Spring 2019, the team was able to experimentally and theoretically calculate the force of the water on the plate. With this data, we were able to calculate the most effective spring constant, but there were still other variables to be accounted for to optimize the efficiency of the system.

In other words, although the team collected relevant data concerning the force of water on the plate of the drive pipe, the experimental values were prone to inaccuracy because several components in the current experimental ram pump setup were rusted. The rusting of the pump pieces most probably played a significant role in skewing the weight measurements.

In order to prevent such skewed data, the team recommended the fabrication of another experimental ram pump. Not only would the remodeling account for inaccurate measurements but also it should allowed for easier interchanging of parts in between testing. The Spring 2019 team found that the orientation of the pipes between head tank and collection buckets were rigid and not interchangeable, making the set up difficult to make adjustments.

Further research in the reduction of headloss by varying the ratio between the diameter of the drive pipe and the diameter of the effluent pipe had yet to be explored. Optimizing this ratio between the diameters of the two pipes would help improve the efficiency of the ram pump.

Regarding long-term goals, the team planned to test ram pump prototype in Ithaca water treatment plant before extending the ACVRP design to existing AguaClara plants.



## Bibliography
Adelman, M. J., Weber-Shirk, M. L., Will, J. C., Cordero, A. N., Maher, W. J., Lion, L. W. (2013). "[Novel Fluidic Control System for Stacked Rapid Sand Filters](https://ascelibrary.org/doi/10.1061/%28ASCE%29EE.1943-7870.0000700).” Journal of Environmental Engineering 139 (7)939-946.

Aggarwal, P. & Guzman, J. (2016). Ram Pump, Spring 2016. Retrieved from https://confluence.cornell.edu/download/attachments/152026512/Ram%20Pump%20Final%20Report.pdf?version=1&modificationDate=1481833262000&api=v2.

bin Mohammad Ali, M. D., bin Che Azih, M. K. bin Ali, M. B., bin Jasni, M. F., bin Zarmani, M.F. (2011). Hydraulic Ramp Pump (Hydram). Retrieved from www.scribd.com/doc/76535229/Hydraulic-Ramp-Pump-Hydram.

Galantino, C., Paternain Martinez, J., Oiwa, L. (2016). Ram Pump, Fall 2016. Retrieved from https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view.

McCann, M., Lopez, W., Lopez, S. (Spring 2018). Ram Pump Operation and Testing Manual. Retrieved from https://github.com/AguaClara/ram_pump/blob/master/Spring%202018/FinalFabricationManualRamPump.md.

Storch, A., Snyder, M. (Fall 2018). Ram Pump, Fall 2018. Retrieved from https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md.

Young, B. W. (1995). Design of Hydraulic Ram Pump Systems. Proceedings of the Institution of Mechanical Engineers, Part A: Journal of Power and Energy, 209(4), 313–322. Retreived from https://doi.org/10.1243/PIME_PROC_1995_209_010_01.

```python
# To convert the document from markdown to pdf
pandoc Name_of_this_file.md -o TeamName_Research_Report.pdf
```
