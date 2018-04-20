# Ram Pump Operation and Testing Manual
# Spring 2018
## Maile McCann, Will Lopez, and Steven López

<div class="alert alert-block alert-danger">
Please do not delete my comments. On the next submission I will use them to see if the issues were addressed and then I will delete them. If you disagree with a comment, just add your own underneath it.
</div>

*The goal of the Ram Pump subteam is to optimize the hydraulic ram pump, which pumps clean water through the plumbing system of an AguaClara water treatment plant. The plumbing system provides treated water for use in the chemical dosing system as well as sinks and toilets, and would save operators time and energy transporting treated water up by hand. The ram pump system is entirely electricity- free.*

<div class="alert alert-block alert-danger">
Potentially a run-on sentence? Consider a phrase other than "electricity-free plumbing"
</div>

*This manual outlines procurement, fabrication, testing, and cleaning of the current hydraulic ram pump model as of Spring 2018.*

## Fabrication Details
The ram pump itself consists of two 1.5" threaded metal check valves connected by a custom PVC fitting. The upper check valve contains the functional interior of the ram pump. The interior of the ram pump consists of a threaded metal rod with two metal standoffs screwed on, and a hole in one end that has been tapped to accommodate a threaded metal plate. The spring fits into the interior by fitting concentrically over the end of the metal rod below the standoff. The purpose of the standoffs is to determine the maximum oscillatory period of the pump.

The threaded standoffs can screw up or down to accommodate a larger or smaller distance of oscillation. The metal plate is able to screw into the stop of the metal rod. The rod drives the oscillation of the metal plate through the check valve via the spring force. The metal rod is able to slip inside the bottom check valve, holding it in place horizontally but allowing vertical oscillation. The spring, with a larger radius than the rod, does not fit through the bottom check valve opening, and instead compresses when, on a downward drive, the metal drive rod encounters the bottom check valve. The compression of the spring causes an upward spring force that subsequently drives the metal plate back upward. See Figure 2 for interior setup in the inverted configuration.

The driving force of the ram pump is provided not by the force of the plate, however, but the pressure gradient created by the oscillation of the upper check valve. When the plate slams shut, the pressure above the upper check valve exceeds the pressure external to the effluent tube, thud driving flow through the effluent. When pressure has been released, the spring is able to overcome the sole hydrostatic force on the metal plate, and thus the plate oscillates open. When the hydrodynamic force of the drive flow hits a maximum, the drag on the plate closes the plate again, reinitiating the pressure gradient.

The upper check valve connects to the PVC drive pipe which provides the influent flow, or the treated water exiting the AguaClara plant. The connection is made by a PVC male to male connector that screws into a male metal nipple and into the top check valve. For lab testing purposes, previous subteams have established system to simulate flow from the plant. A sump pump carries water to a raised tank, and the water from this tank flows the drive pipe which initiates the pumping process.  The elevation of the head tank creates the energy input in order to drive the pressure oscillation in the ram pump. See Figure 1 for exterior setup.

<div class="alert alert-block alert-danger">
Consider lengthening this section to provide some context as to what each part does.
</div>

