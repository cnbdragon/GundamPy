import nimble
import random as rand
import numpy as np
from nimble import cmds
from nimble import cmds as cmd
decRange = np.arange(-1,1,.1)
decRange2 = np.arange(0,1,.1)
r = 2
a = 2.0*r
y = (0, 1, 0) # y up
c = cmds.polySphere(
    r=r, sx=10, sy=10, ax=y, cuv=2, ch=1, n='Bubble')[0]
cmds.select(c)
cmd.setKeyframe()

cmd.setKeyframe()
for i in range(1,300,5):
    x = rand.choice(decRange)
    y = 5*rand.choice(decRange2)
    z = rand.choice(decRange)
    cmd.currentTime(i)
    cmd.move(x,y,z,r=True)
    cmd.setKeyframe()