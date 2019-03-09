```python
from aguaclara_research import ProCoDA_Parser as pp
from aguaclara.core.units import unit_registry as u
import matplotlib.pyplot as plt
import numpy as np
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-7-19_manual_operation_trial3.xls'
start = 7596
end = 47650
pp.notes(url)

x = (pp.ftime(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')


airchamber = pp.column_of_data(url, start, 2, end, 'cm')

plt.plot(x,pressure,'-')
plt.plot(x,airchamber,'-')
#plt.show()
plt.savefig('pressure_trace.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)

```
