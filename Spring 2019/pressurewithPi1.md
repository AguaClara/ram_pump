```python
from aguaclara_research import ProCoDA_Parser as pp
from aguaclara.core.units import unit_registry as u
import matplotlib.pyplot as plt
import numpy as np
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-7-19_manual_operationwith650Pi.xls'
start = 40690 #should be more than 'start'
end = 62520 #should be less than 'stop'
pp.notes(url)
x = (pp.ftime(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

plt.plot(x,pressure,'-', label = 'Waste')
plt.plot(x,airchamber,'-', label='Air Chamber')
plt.xlabel('time')
plt.ylabel('pressure (kPa)')
plt.legend()
#plt.show()
plt.savefig('pressure_trace_initialpressure1.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)
```
