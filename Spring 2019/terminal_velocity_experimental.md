```python
import aguaclara.core.physchem as pc
from aguaclara.core.units import unit_registry as u

flow_rate = 0.914552006*u.L/u.s
area = pc.area_circle(.02372*u.m)
velocity = (flow_rate/area).to(u.m/u.s)

Q1=4.055*u.L/(3.98*u.s)
Q2=4.670*u.L/(4.68*u.s)
Q3=3.880*u.L/(3.93*u.s)
Q4=3.565*u.L/(3.60*u.s)
Q5=3.790*u.L/(3.83*u.s)
print(Q1)
print(Q2)
print(Q3)
print(Q4)
print(Q5)
avg_Q = (Q1+Q2+Q3+Q4+Q5)/5
print(avg_Q)

velocity2 = (avg_Q/area).to(u.m/u.s)
print(velocity2)
```
