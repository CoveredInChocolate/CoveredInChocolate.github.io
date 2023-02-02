
import numpy as np
import matplotlib.pyplot as plt

filename = "R1.3.1.png"

fig = plt.figure()
ax = plt.gca()
ax.spines['left'].set_position('zero')
ax.spines['right'].set_color('none')
ax.spines['bottom'].set_position('zero')
ax.spines['top'].set_color('none')

# Points
x1 = [-2]
y1 = [-1]
x2 = [3]
y2 = [-1]
x3 = [2]
y3 = [2]

soa = np.array([[0, 0, -2, -1], [0, 0, 3, -1], [0, 0, 2, 2]])
X, Y, U, V = zip(*soa)
ax.quiver(X, Y, U, V, angles='xy', scale_units='xy', scale=1, color=['blue', 'blue', 'blue'])
ax.plot(x1, y1, marker="o", markersize=8, markeredgecolor="black", markerfacecolor="black")
ax.plot(x2, y2, marker="o", markersize=8, markeredgecolor="black", markerfacecolor="black")
ax.plot(x3, y3, marker="o", markersize=8, markeredgecolor="black", markerfacecolor="black")
ax.set_xlim([-3, 4])
ax.set_ylim([-2, 3])

# remove the ticks from the top and right edges
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

#plt.show()
plt.savefig("img/" + filename, bbox_inches='tight')