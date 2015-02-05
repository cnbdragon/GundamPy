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
#polyPlane -w 1 -h 1 -sx 10 -sy 10 -ax 0 1 0 -cuv 2 -ch 1;
p = cmd.polyPlane(
    w=100, h=100, sx=10, sy=10, ax=y, cuv=3, ch=1,n='HotPlate')[0]
cmd.select(p)
cmd.move(0,2,0,r=True)
cmd.setKeyframe()
c = cmds.polySphere(
    r=r, sx=10, sy=10, ax=y, cuv=2, ch=1, n='Bubble')[0]
cmds.select(c)
cmd.setKeyframe()

'''
cmd.setKeyframe()
for i in range(1,300,5):
    x = rand.choice(decRange)
    y = 5*rand.choice(decRange2)
    z = rand.choice(decRange)
    cmd.currentTime(i)
    cmd.move(x, y, z, r=True)
    cmd.setKeyframe()
'''
randBubbleCount = rand.choice(range(10,1000))
for i in range(0,100,1):
    randX = rand.choice(range(-50,50,1))
    randZ = rand.choice(range(-50,50,1))

    r = 2
    a = 2.0*r
    yUp = (0, 1, 0) # y up
    b = cmds.polySphere(
        r=r, sx=10, sy=10, ax=yUp, cuv=2, ch=1, n='Bubble')[0]
    cmds.select(b)


    startTime = rand.choice(range(1, 600, 1))
    cmd.currentTime(1)
    cmd.move(randX, 0, randZ, a=True)
    cmd.setKeyframe()
    for j in range(startTime, 600, 2):
        x = rand.choice(decRange)
        y = 5*rand.choice(decRange2)
        z = rand.choice(decRange)
        cmd.currentTime(j)
        cmd.move(x, y, z, r=True)
        cmd.setKeyframe()
