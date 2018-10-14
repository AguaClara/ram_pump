```python
#Function that gives the range of spring constants for a given original free length of the spring and plant specifications

from aide_design.play import*
from aide_design.physchem import*
import math

def SpringRange(temp, head, pipe_diam, free_length)
density= density_water(temp)
W_wc = density*u.gravity*head*np.pi*(pipe_diam/2)**2
x= free_length-.075
k_min= W_wc/x

```
