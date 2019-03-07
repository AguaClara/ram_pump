```python
# Acceleration
# L = length of major losses, h_drive
# v_f = velocity of flow when plate is completely open

# k = constant for major and minor loss coefficients
import scipy.integrate as integrate
import aguaclara.core.physchem as pc
t = np.linspace(0, .2, 500) # 500 seconds, 4 intervals
H = 5  # Height of drive pipe.
L = 12  # Length of effluent pipe.
g = pc.gravity.magnitude
v_f = .349  # Experimentally measured terminal velocity.
k = (2*g*H)/(L*v_f ** 2)
def velocity_a(time):
    return np.sqrt(2*g*H/k)*np.tanh(time*np.sqrt(g*H*k/(2*L)))

v = velocity_a(t)
plt.plot(t, v)
plt.xlabel('Time')
plt.ylabel('Velocity')
plt.title('Ideal Velocity vs Time')
plt.show()

# Deceleration
# Governing equation is F = ma

# The deceleration of the water after the valve closes is directly proportional
# to the corresponding increase in pressure.
# The pressure spike generated the moment the valve closes will be measured in
# the lab.
a = DeltaP/(rho*H)

# Time when plate closes (measured or calculated)
t_c = 0.125

# Velocity at time plate closes.
b = velocity_a(t_c)

# Velocity while plate is closed and water is deccelerating.
def velocity_d(t):
    return a*t - t_c*a + b
v_d = velocity_d(t)

# Find t at v=0
b = len(v_d)
for x in range(0, b):
    if (v_d[x-1] >= 0 and v_d[x+1] <= 0):
        x_intercept = t[x]  # Where the deceleration crosses the x axis.
x_intercept

#  Plotting both
plt.plot(t, v)
plt.plot(t,v_d)
plt.xlabel('Time')
plt.ylabel('Velocity')
plt.title('Ideal Velocity vs Time')
plt.ylim((0,1))
plt.xlim((0,.14))
plt.show()

# Integrate acceleration and decceleration.
w_int = integrate.quad(velocity_a, 0, t_c)
p_int = integrate.quad(velocity_d, t_c, x_intercept)
p_int
waste = w_int[0]
pumped = p_int[0]

# Calculate efficiency.
h_eff = 10
max_E = (pumped*L)/(waste*H)
max_E * 100

```
