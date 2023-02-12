# 3D plot - using plotly

import numpy as np
import plotly.graph_objects as go

x = np.linspace(-4, 4, 100)
y = np.linspace(-4, 4, 100)
X1, X3 = np.meshgrid (x, y )

# Planes

# x_2 = -(1/2)x_2 - (1/2)x_3 + 2
# x_2 = x_3 + 1
# x_2 = -(1/3)x_2

Z1 = -0.5*X1 - 0.5*X3 + 2
Z2 = X3 + 1
Z3 = -(1/3)*X1

# Layout
layout = go.Layout(
    scene = go.layout.Scene(
    aspectmode='manual',
    aspectratio=go.layout.scene.Aspectratio(x=1, y=1, z=1))
)


# Axes
minA = -5
maxA = 5
xaxisX=np.linspace(minA, maxA, 1000)
xaxisY=0* np.linspace(minA, maxA, 1000)
xaxisZ=0* np.linspace(minA, maxA, 1000)
yaxisX=0* np.linspace(minA, maxA, 1000)
yaxisY=np.linspace(minA, maxA, 1000)
yaxisZ=0* np.linspace(minA, maxA, 1000)
zaxisX=0* np.linspace(minA, maxA, 1000)
zaxisY=0* np.linspace(minA, maxA, 1000)
zaxisZ=np.linspace(minA, maxA, 1000)
fig=go.Figure(data=[
    go.Surface (x=x, y=y, z=Z1, opacity = 1.0, colorscale='purp', showscale=False),
    go.Surface (x=x, y=y, z=Z2, opacity = 1.0, colorscale='blues', showscale=False),
    go.Surface (x=x, y=y, z=Z3, opacity = 1.0, colorscale='emrld', showscale=False),
    # Adding axes
    go.Scatter3d(x=xaxisX, y=xaxisY, z=xaxisZ, mode='markers',
        marker=dict(color='rgb(0, 0, 0)', size = 0.7)),
    go.Scatter3d(x=yaxisX, y=yaxisY, z=yaxisZ, mode='markers',
        marker=dict(color='rgb(0, 0, 0)', size = 0.7)),
    go.Scatter3d(x=zaxisX, y=zaxisY, z=zaxisZ, mode='markers',
        marker=dict(color='rgb(0, 0, 0)', size = 0.7))
], layout = layout)
fig.update_layout(
    autosize=False,
    showlegend=False,
    width=800,
    height=600)
# Opens in browser - find good angle and screenshot
fig.show()