# Plotting library 2D

import numpy as np
import matplotlib.pyplot as plt

filename ='img/R1.1.3.png'

fig = plt.figure()
xx = [i for i in range(-4, 5)]
y1 = [(1 + x)/2 for x in xx]
y2 = [(1 + x)/2 for x in xx]

ax = fig.add_subplot(111)
#ax.set_title('zeroed spines')
ax.plot(xx, y1)
ax.plot(xx, y2, '--')

# xsol = [3]
# ysol = [2]
#ax.xlim(-4, 5)
#ax.ylim(1.5, 3.5)
#plt.grid()
# ax.plot(xsol, ysol, marker="o", markersize=5, markeredgecolor="red", markerfacecolor="red")

ax.spines['left'].set_position('zero')
ax.spines['right'].set_color('none')
ax.spines['bottom'].set_position('zero')
ax.spines['top'].set_color('none')

# remove the ticks from the top and right edges
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

plt.savefig(filename, bbox_inches='tight')

