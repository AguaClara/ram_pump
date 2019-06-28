# Ram Pump, Spring 2019
#### Ching Pang, Cheer Tsang, Alyssa Ju, Iñigo Cabrera
#### May 10, 2019

## Abstract
The AguaClara Vertical Ram Pump (ACVRP) is an innovation that will enable water to be pumped from lower elevations to higher elevations using the driving force of falling water. The ACVRP improves on a conventional ram pump design by increasing its space efficiency and decreasing its capital cost. Although a prototype had been built, it did not reach its target pumping efficiency. The goal of this semester was to optimize the ram pump efficiency by finding the necessary forces to open and close the valve at the ideal times.

## Introduction

The purpose of a hydraulic ram pump is to pump water from a lower elevation to a higher elevation using only the energy of the falling water to drive the water up ([bin Mohammad Ali, 2011](https://www.scribd.com/doc/76535229/Hydraulic-Ramp-Pump-Hydram)). In an AguaClara plant, flow through a plant is driven solely by gravity, so treated water exits the plant at the lowest point of the plant. Thus, in order to fill chemical stock tanks with treated water, operators must carry up buckets of water from the outlet at the lowest point of the plant to manually fill tanks. The AguaClara Vertical Ram Pump (ACVRP) solves this issue by allowing treated water to be pumped from the outlet of the plant to higher elevations where it is needed, all without using electricity ([Martinez et. al, 2016](https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view?usp=sharing)). In addition, this allows the treated water to be pumped for utilization in the plant's plumbing system, which includes the plant's sinks and toilets.

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/AC_plant.png?raw=True" height=300>
</p>
<p align="center">

**Figure 1:** The treated water exits the stacked rapid sand filters in the basement ([Adelman et al., 2013](https://ascelibrary.org/doi/10.1061/%28ASCE%29EE.1943-7870.0000700)) and flows down to the ram pump.
The ram pump then pumps the treated water upwards to the chemical stock tanks. Image from [Martinez et. al, 2016](https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view?usp=sharing).

</p>


The ACVRP is an innovation that improves upon the conventional ram pump by making fabrication easier and more cost efficient. Conventional ram pumps that were used in previous AguaClara plants required an additional collection tank for the water discharged from the ram pump and return it to the distribution tank, adding to the capital cost of the plant. The tank was cumbersome, and it was difficult to incorporate the tank in the pipe gallery at the basement of the plant ([Project Description Ram Pump](https://docs.google.com/document/d/1g4uX_CjjWllurb4KftwjLmaFy6Au-42kGi5e5m47YEI/edit#)).

The ACVRP is an inline ram pump, which eliminates the need for a collection tank. The ideal design would be able to be easily installed in new plants as well as incorporated in previously built AguaClara plants. The simple design would also make it easy to fabricate and repair, which would empower communities and advance sustainability. The vision is that the ACVRP will relieve some of the burden of the plant operators, which would further increase their pride in their role of providing safe water to their communities ([Project Description Ram Pump](https://docs.google.com/document/d/1g4uX_CjjWllurb4KftwjLmaFy6Au-42kGi5e5m47YEI/edit#)).

## Literature Review
Many water supply plants use horizontal ram pumps to redirect water from a lower to higher elevation (Figure 2).

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/rampumpelements.PNG?raw=True" height=300>
</p>
<p align="center">


**Figure 2:** Common ram pump systems include “(a) the head tank, (b) the drive pipe, (c) the pump with impulse and delivery valves, (d) the air chamber and (e) the delivery pipe” ([Young, 1995](https://doi.org/10.1243/PIME_PROC_1995_209_010_01)).

 In conventional ram pump systems (Figure 2), the head tank (a) is placed higher than the ram pump in order to provide potential energy to power the pump. As the water is directed down from the head tank to the pump (c) through the drive pipe (b), it experiences considerable major and minor losses. These losses are formed by shear frictional force and flow reduction, a result of water flowing from a pipe of larger diameter to that of a smaller diameter, respectively.

This driving head is directed through the inlet valve of the pump and is expelled through the waste valve (c) until the velocity of the water provides enough force to shut the waste valve. Once the waste valve is shut, the water is redirected and stored into the air chamber (d) that was charged with air. The air pressure inside this chamber pushes the water up through the delivery pipe (e).

In the context of AguaClara plants, conventional ram pumps required tanks to be built to enclose the waste water valve to guide the expelled water into the distribution system. This installment was more costly and highly inconvenient for existing AguaClara plants due to spatial constraints. In order to reduce such inefficiencies, our team redesigned the system, and incorporated a vertical component to the pump to create the ACVRP.

The ACVRP aligned the head tank, the drive pipe, the pump, and the waste valve along one vertical axis. The vertical configuration required minimum space and eliminated the need for a tank around the waste valve because water was expelled downwards into the distribution system. Unlike the conventional ramp pump design, this condensed design allowed for easier installation into existing plants as it was more compact and interchangeable, and also reduced labor by directly transporting treated water to the chemical stock tank.


The previous teams had adopted many of the elements of a conventional ram pump system and had been modifying this mechanism to satisfy the team’s gravity-powered water filtration design. The current AguaClara ram pump design consisted of a plate attached to a rod loaded with a spring that opens and closes. The naturally open state of the plate allowed for the water that flowed down through the drive pipe to pass by the effluent pipe and goes into waste; its acceleration created enough drag force to overcome the spring force and to close the plate. This closed state built high pressure in the region of the plate and the effluent valve, and as a result of this pressure difference, the water was redirected up through the effluent pipe. The headloss during this transfer of water through the effluent pipe decreased the velocity of water and the pressure, which allowed the spring force to overcome the water force and the plate to open. The difference in pressure due to constantly alternating between these two states, open and closed, allowed for the water to be pumped up (Figure 3).

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/valve_cycle.png?raw=True" height=300>
</p>
<p align="center">

**Figure 3:** This was a diagram of valve cycle from [Aggarwal et al., 2017](https://drive.google.com/file/d/1oVIHr27h-mA25sROwWSHHzI-v0FXReoA/view). When the valve was open, the driving force of falling water pushed the valve closed. When the valve was closed, the spring force pushed the valve to open again.

</p>


Previous teams worked on creating a mathematical model to calculate the necessary forces to open and close the check valve, which is a one-way valve that allowed the water to flow in only one direction. These forces dictated whether water entering the drive pipe exited at the bottom as waste or if it was driven through the effluent pipe. Once these forces were calculated, they were used to design a toggle mechanism to open and close the check valve at optimal times that maximized the efficiency of the pump. The current mechanism used for such movement was a spring. Thus, by finding a spring with an ideal spring constant, a more efficient ram pump could be designed.

The main concern regarding the ACVRP was prolonging the time that the plate was closed to allow a higher volume of water to travel up through the effluent valve. The Spring 2018 team worked on optimizing the output of water through the effluent pump by experimenting with springs that controlled the opening and closing of the plate. The energy efficiency of the ram pump was tested with a pulley system designed to calculate the minimum spring constant for the spring inside the pump. The current team continued the collecting data on the force of water on the plate using a modified version of the pulley system from Fall 2018 to find the most efficient spring constant. In the past, the spring force had either been too large that it overcame the downward force from the water in the driving pipe too quickly, or too weak that the plate closed up too quickly. Therefore, by obtaining the optimal spring constant, the time that the plate was closed can be maximized, meaning the more water could be pumped through the effluent line. Thus, an optimal cycle which pumped water through the effluent for a maximum amount of time consistently could be obtained.

### Lab Setup

A lab apparatus was constructed to simulate conditions in an AguaClara plant (Figure 4). The electric sump pump, highlighted in red in Figure 4, provided a continuous source of water for the head tank. It also provided a constant water level, because the water that went through the overflow funnel was pumped up again by the electric pump. The drive pipe was where water with elevation head entered the ram pump, providing the driving energy needed for the ram pump to pump water up through the effluent valve. A pressure sensor located at the top of the sealed air chamber  measures the water pressure that exited the valve, which indicated the efficiency of the ram pump. This pressure was then converted to an elevation head to see how high the effluent could be pumped. Water that exited as "waste" at the bottom of the ram pump was the treated water that flowed into the bucket containing the ram pump. The water was then returned to the distribution tank (the tank which containing the electric sump pump).

<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ram%20pump%20setup.jpeg" height=400>

  **Figure 4:** Schematic of ram pump lab setup from [Galantino et al., 2016](https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view).

</p>
<p align="center">


The ram pump itself comprised of two metal check valves that were connected by a metal fitting. The upper check valve received the influent flow from the head tank and allowed the flow to exit through an effluent pipe. The bottom pipe was  allowed for the “waste” water to flow out. In the interior of the ram pump, there was a plate that connects with a threaded metal rod. The rod with stoppers was fitted into the two valves, allowing only two positions for the plate (open and close). If the force of the water was not able to compress the spring, the valve would remain open and “waste” water flowed out of the bottom of the ram pump. When the water force was higher than the spring force, the valve would be closed and water would be pumped up through the effluent pipe.

<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/Ram%20pump%20structure.png?raw=True" height=400>

  **Figure 5:** The internal components of the ACVRP included two check valves, a rod, and a plate. More details are included below in the Fabrication and Methods section. The rod assembly on the left is contained in the two check valves.

</p>
<p align="center">



### Water Velocity in Drive Pipe

The opening and closing of the check valve should be timed precisely so that the maximum amount of water is pumped in each cycle, maximizing the area under the curve in the graph below (Figure 5). Previous research found that under ideal conditions, the terminal velocity of water in the drive pipe was 0.35 m/s ([Aggarwal et al., 2017](https://drive.google.com/file/d/1oVIHr27h-mA25sROwWSHHzI-v0FXReoA/view)). Thus, using this benchmark, the target maximum velocity to trigger the valve to close should be less than the terminal velocity because the water accelerated towards terminal velocity asymptotically. An arbitrary velocity of 1/2 the terminal velocity was chosen as the target ([Aggarwal et al., 2017](https://drive.google.com/file/d/1oVIHr27h-mA25sROwWSHHzI-v0FXReoA/view)).

<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202018/Pictures/Ideal%20Velocity%20graph.png" height=400>
</p>
<p align="center">

**Figure 6:** The graph of ideal velocity cycle and time shows the volume of water pumped over time ([McCann et. al, 2018](https://github.com/AguaClara/ram_pump/blob/master/Spring%202018/FinalFabricationManualRamPump.md#figure-6-equation-for-verminal-velocity-from-which-the-team-extracted-a-constant-for-head-loss)). The red line shows the increasing velocity of the water in the drive pipe until it reaches its terminal velocity. The intersection of the red and blue lines indicate the point in time when the check valve closes, causing the water to decelerate rapidly.

</p>



### Force Analysis

The main forces to design for were: 1) the force to close the check valve and 2) the force to open the check valve.

The force to close the check valve was supplied by the force of the falling water in the drive pipe. The force to open the check valve was supplied by a spring. The spring force must be greater than the combined downward forces of the weight of the water in the drive pipe and the weight of the check valve plate.

The formula for spring force was given by:

$$F = -kx$$

where k was the spring constant, a material property of the spring, and x was the compression/elongation displacement of the spring. To find this x, the distance that the spring was compressed when the valve is closed, the Fall 2018 team measured the distance the plate moved. They found this to be 1.3 cm ([Storch and Snyder, 2018](https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md)).


### Finding Forces Empirically

The Fall 2018 team ran experiments to find the force that the moving water in the drive pipe exerted on the plate when it was open ([Storch and Snyder, 2018](https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md)). The team implemented a pulley system to find the force empirically. Since the valve had a unique geometry, the team found that it was easier to find the force through experimentation, and so the team threaded a string through the drive pipe and a pulley system as shown in figure 7. One end of the string was attached to the metal plate in the valve, while the other end was attached to a water bottle suspended in air on the other end of the pulley as a counterweight. The bottle was filled with water initially to keep the plate opened with the pump running, and after that, the water in the bottle was emptied gradually until the plate was not longer held opened. Since the point that the team would like to obtain was right before the plate was closed, the team then used a pipette to gradually add water back until the plate was held opened again. The weight of the bottle at this point was taken, and a simple force balance was applied to find the force:  
$$F_{water}+W_{rod}=W_{bottle}$$
$$F_{water}=W_{bottle}-W_{rod}$$

where:

- $W_{rod}$ was the weight of the plate and rod in water
- $W_{bottle}$ was the weight of the bottle, which is used to experimentally determine the force required to lift and open the check valve.
- T was the tension force of the pulley string
- $F_{water}$ was the force of falling water in the drive pipe


<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Fall%202018/Pictures/Screen%20Shot%202018-11-27%20at%205.30.14%20PM.png" height=400>
</p>
<p align="center">

**Figure 7:** Free body diagram of forces acting on the check valve in the ram pump from [Storch and Snyder, 2018](https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md).

Thus, by finding the mass needed to keep the check valve open, $F_{water}$ could be solved for. This was set equal to the spring force, $F = -kx$, which would allow the spring constant, k, to be solved for. This would then give the optimal spring constant needed to keep the valve open. The Fall 2018 team found that the minimum spring constant (k) was 256 N/m.


# Manual


## Fabrication Details

The OnShape design for the components of the ACVRP can be found here:
- [Metal Plate and Rod](https://cad.onshape.com/documents/4e73b2e01f40050da6dc53e5/w/505d309a289216ef94331ebd/e/9bef45d7eddc1444e77d6a46)
- [Check Valves](https://cad.onshape.com/documents/9268b604d6ced6c7f52b783c/w/49e0393fad2ca8fed995e1f5/e/83d112abae6ce4cc4505adeb)
<p align="center">

  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/currentrampumpside.PNG?raw=True">

  **Figure 8:** The current design of ram pump consisted of two check valves and a metal rod.

</p>
<p align="center">

<p align="center">

  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/rampumpsp19designold_section.png?raw=True">

  **Figure 9:** The sectioned view of current design showed that the distance between plate opening and closing was limited by the position of the hex nuts on the rod and the stopper inside the check valves.

</p>
<p align="center">

**Table 1:** The ACVRP was fabricated using the following materials.

| Parts                  | Quantity | Dimension                        | Source                                                                                                               |
|:---------------------- |:-------- |:-------------------------------- |:-------------------------------------------------------------------------------------------------------------------- |
| Brass Check Valve      | 2        | 1" pipe size                     | Strataflo or [McMaster](https://www.mcmaster.com/7746k831)                                                           |
| Metal Plate            | 2        | 1" diameter                      | Detached from original check valve                                                                                                |
| Hex Nuts               | 2        | 3/8"-16 Thread Size, 1-1/8" Long | [McMaster](https://www.mcmaster.com/90264A213)                                                                       |
| Brass Jam Nuts         | 2        | 3/8"-16 Thread Size              | [McMaster](https://www.mcmaster.com/92174a031)                                                                       |
| Partially Threaded Rod | 1        | 3/8"-16 Thread Size, 8" Long     | [McMaster](https://www.mcmaster.com/98750a458) (Fully threaded but will be fabricated to partially threaded to 7.5") |
| Spring                 | 1        | Varied length and k constant     | Mcmaster                                                                                                             |
| Brass Nipple                       |   1       | Threaded on Both Ends, 1 NPT, 4" Long |   [McMaster](https://www.mcmaster.com/4568k226)                                                                                                                   |

## Methods
### Experimental Apparatus
Figure 4 detailed the current experimental apparatus, which was the same setup from [Galantino et al., 2016](https://drive.google.com/file/d/1MweG0bsgG2-wM_mkK_DgwULPSPK1G7iB/view).

### Procedure

Prior to running the ram pump, the air chamber was pressurized to 6 m of head in order to simulate the elevation head at which the ram pump would be required to pump water in an AguaClara plant. In order to pressurize the air chamber:

1. Connect tubing from the peristaltic pump to the top of the air chamber.
2. Open ProCoDA, and go to Graphs. In the "data to plot" section on the right, select the Air Chamber pressure sensor.
3. Turn on the peristaltic pump. Run the pump, allowing it to pump air into the air chamber.
4. Observe the pressure in the air chamber using the graph generated by ProCoDA. When the pressure reaches 600 cm, turn off the peristaltic pump. Immediately seal the system by inserting a plug into the push-to-connect on the end of the peristaltic pump tubing.
5. The pressure should remain relatively constant at 600 cm. If the pressure decreases rapidly, check that all connections are airtight.

Pressure data was collected at two locations: the waste valve and the top of the air chamber. In order to track pressure data:
1. Zero the pressure sensors at atmospheric pressure before running experiments.
2. Measure the initial height of water in the air chamber.
3. Start a datalog file, writing text comments to indicate experiment start and end.
3. Run the ACVRP system as detailed below.

The steps for running the ACVRP system are as follows:
1. Fill the bucket containing the ram pump with water until both buckets (one containing the electric sump pump, one containing the ram pump) are full.
2. Open all ball valves. There are 3 valves in total: one in the pipe connecting the two buckets, one at the bottom of the ram pump, and one on the overflow pipe from the head tank.
2. On ProCoDA, go to the Process Operation tab and turn on the sump pump by changing the Operator Selected State to `Pump On`
3. Throttle the flow of water being pumped into the head tank by closing the valve slightly.
4. Once the water level in the head tank reaches the the line (marked on the head tank at a height of 16 cm), water will begin to flow out of the overflow pipe and return to the bucket with the sump pump.

### Experimental Methods

The Spring 2019 team followed a similar procedure to the Fall 2018 team to experimentally determine the force required to open the check valve (see Figure 7 for details) ([Storch and Snyder, 2018](https://github.com/AguaClara/ram_pump/blob/master/Fall%202018/Manual.md)).
1. Attach the end of the string hanging from the drive pipe to the hook located on the plate within the check valve of the ACVRP. (insert picture)
2. Screw on the ram pump to the drive pipe. Open the ball valve at the bottom of the ram pump.
3. Turn on the electric sump pump, following the procedure from above. When the water in the head tank reaches the line, begin running experiments.
4. Measure the initial mass of the empty bottle.
5. Attach the empty bottle to the free end of the string.
6. Gradually add water and other weights, if necessary, to the bottle until the check valve opens, allowing water to flow out of the waste valve.
7. Remove the bottle from the string, and measure the mass of the contents of the bottle.

#### Measuring Flow Rate of Driving head

To calculate the terminal velocity of water right above the plate, flow rate was measured by collecting data on the volume of water discharged per second. While the ACVRP system was running and the ball valve at the bottom of the ram pump was closed, a measuring bucket was placed directly under the pump.

From the above state, the steps for measuring the flow rate are as follows:

1. Open the ball valve fully and start timer simultaneously.
2. Collect water in the bucket until it fills up approximately 4 L.
3. Close the ball valve quickly and stop the timer simultaneously.

Note that the ball valve must be quickly opened and closed all the way. Any gradual closing and opening of the valve will skew the measurement of flow rate. Also note that this method has a significant level of inaccuracy due to human error and errors of precision with the measuring instruments used. In order to account for this inaccuracy, it is crucial that the measurement is taken repeatedly to verify consistent results.

#### Observing Pressure Cycles
The change in pressure for each cycle was observed by manually opening and closing the check valve. The pressure at the waste valve and the air chamber was recorded.  

1. Record the initial height of water in the air chamber to calculate the initial volume of air. Pressurize the air chamber to 600 cm, and run the ram pump as detailed above.
2. Use ProCoDA to track pressure changes as detailed above.
3. Pull on the string to open the valve for a few seconds.
4. Release the string to close the valve for a few seconds.
5. Graph the data using the Python code detailed below in the Results and Analysis section.

## Results and Analysis

### Import Statements

Run these import statements before running any of the cells below:

```Python
import aguaclara.research.procoda_parser as pp
import matplotlib.pyplot as plt
import numpy as np
from aguaclara.core.units import unit_registry as u
import aguaclara.core.constants as c
import aguaclara.core.physchem as pc
import aguaclara.core.head_loss as hl
import aguaclara.core.materials as mats

```

### Calculating Terminal Velocity of Driving Head

The terminal velocity of the driving head of 2.2557 m/s was calculated by measuring the volume of water expelled at the waste valve in a given amount of time.

**Table 2:** Water in the drive pipe was expelled from the waste valve and collected into a bucket with volumetric measurements. The recorded initial time correlated with the manual opening of the ball valve right above the pump, and the final time correlated with the manual closing of the same valve. The time difference is listed below with respect to the volume of water expelled.

| Trial | Volume of Water Expelled (L) | Duration of Time (s) |
| ----- | ---------------------------- | -------------------- |
| 1     | 4.055                        | 3.98                 |
| 2     | 4.670                        | 4.68                 |
| 3     | 3.880                        | 3.93                 |
| 4     | 3.565                        | 3.60                 |
| 5     | 3.790                        | 3.83                 |

The average of the terminal velocity from these five trials was calculated by first calculating the average flow rate, $Q$ (L/s), and then dividing $Q$ by the cross sectional area of the drive pipe.

### Force Analysis

#### Force to Open Valve

Several trials were run to calculate the force required to lift the plate to open the check valve (Table 2), which is the minimum force that can be applied to keep the plate valve closed. The mass of the empty bottle was 114.7 g.

**Table 3:** Water and additional weights were added to the bottle at the end of the pulley until the combined weight was heavy enough to lift the plate in the check valve (opened valve). The mass of the total masses added to the empty bottle are detailed in the table below, and the resulting force ($F_{water}$) acting on the plate was calculated for each trial.

| Trial | Mass of Bottle Contents (g) | Force to Open Valve (N) |
|-------|-----------------------------|--------------------|
| 1     | 1261.5                      | 12.46              |
| 2     | 1277.9                      | 12.62              |
| 3     | 1262.5                      | 12.47              |
| 4     | 1254.2                      | 12.39              |
| 5     | 1269.4                      | 12.53              |

The force required to open the valve ($F_{water}$) was calculated using the following Python code, based on the equations detailed in Figure 6.

```Python
#Weight of content in the bottle at the instance that the plate opens
#force to just open the plate= 1261.5, 1277.9, 1262.5, 1254.2, 1269.4; #in grams
#Filling the water bottle until the plate opens, and then transfer the water in the bottle to another empty beaker until the plate closes

#Mass of plate + rod + hook = 105.9 g

#Weight of bottle = tension
#Tension = Weight of water + Weight of Rod
#Force of water = Weight of Bottle -Weight of rod

G=c.GRAVITY
mass_rod = 105.9*u.g
w_rod = (mass_rod*G).to(u.N)
print('The weight of the rod is '+ str(w_rod))

w_bottle = 114.7*u.g
contents = [1261.5, 1277.9, 1262.5, 1254.2, 1269.4]*u.g
tot_weight = []
#the mass of the empty bottle was added to the mass of the bottle contents because both contribute to total force acting up on the check valve plate

F_water = []

for i in range(0, (len(contents))):
  tot_weight.append((contents[i] + w_bottle)*G)
  F_water.append((tot_weight[i]-w_rod).to(u.N))
  print('The force of water is ' + str(F_water[i]))
```

The average force required to open the valve (minimum force that can be applied to keep the plate valve closed) is 12.49 newtons.

This calculated force was then verified by replicating the experiment:

**Table 4:** Water and additional weights were added to the bottle at the end of the pulley until the combined weight was heavy enough to lift the plate in the check valve (opened valve). The mass of the total masses added to the empty bottle are detailed in the table below, and the resulting force ($F_{water}$) acting on the plate was calculated for each trial.

| Trial | Mass of Bottle Contents (g) | Force to Open Valve (N) |
|-------|-----------------------------|--------------------|
| 1     | 1340.4                      | 13.24              |
| 2     | 1353.7                      | 13.37              |
| 3     | 1355.3                      | 13.37              |
| 4     | 1346.1                      | 13.30              |
| 5     | 1362.0                      | 13.45              |

The force required to open the valve ($F_{water}$) was calculated using the following Python code, based on the equations detailed in Figure 6.

```Python
G=c.GRAVITY
mass_rod = 105.9*u.g
w_rod = (mass_rod*G).to(u.N)
print('The weight of the rod is '+ str(w_rod))

w_bottle = 115.9*u.g
contents = [1340.4, 1353.7, 1353.7, 1346.1, 1362.0]*u.g
tot_weight = []
#the weight of the empty bottle was added to the weight of the bottle contents because both contribute to total force acting up on the check valve plate

F_water = []

for i in range(0, (len(contents))):
  tot_weight.append((contents[i] + w_bottle)*G)
  F_water.append((tot_weight[i]-w_rod).to(u.N))
  print('The force of water is ' + str(F_water[i]))
```

The average force required to open the valve, which is the minimum force that can be applied on the plate valve to keep it closed, is 13.35 newtons. This calculated force was similar to the average force calculated previously (12.49 N).

#### Force to Close Valve

In order to calculate the force required to close the valve, the drag force from the falling water, which is the maximum force that can be applied to keep the plate valva opened, experiments were run as described in the previous section. Water was slowly added to a container on the end of the pulley until the check valve opened and water flowed out of the waste valve of the ram pump. The mass of the container was measured to calculate the force required to open the valve as before. Then, with the check valve open, water was gradually removed from the container with a syringe until the valve closed again. An open container was used instead of a bottle to allow for easier removal of water. The mass of the container was then measured again. The mass was taken at the point at which the valve began to cycle (when the valve begin opening and closing by itself).  The mass was also taken at the point when the valve remained closed, but it was determined that the minimum force to close the valve depends on the mass of the container when the valve begins to cycle. The mass difference between the mass of the container when the valve opened and when the valve closed was then calculated to find the force required to close the valve:

$$\Delta m = m_{open} - m_{close}$$
$$F_{close} = (\Delta m - m_{rod})g$$

where:
- $\Delta m$: mass difference between the mass of the container when the valve opened and when the valve closed
- $m_{open}$: mass of container when plate was lifted and valve opened, allowing water to flow out of waste valve
- $m_{close}$: mass of container when plate was closed, allowing water to flow into effluent
- $F_{close}$: force required to close the valve
- $m_{rod}$: mass of plate and rod
- $g$: gravitational constant

Eight trials were run, but the results of several trials were discarded due to the plate detaching from the rod. The force required to close the valve was calculated using the Python code below:

```Python
m_open = [1309.5, 1314.5, 1254.7, 1276.3, 1236.3]*u.g
m_close = [755.0, 760.2, 741.8, 766, 707.1]*u.g

delta_m = (np.array(m_open)-np.array(m_close))*u.g

F_close = ((delta_m - mass_rod)*G).to(u.N)

for i in F_close:
  print('The minimum force to close the valve is ' + str(i))

avg_force = np.mean(F_close)
print('The average force to close the valve is ' + str(avg_force))

```
**Table 5:** The minimum force required to close the valve was calculated by the difference in mass between the mass when the valve opened and when the valve began to cycle.

| Trial | Mass to Open (g) | Mass for Valve to Cycle (g) | Force to Close Valve (N) |
|-------|------------------|-----------------------------|--------------------------|
| 1     | 1309.5           | 755.0                       | 4.399                    |
| 2     | 1314.5           | 760.2                       | 4.397                    |
| 3     | 1254.7           | 741.8                       | 3.991                    |
| 4     | 1276.3           | 766.0                       | 3.966                    |
| 5     | 1236.3           | 707.1                       | 4.151                    |

The average force to close the valve, which is the maximum force that can be applied to the plate valve to keep it opened, is 4.181 newtons.

### Calculating Spring Constants
Using the experimentally determined forces to open and close the valve, a range of ideal spring constants was determined. Hooke's Law was used to obtain the optimal spring constant from the force and compression length:

$$F = k \Delta x$$

The inconvenience of Hooke's Law is that it is dependent on the compression length $\Delta x$. To circumvent this issue, $k’$ was defined as an intrinsic material property of the spring dependent on the actual length of the spring rather than its compression length, such that Hooke's Law could be written as:

$$k' = kL$$

$$F = \frac{k'x}{L} $$

Using the above equation, equations were derived for the two states in the valve:

$$F_{closed} = \frac{k'x_{2}}{L} $$

$$F_{opened} = \frac{k'x_{1}}{L}$$Where:

- $F_{closed}$: force required to open the valve, which is the minimum force that can be applied to keep the plate valve closed
- $F_{opened}$: force required to close the valve, which is the maximum force that can be applied to keep the plate valve opened
- $x_{2}$: Compression length when the valve was closed
- $x_{1}$: Compression length when the valve was opened
- $k'$: Intrinsic material property of the spring that is defined by $L$ and $k$
- $L$: Length of the spring

Combining the last two equations, an equation for $k'$ in terms of the spring length, $L$ was derived:
$$Delta x = x_{2} - x_{1} $$
$$F_{closed} - F_{opened} = \frac{k'}{L}\Delta x $$

$$k' = (F_{closed} - F_{opened})\frac{L}{\Delta x} $$Where:

- $F_{closed} = 12.49$ $N$
- $F_{opened} = 4.181$ $N$
- $\Delta x = 1.2 $ cm (Compression length difference between open and closed states)

Using $k’$ allows us to modify the length of the spring to obtain the $k$ constant desired.

 <p align="center">
   <img src="https://github.com/AguaClara/ram_pump/blob/master/spring_constant.jpg?raw=True" height=400>
 </p>
 <p align="center">

**Figure 10:** Linear relationship between the length of the spring, $L$, and the intrinsic spring constant, $k'$.

The linear relationship between the length of the spring, $L$, and the intrinsic spring constant, $k'$ was defined by the following equation:

$$k' = 6.924 [N/cm] L [cm]  $$

In order to define a practical range of springs, the maximum length of spring that could fit into the rod was measured. The maximum distance between the bottom stopper and stopping part of the empty check valve is 6.4 cm, which represents the maximum length a spring could be without an initial compression. Table 6 shows possible options for different lengths of springs.

**Table 6:** Various springs of different lengths that satisfy the required $k$ constant for optimal performance of the ram pump.

| Spring | Spring length L (cm) | Intrinsic Spring constant k' (N) |
|-------|-----------------------------|--------------------|
| 1     | 3.0                      | 20.772            |
| 2     | 3.5                   | 24.234             |
| 3     | 4.0                     | 27.696             |
| 4     | 4.5                      | 31.158              |
| 5     | 5.0                    | 34.62             |
| 6     | 5.5                    | 38.082             |
| 7     | 6.0                    | 41.544             |
| 8     | 6.5                    | 45.006             |

### Theoretical Volume of Water Pumped per Cycle

In order to calculate the theoretical volume of water pumped per cycle, the deceleration rate of water in the drive pipe as the plate closes, $a$, was calculated using the difference between the static pressure in the drive pipe (when water is not flowing) and the pressure in the high pressure system (the pressure in the air chamber):

$$P_{air chamber} - \rho gh = p = \rho g \Delta h $$
where:
- $p$: the difference in pressure between the air chamber and the static pressure in the drive pipe
- $\Delta h$: the height difference between the water level in the head tank and the height that water will be pumped to

Using the relationship, $F=ma$ and $F = pA$, the following equation was derived for deceleration rate in the drive pipe when the plate closes:

$$pA = ma$$
$$\rho g \Delta h A = ma$$
$$a = \frac{\rho g \Delta h A}{m}$$

where:
- $A$: cross-sectional area of drive pipe
- $m$: mass of water in drive pipe

Using the density relationship, $\rho = \frac{m}{V}$, the deceleration expression can be rewritten as:
$$m = V \rho$$
$$a = \frac{g \Delta h A}{V} $$

where $V$ is the volume of water in the drive pipe.

In addition, $V=Ah$, where $A$ is the cross-sectional area of the drive pipe and $h$ is the height of the drive pipe. Thus:

$$a = \frac{g \Delta h}{h} $$

The deceleration rate, $a$, is defined as the change in velocity over the change in time:

$$a = \frac{dv}{dt} = \frac{v_f-v_o}{dt} = \frac{v_f}{\Delta t}$$

where:
- $v_f$: terminal velocity of water in drive pipe
- $v_o$: initial velocity of water ($v_o$ is zero in the head tank)
- $\Delta t$: time period in which water is being pumped into the air chamber (waste valve pressure exceeds air chamber pressure)

In order to find $\Delta t$, the time period during which water is being pumped into the air chamber, the two expressions for $a$ can be set equal to each other and solved for $\Delta t$:

$$a = \frac{g \Delta h}{h} = \frac{v_f}{\Delta t} $$

$$\Delta t = \frac{v_f h}{g \Delta h}$$

Using $\Delta t$, the volume of water pumped per each cycle of the ram pump can be calculated. The distance that water travels in the drive pipe is given by:

$$d = \bar v \Delta t$$

where $\bar v$ is the average velocity, equal to 0.5 times the terminal velocity: $\bar v = \frac{1}{2} v_f $. Since the volume of water pumped per cycle is given by $V_{cycle} = Ad$, by plugging in the equation for the distance, the following equation is obtained:

$$V_{cycle} = A*\frac{1}{2} v_f \Delta t$$

Then, plugging in the expression obtained for $\Delta t$ above:

$$V_{cycle} = A*\frac{1}{2} \frac{v_f^2 h}{g \Delta h}$$

The following Python code uses the equations derived above to calculate the theoretical volume of water pumped per cycle of the ram pump in its current setup:

```python
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-25-2019_shortsensor0.xls'
pp.notes(url)
start = 39416 #should be more than 'start'
end = 41600 #should be less than 'stop'
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

v_f = 2.26*u.m/u.s #terminal velocity, experimentally determined
area = pc.area_circle(.02372*u.m) #area of drive pipe

#height of the drive pipe
h = 1.74*u.m

#height difference between height we want to pump water and water level of head tank
h1 = 2.06*u.m #height from bottom of drive pipe to top of water level in head tank
h2 = airchamber[0] #around 600 cm, make sure you run airchamber from first cell
delta_h = (h2 - h1).to(u.m)

delta_t = (v_f*h)/(c.GRAVITY*delta_h)
print('The theoretical time period in which water is being pumped into the air chamber is ' + str(delta_t))

volume_theoretical = (0.5*area*v_f*delta_t).to(u.milliliter)

print('The theoretical amount of water pumped is: ' + str(volume_theoretical))
```

The theoretical time period in which water is being pumped into the air chamber is 0.09777 seconds. The theoretical amount of water pumped is 48.82 milliliters.

### Experimental Volume of Water Pumped per Cycle

The pressure cycles were analyzed to determine the volume of water pumped during each cycle. The ideal gas law was used to calculate the change in volume of air with each pressure cycle. As the ram pump pumps water at its effluent to the air chamber, the air in it is compressed. Thus, the change in air volume is equal to the change in water volume that is pumped into the air chamber. The ideal gas law can be rearranged as follows:

$$ PV = nRT $$
$$ \Delta V = nRT (\frac{1}{P_{final}}-\frac{1}{P_{initial}})$$

where:
- $\Delta V:$ the change in air volume (equal to the change in water volume)
- $n$: the initial number of moles of air in the air chamber, calculated using the initial air volume in the air chamber. Then, using $density = mass/volume$, the mass of the air can be found and converted to moles.
- $R:$ the universal gas constant, 8.314 J/(mol*K)
- $T:$ standard air temperature, 293 K
- $\Delta P$: change in pressure in the air chamber during each cycle (opening and closing the valve once), measured experimentally

The following Python code graphed the pressure data to obtain the graphs below (Figures 11, 12, & 13):

```python
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-25-2019_shortsensor0.xls'
pp.notes(url)
start = 39416 #should be more than 'start'
end = 68010 #should be less than 'stop'

x = (pp.column_of_time(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

plt.clf()
plt.plot(x,pressure,'-', label = 'Waste Valve')
plt.plot(x,airchamber,'-', label='Air Chamber')
plt.xlabel('Time (s)')
plt.ylabel('Pressure (cm)')
plt.legend()
plt.show()

#plt.savefig('pressure_trace_initialpressure0325_multcycle.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)
```

<p align="center">
  <img src="https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/Images_Diagrams/pressure_trace_initialpressure0325_multcycle.jpg" height=400>
</p>
<p align="center">

**Figure 11:** The pressure was recorded as the valve was manually opened and closed using the pulley system.

The air pressure in the air chamber increased with each cycle, as more water was pumped into the air chamber, compressing the air.

The following Python code graphs the pressure of the waste valve and air chamber at one cycle, so that the pressure difference in the air chamber can be observed, which can be used to calculate the volume of water that the ram pump pumps during each cycle:

```python
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-25-2019_shortsensor0.xls'
pp.notes(url)
start = 39416 #should be more than 'start'
end = 41600 #should be less than 'stop'

x = (pp.column_of_time(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

plt.clf()
plt.plot(x,pressure,'-', label = 'Waste Valve')
plt.plot(x,airchamber,'-', label='Air Chamber')
plt.xlabel('Time (s)')
plt.ylabel('Pressure (cm)')
plt.legend()
plt.show()
#plt.savefig('pressure_trace_initialpressure0325_onecycle.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)
```
<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/pressure_trace_initialpressure0325_onecycle.jpg?raw=True" height=400>
</p>
<p align="center">

**Figure 12:** The pressure of the air chamber was observed as the valve was opened and closed. The pressure difference was then used to calculate the volume of water pumped by the ram pump.

Based on the one cycle observed in Figure 12, the difference in pressure was 16.4 centimeters. Using the ideal gas law, the volume of water pumped during each cycle was calculated:

The following code shows a close-up of one cycle:


```python
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-25-2019_shortsensor0.xls'

#find volume of air using ideal gas law
#deltaV = nRT/deltaP
#pressure difference, deltaP (measured as difference in pressure in air chamber)

start2 = 40750 #should be more than 'start'
end2 = 40850 #should be less than 'stop'

x2 = (pp.column_of_time(url,start2,end2)).to(u.s)
pressure2 = pp.column_of_data(url, start2, 1, end2, 'cm')
airchamber2 = pp.column_of_data(url, start2, 2, end2, 'cm')

plt.clf()
plt.plot(x2,pressure2,'-', label = 'Waste Valve')
plt.plot(x2,airchamber2,'-', label='Air Chamber')
plt.xlabel('Time (s)')
plt.ylabel('Pressure (cm)')
plt.legend()
plt.show()
#plt.savefig('water_pumped_closeup.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)

```
<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/water_pumped_closeup.jpg?raw=True" height=400>
</p>
<p align="center">

**Figure 13:** This graph shows a close up of the cycle as shown in Figure 12. The time period in which the pressure in the waste valve exceeds the pressure in the air chamber indicates when water is being pumped into the air chamber.

The following Python code calculates the actual volume of water pumped per cycle:

```Python
#find volume of air using ideal gas law
#deltaV = nRT/deltaP
#pressure difference, deltaP (measured as difference in pressure in air chamber)

url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-25-2019_shortsensor0.xls'
pp.notes(url)
start = 39416 #should be more than 'start'
end = 41600 #should be less than 'stop'

airchamber = pp.column_of_data(url, start, 2, end, 'cm')

head = airchamber[-1]-airchamber[0]

#n, initial number of moles of air
diam = 1*u.inch
height_water = 1.5 * u.inch #initial height of water in air chamber
vol_water = (pc.area_circle(diam)*height_water).to(u.m**3) #initial volume of water in air chamber
height_ac = 26.5*u.inch #height of air chamber
vol_airchamber = (pc.area_circle(diam)*height_ac).to(u.m**3)

init_vol = vol_airchamber - vol_water #initial volume of air in air chamber
air_density = 1.225*(u.kg/u.m**3)
mass = (air_density*init_vol).to(u.kg)
mol_mass = 28.97*u.g/u.mol

n = (mass/mol_mass).to(u.mol)

#standard temp
T = 297*u.kelvin

init_P=(airchamber[0]*pc.density_water(T)*c.GRAVITY).to(u.Pa)+(1*u.atm)
init_n = (init_P*init_vol/(u.R*T)).to(u.mol)#initial mole of water in the air chamber

final_P=((airchamber[-1]*pc.density_water(T)*c.GRAVITY).to(u.Pa)+(1*u.atm)).to(u.kPa)

#convert head to pressure
deltaP = final_P-init_P
#calculate change in volume of air, which is equal to the volume of water pumped
final_vol_air= ((init_n*u.R*T)/(final_P)).to(u.L)#final volume of air
final_vol=vol_airchamber-final_vol_air

deltaV=(final_vol-vol_water).to(u.mL)
print('The volume of water pumped per 1 cycle is ' + str(deltaV))

```

Thus, the volume of water pumped per cycle is 4.195 milliliter.

### Efficiency of Ram Pump

The efficiency of the ram pump was calculated by the following equation:

$$Error = \frac{\mid experimental- theoretical \mid}{theoretical} $$

$$Percent Error =\frac{|4.195-48.82|}{48.82} * 100\% = 91.468\% $$

$$Efficiency = 100\% - 91.468\% = 8.592\% $$

Thus, the current ram pump design pumps only 8.592% of the volume it should be pumping, which indicates that the ram pump is very inefficient.

### Headloss through Effluent

It was hypothesized that the reason the ram pump was so inefficient is due to the small diameter of the effluent pipe, which creates a very high headloss that prevents water from being pumped into the air chamber. In order to verify this hypothesis, the headloss through the effluent was calculated. Figure 14 shows where minor loss occurs as water is pumped from the effluent into the air chamber.

<p align="center">
  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/headloss_schematic.png?raw=True" height=400>
</p>
<p align="center">

**Figure 14:** Minor loss occurs in three locations as water is pumped from the effluent of the ram pump into the air chamber: 1) sudden flow contraction from drive pipe to effluent pipe, 2) as water flows around the 90 degree elbow, 3) as flow expands from the effluent pipe into the air chamber.

The equation for headloss through a pipe is as follows:

$$h_L =(\Sigma K + f \frac{L}{D}) \frac{Q^2}{A^2 2g} $$

where:
- $\Sigma K $: minor loss coefficient
- $f \frac{L}{D}$: major loss coefficient; negligible compared to minor loss
- $Q$: flow rate in drive pipe (cubic meters)
- $A$: cross-sectional area of effluent pipe

Since minor losses dominate in the effluent pipe, the major loss term was deemed negligible and assumed to be zero. The minor loss coefficients were obtained from the equations found in the AguaClara package [head_loss.py](https://github.com/AguaClara/aguaclara/blob/master/aguaclara/core/head_loss.py).

```Python
#Q = terminal velocity * A
Q = v_f*area
A_small = 0.25*u.inch
A_large = 1*u.inch
B=A_small/A_large

#sudden contraction
#k_contraction = hl.k_value_reduction(ent_pipe_id=1*u.inch, exit_pipe_id=0.25*u.inch, q=Q, fitting_angle=180, rounded=True, nu=c.WATER_NU, pipe_rough=mats.PVC_PIPE_ROUGH)
k_contraction = 0.45*(1-B)

#elbow, 90 degree
k_elbow = hl.EL90_K_MINOR

#sudden expansion
#ent_pipe_id=0.25*u.inch
#exit_pipe_id=1*u.inch
#k_expansion = hl.k_value_expansion(ent_pipe_id, exit_pipe_id, q=Q ,fitting_angle=180, rounded=True, nu=c.WATER_NU, pipe_rough=mats.PVC_PIPE_ROUGH)
k_expansion = (1/(B-1))**2
k_tot = k_contraction + k_elbow + k_expansion
#calculate headloss
hl = (k_tot*(Q**2))/((area**2)*2*c.GRAVITY)
print('The minor headloss in the effluent pipe is ' + str(hl))
percent_hl = (hl/delta_h)*100

```
The minor headloss in the effluent pipe is 0.7852 meters; this is the amount of energy lost due to minor headloss. Thus, the ram pump could potentially pump water 0.7852 meters higher if minor losses were minimized. Reducing minor losses can be accomplished by increasing the diameter of the effluent pipe, thus providing the rationale for the ram pump design change.


## Conclusions

#### Finding the Ideal Spring Constant

From extensive data collection and analysis, the team calculated that the force required to open the valve was 12.49 N; this force was determined by a force analysis of water being added to the bottle until the valve opened. The force to close the valve was 4.181 newtons. With these values, the team was able to determine a range of ideal spring constants using Hooke's Law ($F=kx$). Hooke's Law depends on the compression length of the spring and does not account for the material property of the spring (e.g., the natural length of spring), so the variable, $k'$ was defined, allowing a relationship between $k'$ and the length of the spring, $L$ to be established.

#### Volumetric Output of Water
The terminal velocity was also calculated in order to calculate the theoretical volume of water pumped. By experimentation, the team found that the average value for terminal velocity was 2.56 m/s. The terminal velocity was obtained collecting and measuring the volume of water which pass through the ram pump when the plate is open a certain amount of time. The theoretical volume of water pumped was 48.73 milliliters.

The theoretical volume of water pumped was compared to the experimental volume, which was found by measuring the pressure in the air chamber and using the ideal gas law.  The experimental volume of water pumped was 4.195 milliliters. Comparing the theoretical and experimental volumes, it is clear that the ram pump is very inefficient (8.592\% efficiency).

## Future Work

Over the span of Spring 2019, the team experimentally and theoretically calculated the force of the water on the plate. With this data, the team was able to calculate the most effective spring constant, but there were still other variables to be accounted for to optimize the efficiency of the system.

#### Reduction of Headloss
Further research in the reduction of headloss by varying the ratio between the diameter of the drive pipe and the diameter of the effluent pipe had yet to be explored. The diameter of the effluent check valve appears to be too small relative to the diameter of the drive pipe which may create a large amount of headloss that causes much of the inefficiency of the system. Making the diameter of the side check valve as large as the valve in the drive pipe may reduce a significant portion of the headloss due to the effluent valve. Optimizing this ratio between the diameters of the two pipes would help improve the efficiency of the ram pump.

#### Pressure Sensors
The pressure sensor attached to the ram pump across from the effluent valve should also be reevaluated. The currently installed, 30 psi range pressure sensor repeatedly broke during the pressure cycle readings. The current pressure sensors have a relatively low-proof pressure range, meaning that the pressure around the plate most likely exceeded the upper pressure limit of the sensor. This consistent breakage was hypothesized to have been caused by pressure spikes in the cycle. The pressure from the water driven through the waste valve seemed to exceed the pressure range of the sensor, meaning the sensor could not accurately read the spikes. Measurements of the pressure cycle with a pressure sensor of higher pressure range (e.g. [-100 to 100 psi](https://www.omega.com/en-us/sensors-and-sensing-equipment/pressure-and-strain/pressure-transducers/px26/p/PX26-100DV)) should be taken to verify that there exists a pressure spike per cycle that exceeds the sensor's proof pressure.

#### Fabrication of a Modified Ram Pump Setup

Although the team collected relevant data concerning the force of water on the plate of the drive pipe, the experimental values were prone to inaccuracy because several components in the current experimental ram pump setup were rusted. The rusting of the pump pieces may have played a significant role in skewing the weight measurements.

In order to prevent such skewed data, the team recommended the fabrication of another experimental ram pump. Not only would the remodeling account for inaccurate measurements but also it should allow for easier interchanging of parts in between testing. The Spring 2019 team found that the orientation of the pipes between head tank and collection buckets were rigid and not interchangeable, making the set up difficult to make adjustments.

The modified experimental ram pump system in Figure 15 was designed to account for the aforementioned ergonomic issues as well as the inefficiency of the ram pump. The new setup should reduce the amount of headloss around the effluent valve and allow for a more accurate pressure measurements. The Onshape model can be viewed [here](https://cad.onshape.com/documents/d729d0b40b3687f6da716557/w/152bf5eb1d252b4f41d65a41/e/d018f8ec8e610a6d69e3ebeb).

<p align="center">

  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/rampumpsp19design.png?raw=True">

  **Figure 15:** The modified design of ram pump consisted of a T-connector so that the diameter of the effluent valve can be increased to be the same as that of the drive pipe.
</p>
<p align="center">


In the modified design of ram pump (Figure 15), the diameter of the effluent pipe was increased from 1/4 inch to 1 inch using a check valve as the effluent valve. This would reduce the headloss from drive pipe to effluent pipe and thus improve the efficiency of ram pump. This design also used a straight union to connect the two check valves instead of just a brass nipple (Figure 16). The use of union would also ensure that each assembling of ram pump has a consistent magnitude of opening and closing of the metal plate, as limited by the threading distance of the union. Thus, a consistent result could be obtained in experiments with springs of different compression lengths and k-constants.

<p align="center">

  <img src="https://github.com/AguaClara/ram_pump/blob/master/Spring%202019/Images_Diagrams/rampumpsp19design_section.png?raw=True">

  **Figure 16:** The sectioned view of the modified design of ram pump showed that the movement of the plate would still be limited by the two check valves, but the connection was changed to a union so that the magnitude of movement would be consistent.
</p>
<p align="center">

**Table 7:** The modified ACVRP was fabricated using the following materials:

| Parts                  | Quantity | Dimension                             | Source                                                                                                               |
|:---------------------- |:-------- |:------------------------------------- |:-------------------------------------------------------------------------------------------------------------------- |
| Brass Check Valve      | 3        | 1" pipe size                          | Strataflo or [McMaster](https://www.mcmaster.com/7746k831)                                                           |
| Metal Plate            | 1        | 1" diameter                           | Part of check valve                                                                                                |
| Hex Nuts               | 2        | 3/8"-16 Thread Size, 1-1/8" Long      | [McMaster](https://www.mcmaster.com/90264A213)                                                                       |
| Brass Jam Nuts         | 2        | 3/8"-16 Thread Size                   | [McMaster](https://www.mcmaster.com/92174a031)                                                                       |
| Partially Threaded Rod | 1        | 3/8"-16 Thread Size, 8" Long          | [McMaster](https://www.mcmaster.com/98750a458) (Fully threaded but will be fabricated to partially threaded to 7.5") |
| Spring                 | 1        | Varied length and k constant          | Mcmaster                                                                                                             |
| Brass Threaded Pipe Nipple | 5        |Fully Threaded, 1 NPT, 1-1/2" Long | [McMaster](https://www.mcmaster.com/9176k116)                                                                        |
|Brass Pipe Fitting Union Straight Connector|   1       |      1 NPT Female                                |       [McMaster](https://www.mcmaster.com/9162k476)                                                                                                               |
|PVC Pipe Fitting for Water, T-Connector |  1        | 1 NPT Female |[McMaster](https://www.mcmaster.com/4596k340)     |
|PVC Pipe Fitting 90 Degree Elbow Adapter|1      |  1 Socket Female x 1 NPT Female                |    [McMaster](https://www.mcmaster.com/4596k624)                                                                         |

Since the modified design included a T-connector between the drive pipe and effluent, the pressure sensor to observe pressure trace of the ram pump was installed at the T-connector using a drill bit of  7/16 inches and a tap of 1/4 in- 18.

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
pandoc Spring2019RamPump.md -o RamPump_Research_Report.pdf
```
