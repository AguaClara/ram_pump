# Volume of Water Pumped per Cycle

The following calculations were used to calculate the experimental and theoretical volume of water pumped per cycle, which then can be used to calculate the efficiency of the ram pump. Make a copy of this Markdown file and rename with the date of experiment.

### Import Statements

Run these import statements before running any of the cells below:

```Python
import aguaclara.research.procoda_parser as pp
import matplotlib.pyplot as plt
import numpy as np
from aguaclara.core.units import unit_registry as u
import aguaclara.core.constants as c
import aguaclara.core.physchem as pc
```

## Experimental Calculations

The following code is used to calculate the experiment volume of water pumped per cycle.

Graph pressure traces.

```Python
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/4-16-19_shortsensor2.xls'
pp.notes(url)
start = 5400 #should be more than 'start'
end = 7400 #should be less than 'stop'

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

Calculate volume of water pumped per cycle.

```python
head = airchamber[-1]-airchamber[0]

#n, initial number of moles of air
diam = 1*u.inch
height_ac = 26.5*u.inch #height of air chamber
height_water = height_ac- (6*u.cm) #initial height of water in air chamber

vol_water = (pc.area_circle(diam)*height_water).to(u.L) #initial volume of water in air chamber

vol_airchamber = (pc.area_circle(diam)*height_ac).to(u.L)

init_vol = vol_airchamber - vol_water #initial volume of air in air chamber

air_density = 1.225*(u.kg/u.m**3)
mass = (air_density*init_vol).to(u.kg)

mol_mass = 28.97*u.g/u.mol

#standard temp
T = 297*u.kelvin

init_P=(airchamber[0]*pc.density_water(T)*c.GRAVITY).to(u.Pa)+(1*u.atm)

init_n = (init_P*init_vol/(u.R*T)).to(u.mol)#initial mole of water in the air chamber

final_P=((airchamber[-1]*pc.density_water(T)*c.GRAVITY).to(u.Pa)+(1*u.atm)).to(u.Pa)

deltaP = final_P-init_P

#calculate change in volume of air, which is equal to the volume of water pumped
final_vol_air= ((init_n*u.R*T)/(final_P)).to(u.L)#final volume of air
final_vol=vol_airchamber-final_vol_air

deltaV=(final_vol-vol_water).to(u.mL)
print('The volume of water pumped per 1 cycle is ' + str(deltaV))
```

Graph close-up of pressure cycle.

```python
url2 = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/4-16-19_shortsensor2.xls'

#find volume of air using ideal gas law
#deltaV = nRT/deltaP
#pressure difference, deltaP (measured as difference in pressure in air chamber)

start2 = 6200 #should be more than 'start'
end2 = 6350 #should be less than 'stop'

x2 = (pp.column_of_time(url2,start2,end2)).to(u.s)
pressure2 = pp.column_of_data(url2, start2, 1, end2, 'cm')
airchamber2 = pp.column_of_data(url2, start2, 2, end2, 'cm')

plt.clf()
plt.plot(x2,pressure2,'-', label = 'Waste Valve')
plt.plot(x2,airchamber2,'-', label='Air Chamber')
plt.xlabel('Time (s)')
plt.ylabel('Pressure (cm)')
plt.legend()
plt.show()
#plt.savefig('water_pumped_closeup.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)


```

## Theoretical Calculations
Using the experimentally determined terminal velocity and the time between opening and closing the valve, the theoretical volume of water pumped per cycle was calculated.

```Python
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

## Efficiency calculations

```python
vol_exp = deltaV
vol_th = volume_theoretical

eff = abs(vol_exp - vol_th)/vol_th

print('The efficiency of the ram pump is ' + str(eff))

```
