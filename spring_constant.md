```python
%matplotlib inline
import matplotlib.pyplot as plt
plt.style.use('seaborn-whitegrid')
import numpy as np

fig = plt.figure()
ax = plt.axes()

x = np.linspace(start=0, stop = 20)
plt.xlim(right=20)
plt.ylim(top=25)
plt.plot(2.6197*x, linestyle='-')

plt.xlabel('Length of Spring (cm)')
plt.ylabel('Intrinsic Spring Constant, k\' (N)')
plt.legend()
#plt.show()
plt.savefig('spring_constant.jpg', dpi=200, facecolor='w', edgecolor='w',orientation='portrait', papertype=None, format=None,transparent=False, bbox_inches=None, pad_inches=0.1,frameon=None, metadata=None)


```
