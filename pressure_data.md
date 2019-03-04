```python
from aguaclara_research import ProCoDA_Parser as pp
from aguaclara.core.units import unit_registry as u
import matplotlib.pyplot as plt
import numpy as np
url = 'https://raw.githubusercontent.com/AguaClara/ram_pump/master/Spring%202019/march_4.xls'
x = (pp.ftime(url,2,-1)).to(u.s)
pressure = pp.column_of_data(url, 2, 1, -1, 'cm')

plt.plot(x,pressure)
plt.show()

```