![Exterior Ram Pump Set Up](https://github.com/AguaClara/ram_pump/blob/master/Exterior%20Set%20up%20Pump.jpg)
###### Figure 1: Exterior Ram Pump Set Up. This is the schematic of the ram pump fittings from an exterior view, showing how each piece threads to the next.

<div class="alert alert-block alert-danger">
I cannot see Figure 1 as it is referenced to Maile's private repository. Put the image into the team repository and call it from there. I looked at the photos in Maile's repository to grade themthis time. Label your figures to illustrate what is what.

Put figure numbers and captions below figures.
</div>

<div class="alert alert-block alert-danger">
This sentence may not be necessary.
</div>

### Check Valve Inverted Configuration
The purpose of the inverted check valve configuration is to reverse the force balance in the ram pump. The configuration involves reversing the upper valve so that the upward spring force pushes the plate into the closed position, and the hydrostatic force of water opens the valve. The effect is that the spring force has to only resist the hydrostatic force in the closed position, thus potentially lengthening the time in the closed position and increasing pumping efficiency.

The CEE machine shop is equipped to fabricate the inverted valve. The inverted check valve consists of a standard metal check valve with the following modifications. Contact Tim or Paul of the CEE Machine Shop (in the basement of Hollister next to the AguaClara lab) to assist with the modifications to the unaltered metal check valve. They are both equipped to operate the drill and tap for this modification. Additionally, Tim or Paul are both resources to assist in follow- up alterations or fabrication questions.

1. Drill a .25" diameter hole 2.4" up from the bottom of the valve and another .5" hole at the same elevation at the opposite side of the valve, as visually represented in Figure 2: Interior Ram Pump Set Up below.
2. Tap both holes in order to accommodate threaded pipe fittings for the pressure test valve and the effluent valve, as shown in Figure 2.
3. Screw in the pressure test valve and the effluent valve.
4. Apply acrylic flex sealant tape around connection between threads and valve in order to ensure water tightness.

<div class="alert alert-block alert-danger">
The list starts at 2

Consider listing who to ask for help (Tim/Paul)

Revise for grammar

Start section with context about what the check value inverted configuration is and how its purposed

Refer to the image below in the steps so that the reader is reminded to look at it for further understanding.
</div>

![Interior Ram Pump Set Up](https://github.com/AguaClara/ram_pump/blob/master/Inverted%20Config%20Pump.png)
###### Figure 2: Interior Ram Pump Set Up. From this image, you can see how the metal plate fits into the upper check valve and attaches to the metal rod. The spring, as shown, inserts concentrically around the drive rod and it held in place by the bottom check valve.

<div class="alert alert-block alert-danger">
Same issue for all figures

The figure in Maile's repository only had the effluent valve visible? Where is the pressure test valve?
</div>

### PVC Fitting Fabrication
This component connects the two metal check valves to hold the inner metal rod in place. This fitting was fabricated by this semester's subteam and can be reused until water tightness fails or the fitting undergoes significant internal pitting, however this section will outline how to fabricate a new piece.

1. Purchase two 1" male connectors for which one side is threaded and the other is smooth.
2. Depending on length of rod and spring on interior of pump, use band saw to cut one connector so that both connectors together allow the inner rod to rest on spring inside valves without compression initially. The spring will be approximately 2.5" in length, but make measurements and mark male connectors to appropriate size for current configuration being tested.
3. Weld smooth ends together using PVC welder.
4. Allow to cool completely before attaching to ram pump. This is crucial to ensure that the weld sets correctly and the piece doesn't break during testing.

![PVC Male to Male Fitting](https://github.com/AguaClara/ram_pump/blob/master/Male%20to%20male%20connector.jpg)
###### Figure 3: Spring 2018 Fabricated Male to Male PVC fitting. This is the current team's fitting fabricated in Spring 2018, where you can see the welds done with the hand held PVC welder.

<div class="alert alert-block alert-danger">
Do you have a ballpark value for length of the spring?

Are these your team's fabrication methods or are they just the standard ones. If you are using another team's fab methods (previous semesters) make sure to refer to their report and give them credit.

In response to above comment, This is a piece that our team made specifically this semester.
</div>

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

  <div class="alert alert-block alert-danger">
  Consider making this into a table and including links to where to purchase certain items.

  Decide whether or not the bullets should be full sentences with periods or not and keep every one consistent.

  Natalie- I see why a table would be useful for organization but I wanted to leave long comments on each piece to order so I left it as bullets. If you still think it would be better as a table I will change it.
  </div>

## Experimental Methods
The following instruction details how energy efficiency testing of the ram pump is conducted. The energy efficiency percentage determines the efficacy of the ram pump in pumping effluent compared to the amount of volumetric flow entering the pump from of the drive pipe. Energy of both the effluent pumped as well as the incoming drive flow is the product of flow  rate  and  hydraulic  head. The energy pumped is the product of volumetric effluent flow and effluent head, or the equivalent pressure that the ram pump is pumping against to pump the water to a higher elevation. The pressure head can be measured using a 7 kPa pressure sensor linked to ProCoDA. Volumetric flow rate is determined by recording the amount of time it takes to pump a certain volume, as shown in the following equation:

 $Q= frac{V}{t}$

 The overall equation for energy efficiency of the ram pump is as follows:

 ![Energy Efficiency Eqn](https://github.com/AguaClara/ram_pump/blob/master/equations.png)
  ###### Figure 5: Energy Efficiency Equation, where
  ###### $Q_{eff}$ = volumetric flow rate of effluent
  ###### $h_{eff}$ = pressure head of effluent being pumped, eg: how high the effluent is theoretically being pumped
  ###### $Q_{waste}$ = volumetric flow rate of the wasted water during the same time interval measured for the effluent flow rate
  ###### $h_{drive}$ = height of the drive pipe, representative of the incoming energy to the ram pump

Energy efficiency will become very useful in the final phase of Spring 2018's semester goals. The value of calculating experimental energy efficiency is that the team is then able to compare the values to calculated theoretical energy efficiency. From there, we can exclude terms in the theoretical calculations to determine the main contributors to inefficiency. For example, we can exclude the minor headloss term in the theotrical efficiency calculation to see how much minor headloss reduces effiency and if this is an issue to address as well as spring force. This analysis will be the focus of the last third of the semester, and will be further detailed in the final manual.

<div class="alert alert-block alert-danger">
This needs to be expanded. Why is this important? What data are you collecting? How do you determine this?
</div>

### Experiment

![Standard Configuration](https://github.com/AguaClara/ram_pump/blob/master/Labeled%20Ram%20Pump%20Setup.png)
###### Figure 4: Standard Configuration - this is the setup of the apparatus that the team uses in the laboratory to conduct all experimentation

1. Assemble ram pump in the configuration shown in the figure above, with the air chamber connected from the effluent pipe with a push to connect T fitting.

2. Fill the waste water bucket roughly half way to the brim.

3. Attach a push- to- connect ball valve to the end of the effluent flow pipe in order to create pressure within the air chamber.

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

<div class="alert alert-block alert-danger">
Try not to interrupt lists with figures.

Figure 4 is in will's personal repository so I cannot see it here. Consider a close up of how ram pump connects to the rest of the apparatus. Otherwise good figure.

The list formatting throughout whole manual is inconsistent.

Consider labeling your figure 4 with all of the parts referenced here i.e. drive pipe valve and bucket connector valve. Otherwise provide more context as to what that is.

Step 7 - What is the difference between the influent and waste streams?

Step 8 - include the equation described

Step 9 - As opposed to what? What is the base state? I thought that the inverted check valve was part of the normal set-up. I am confused. What is the purpose of having two set-ups.
</div>

<div class="alert alert-block alert-danger">
Explain the equation more. What are the h values? How were they determined?
</div>

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

$h = \frac{P}{\rho * g}$

This height is then plotted using every pressure obtained to determine how height varies with pressure. To accomplish this, attach a short (no longer than 12 in) 1/4 inch plastic flex tube into the pressure test valve. Plug the pressure sensor into a port on the PC where ProCoDA will be accessed. Run the pump as explained in experimental procedures, this time recording pressure readings. After 30 seconds, stop the data file and examine the points of highest pressure. This will be the pressure when the plate just opened and effluent was being pumped. Average the highest pressure values in the pressure oscillation to obtain your average effluent pressure.

<div class="alert alert-block alert-danger">
Do you use the average effluent pressure in the h equation?
yes and we realize now this is wrong

You did not give a brief overview of how the ram pump works or the flow through the apparatus. Those are important to have in the beginning to give background - small descriptions would be fine.
</div>
