#Experimental Calculations

The following code is used to calculate the experiment volume of water pumped per cycle.

Graph pressure traces.

```Python

import aguaclara.research.procoda_parser as pp
import matplotlib.pyplot as plt
import numpy as np
from aguaclara.core.units import unit_registry as u
import aguaclara.core.constants as c

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

Calculate volume of water pumped per cycle.

```python
import aguaclara.research.procoda_parser as pp
import matplotlib.pyplot as plt
import numpy as np
from aguaclara.core.units import unit_registry as u
import aguaclara.core.constants as c
import aguaclara.core.physchem as pc

url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-25-2019_shortsensor0.xls'

#find volume of air using ideal gas law
#deltaV = nRT/deltaP
#pressure difference, deltaP (measured as difference in pressure in air chamber)


start = 40750 #should be more than 'start'
end = 40850 #should be less than 'stop'

x = (pp.column_of_time(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

plt.clf()
plt.plot(x,pressure,'-', label = 'Waste Valve')
plt.plot(x,airchamber,'-', label='Air Chamber')
plt.xlabel('Time (s)')
plt.ylabel('Pressure (cm)')
plt.legend()
#plt.show()
plt.savefig('water_pumped_closeup.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)

head = airchamber[-1]-airchamber[0]

print(airchamber[-1])
print(airchamber[0])
print(head)
#n, initial number of moles of air
diam = 1*u.inch
height_water = (26.5*u.inch)- (9*u.cm) #initial height of water in air chamber
print(height_water)
vol_water = (pc.area_circle(diam)*height_water).to(u.L) #initial volume of water in air chamber
print(vol_water)
height_ac = 26.5*u.inch #height of air chamber
vol_airchamber = (pc.area_circle(diam)*height_ac).to(u.L)
print(vol_airchamber)
init_vol = vol_airchamber - vol_water #initial volume of air in air chamber
print(init_vol)
air_density = 1.225*(u.kg/u.m**3)
mass = (air_density*init_vol).to(u.kg)
print(mass)
mol_mass = 28.97*u.g/u.mol

#standard temp
T = 293*u.kelvin

init_P=(airchamber[0]*pc.density_water(T)*c.GRAVITY).to(u.Pa)+(1*u.atm)
print(init_P)
init_n = (init_P*init_vol/(u.R*T)).to(u.mol)#initial mole of water in the air chamber
print(init_n)

final_P=((airchamber[-1]*pc.density_water(T)*c.GRAVITY).to(u.Pa)+(1*u.atm)).to(u.kPa)
print(final_P)
#convert head to pressure
deltaP = final_P-init_P
print(c.GRAVITY)
print(head)
print(deltaP)
print(pc.density_water(T))
#calculate change in volume of air, which is equal to the volume of water pumped
final_vol_air= ((init_n*u.R*T)/(final_P)).to(u.L)#final volume of air
final_vol=vol_airchamber-final_vol_air;
print(final_vol)

deltaV=(final_vol-vol_water).to(u.mL);
print('The volume of water pumped per 1 cycle is ' + str(deltaV))

```

#Theoretical Calculations
Using the experimentally determined terminal velocity and the time between opening and closing the valve, the theoretical volume of water pumped per cycle was calculated.

```Python
v_t = 2.26*u.m/u.s #terminal velocity, experimentally determined
area = pc.area_circle(.02372*u.m) #area of drive pipe

#find index of min and max of effluent valve pressure
valve_close = np.argmin(pressure)
valve_open = np.argmax(pressure)

pressure[valve_close]
pressure[valve_open]

min_pressure = min(pressure)
max_pressure = max(pressure)

#find corresponding time interval between open and close
delta_t = x[valve_open]-x[valve_close]

volume = 0.5*area*v_t*delta_t



```
