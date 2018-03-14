# Ram Pump Operation and Testing Manual
# Spring 2018
## Maile McCann, Will Lopez, and Steven Lopez

*The goal of the Ram Pump subteam is to optimize the hydraulic ram pump in order to pump clean water into electricity- free plumbing of a water treatment plant, for use in the chemical dosing system as well as sinks and toilets.*

*This manual outlines procurement, fabrication, testing, and cleaning of the current hydraulic ram pump model as of Spring 2018*
## Fabrication Details
The ram pump consists of two 1.5" threaded metal check valves connected by a custom PVC fitting. The upper check valve connects to the PVC drive pipe which provides the influent flow. The connection is made by a PVC male to male connector that screws into a male metal nipple and into the top check valve. See Figure 1 for exterior setup.

The interior of the ram pump consists of a threaded metal rod with two metal standoffs screwed on, and a hole in one end that has been tapped to accommodate a threaded metal plate. The spring fits into the interior by fitting concentrically over the end of the metal rod below the standoff. See Figure 2 for interior setup in the inverted configuration.

###### Figure 1: Exterior Ram Pump Set Up
![Exterior Ram Pump Set Up](https://github.com/mailemccann/Personal/blob/master/Exterior%20Set%20up%20Pump.jpg)

Listed below are the components that the team custom fabricated.

### Check Valve Inverted Configuration
The CEE machine shop is equipped to fabricate inverted valve. The inverted check valve consists of a standard metal check valve with the following modifications.
2. Drill a .25" diameter hole 2.4" up from the bottom of the valve and another .5" hole at the same elevation at the opposite side of the valve.
2. Both holes must then be tapped in order to accommodate threaded pipe fittings for the pressure test valve and the effluent valve.
3. Screw in the pressure test valve and the effluent valve.
4. Apply acrylic flex sealant tape around connection between threads and valve in order to ensure water tightness.

###### Figure 2: Interior Ram Pump Set Up
![Interior Ram Pump Set Up](https://github.com/mailemccann/Personal/blob/master/Inverted%20Config%20Pump.png)

### PVC Fitting Fabrication
This component connects the two metal check valves to hold the inner metal rod in place.
1. Purchase two 1" male connectors for which one side is threaded and the other is smooth.
2. Depending on length of rod and spring on interior of pump, use band saw to cut one connector so that both connectors together allow the inner rod to rest on spring inside valves without compression initially.
3. Weld smooth ends together using PVC welder.
4. Allow to cool completely before attaching to ram pump. This is crucial to ensure that the weld sets correctly and the piece doesn't break during testing.

###### Figure 3: Spring 2018 Fabricated Male to Male PVC fitting
![PVC Male to Male Fitting](https://github.com/mailemccann/Personal/blob/master/Male%20to%20male%20connector.jpg)

## Special Components
The ram pump consists of multiple components that are not easily accessible in the AguaClara research lab or on campus. These pieces must be specially ordered, and are listed below.
1. Check valve
  * Order new check valves from McMaster Carr online store
  * Generally, check valves can be used from the previous year unless severely deformed or threading has degraded.
2. Metal plates
  * Metal plates can be reused from previous years.
  * However, if new plates need to be ordered they are generally only available with the purchase of a new check valve.
3. Springs
  * The team purchased spring of desired k constants from Home Depot in Ithaca, but most testing can be accomplished with springs purchased in previous semesters.
4. Metal rod and standoffs
  * This apparatus cannot be purchased as a unit and must come from individual pieces purchased on McMaster Carr. The unit consists of an 1/4 inch threaded metal rod and two metal standoffs that thread onto the rod.
  * Generally, this piece does not have to be replaced unless lost. The rod does not experience excessive wear.

## Experimental Methods
The following instruction details how energy efficiency testing of the ram pump is conducted.
### Experiment
Step 1.
Assemble ram pump in the standard configuration as shown in the figure below.

###### Figure 4: Standard Configuration
![Standard Configuration](https://github.com/WillLopez/Personal/blob/master/Images/pump%20setup.jpeg)

Step 2.
Fill the waste water bucket roughly half way to the brim.

Step 3.
Connect a pressure sensor to the effluent outlet to measure the effluent pressure of the system using ProCoDA

Step 4.
Open the bucket connector valve and close the drive pipe valve.

Step 5.
Plug in the electric sum pump and allow it to run until all water is removed from the collection bucket and into the head tank.  Then close the bucket connector valve and unplug the pump.

Step 6.
Direct the effluent pipe into a separate container.  Open the drive pipe valve while starting a stopwatch at the same time.
Run the ram pump until roughly 30 seconds elapse.  Stop the timer and close the drive pipe valve simultaneously.

Step 7.
Measure the volume of water in the effluent and collection bucket underneath the drive pipe.  Divide each by the time measured to compute the flow rate of the effluent and waste streams.

Step 8.
Measure the length of the drive pipe and compute the effluent head by dividing the pressure measured from the sensor using ProCoDA by the density of water multiplied by the gravitational acceleration constant.

Step 9.
Repeat steps 1-8 using the inverted configuration of the ram pump.

Step 10.
Calculate energy efficiency using the equation below.

###### Figure 5: Energy Efficiency Equation
![Energy Efficiency Eqn](https://github.com/mailemccann/Personal/blob/master/equations.png)

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

The Ram Pump requires no specific ProCoDA testing, however ProCoDA can be used to measure the pressure in the effluent valve in order to determine the head of the effluent valve when efficiency testing. In order to determine the max height that the effluent would achieve, measure the pressure and use equation

$P=\rho * g * h$

and rearranging to obtain

$h = \frac{P}{\rho * g}$

To accomplish this, attach a short (no longer than 12 in) 1/4 inch plastic flex tube into the pressure test valve. Plug the pressure sensor into a port on the PC where ProCoDA will be accessed. Run the pump as explained in experimental procedures, this time recording pressure readings. After 30 seconds, stop the data file and examine the points of highes pressure. This will be the pressure when the plate just opened and effluent was being pumped. Average the highest pressure values in the pressure oscillation to obtain your average effluent pressure.
