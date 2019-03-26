Graph pressure traces.

```Python

import aguaclara.research.procoda_parser as pp
import matplotlib.pyplot as plt
import numpy as np
from aguaclara.core.units import unit_registry as u
import aguaclara.core.constants as c

url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-25-2019_shortsensor1.xls'
pp.notes(url)
start = 39411 #should be more than 'start'
end = 68017 #should be less than 'stop'

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
plt.savefig('pressure_trace_initialpressure0325_new.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)

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

#url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-7-19_manual_operationwith650Pitrial2.xls'


start = 39411 #should be more than 'start'
end = 68017 #should be less than 'stop'

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

head = airchamber[-1]-airchamber[0]

#n, initial number of moles of air
diam = 1*u.inch
height_water = (26.5*u.inch)- (9*u.cm) #initial height of water in air chamber
vol_water = (pc.area_circle(diam)*height_water).to(u.m**3) #initial volume of water in air chamber
height_ac = 26.5*u.inch #height of air chamber
vol_airchamber = (pc.area_circle(diam)*height_ac).to(u.m**3)

init_vol = vol_airchamber - vol_water #initial volume of air in air chamber
air_density = 1.225*(u.kg/u.m**3)
mass = (air_density*init_vol).to(u.kg)
mol_mass = 28.97*u.g/u.mol

n = (mass/mol_mass).to(u.mol)

#gas constant
R = 8.314 * u.J/(u.mol*u.K)

#standard temp
T = 293*u.K

#convert head to pressure
deltaP = (pc.density_water(T)*c.GRAVITY*head).to(u.Pa)

#calculate change in volume of air, which is equal to the volume of water pumped
deltaV = ((n*R*T)/(deltaP)).to(u.L)
print('The volume of water pumped per 16 cycles is ' + str(deltaV))

```
