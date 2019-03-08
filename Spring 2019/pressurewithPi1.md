```python
from aguaclara_research import ProCoDA_Parser as pp
from aguaclara.core.units import unit_registry as u
import matplotlib.pyplot as plt
import numpy as np
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/3-7-19_manual_operationwith650Pi.xls'
start = 40685
end = 62531
x = (pp.ftime(url,start,end)).to(u.s)
pressure = pp.column_of_data(url, start, 1, end, 'cm')
airchamber = pp.column_of_data(url, start, 2, end, 'cm')

data = pp.get_data_by_time(path=url, columns=[0, 1, 2],start_date="3-7-2018",start_time="0.7877316143",end_time="0.7882413528")
time = data[0]
influent_turbidity = data[1]
effluent_turbidity = data[2]


plt.plot(x,pressure,'-')
plt.plot(x,-airchamber,'-')
plt.show()

```
