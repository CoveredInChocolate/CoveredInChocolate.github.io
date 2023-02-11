# 3D plot - using plotly

# Planes

import numpy as np
import plotly.graph_objects as go
x = np.linspace(-1, 1, 100)
y = np.linspace(-1, 1, 100)
X, Y = np.meshgrid (x, y )
# Planes
Z1 = X + Y
# Axes
xaxisX=np.linspace(-2, 2, 1000)
xaxisY=0* np.linspace(-2, 2, 1000)
xaxisZ=0* np.linspace(-2, 2, 1000)
yaxisX=0* np.linspace(-2, 2, 1000)
yaxisY=np.linspace(-2, 2, 1000)
yaxisZ=0* np.linspace(-2, 2, 1000)
zaxisX=0* np.linspace(-2, 2, 1000)
zaxisY=0* np.linspace(-2, 2, 1000)
zaxisZ=np.linspace(-2, 2, 1000)

fig=go.Figure(data=[
    go.Surface (x=x, y=y, z=Z1, opacity = 0.9, colorscale='Purp', showscale=False),
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