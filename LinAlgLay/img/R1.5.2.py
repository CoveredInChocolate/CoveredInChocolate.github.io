# 3D plot - using plotly

# Planes

import numpy as np
import plotly.graph_objects as go
xx = np.linspace(-5, 5, 100)
# Parametric line
x1 = 5 + 4*xx
x2 = -2 - 7*xx
x3 = xx
# Axes
xmin = 50
xmax = 50
ymin = xmin
ymax = xmax
zmin = 4
zmax = 4
xaxisX = np.linspace(-xmin, xmax, 1000)
xaxisY = 0*np.linspace(-xmin, xmax, 1000)
xaxisZ = 0*np.linspace(-xmin, xmax, 1000)
yaxisX = 0*np.linspace(-ymin, ymax, 1000)
yaxisY = np.linspace(-ymin, ymax, 1000)
yaxisZ = 0*np.linspace(-ymin, ymax, 1000)
zaxisX = 0*np.linspace(-zmin, zmax, 1000)
zaxisY = 0*np.linspace(-zmin, zmax, 1000)
zaxisZ = np.linspace(-zmin, zmax, 1000)

fig=go.Figure(data=[
    go.Scatter3d(x=x1, y=x2, z=x3, opacity = 0.9, mode='markers',
        marker=dict(color='rgb(190, 0, 20)', size = 0.9)),
    # Adding axes
    go.Scatter3d(x=xaxisX, y=xaxisY, z=xaxisZ, mode='markers',
        marker=dict(color='rgb(0, 0, 0)', size = 0.7)),
    go.Scatter3d(x=yaxisX, y=yaxisY, z=yaxisZ, mode='markers',
        marker=dict(color='rgb(0, 0, 0)', size = 0.7)),
    go.Scatter3d(x=zaxisX, y=zaxisY, z=zaxisZ, mode='markers',
        marker=dict(color='rgb(0, 0, 0)', size = 0.7))
])
fig.update_layout(
    autosize=False,
    showlegend=False,
    width=600,
    height=600)
# Opens in browser - find good angle and screenshot
fig.show()