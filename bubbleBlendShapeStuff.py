import nimble
import random as rand
import numpy as np
from nimble import cmds
from nimble import cmds as cmd

'''
i have a problem of select not adding
'''

sphereDefault = cmd.polySphere(n='sphereDefault')[0]
#print sphereDefault

sphereXPlus = cmd.polySphere(n='sphereXPlus')[0]
cmd.move(0, 0, 5, r=True)
lattice = cmd.lattice(dv=(3, 3, 3), oc=True)
cmd.select(lattice[1]+'.pt[2][2][2]', r=True)
cmd.move(3, 0, 0, r=True)
cmd.select(lattice[1]+'.pt[2][2][1]', r=True, add=True)
cmd.move(3, 0, 0, r=True)
cmd.select(lattice[1]+'.pt[2][2][0]', r=True, add=True)
cmd.move(3, 0, 0, r=True)
cmd.hide()
cmd.select(sphereXPlus)
cmd.hide()

sphereXMinus = cmd.polySphere(n='sphereXMinus')[0]
cmd.move(0, 0, 10, r=True)
lattice = cmd.lattice(dv=(3, 3, 3), oc=True)
cmd.select(lattice[1]+'.pt[0][2][2]', r=True)
cmd.move(-3, 0, 0, r=True)
cmd.select(lattice[1]+'.pt[0][2][1]', r=True, add=True)
cmd.move(-3, 0, 0, r=True)
cmd.select(lattice[1]+'.pt[0][2][0]', r=True, add=True)
cmd.move(-3, 0, 0, r=True)
cmd.hide()
cmd.select(sphereXMinus)
cmd.hide()

sphereZPlus = cmd.polySphere(n='sphereZPlus')[0]
cmd.move(0,0,15,r=True)
lattice = cmd.lattice(dv=(3, 3, 3), oc=True)
cmd.select(lattice[1]+'.pt[0][2][2]', r=True)
cmd.move(0, 0, 3, r=True)
cmd.select(lattice[1]+'.pt[1][2][2]', r=True)
cmd.move(0, 0, 3, r=True)
cmd.select(lattice[1]+'.pt[2][2][2]', r=True)
cmd.move(0, 0, 3, r=True)
cmd.hide()
cmd.select(sphereZPlus)
cmd.hide()

sphereZMinus = cmd.polySphere(n='sphereZMinus')[0]
cmd.move(0,0,20,r=True)
lattice = cmd.lattice(dv=(3, 3, 3), oc=True)
cmd.select(lattice[1]+'.pt[0][2][0]', r=True)
cmd.move(0, 0, -3, r=True)
cmd.select(lattice[1]+'.pt[1][2][0]', r=True)
cmd.move(0, 0, -3, r=True)
cmd.select(lattice[1]+'.pt[2][2][0]', r=True)
cmd.move(0, 0, -3, r=True)
cmd.hide()
cmd.select(sphereZMinus)
cmd.hide()

sphereXPlusZPlus = cmd.polySphere(n='sphereXPlusZPlus')[0]
cmd.move(0,0,25,r=True)
lattice = cmd.lattice(dv=(3, 3, 3), oc=True)
cmd.select(lattice[1]+'.pt[2][2][2]', r=True)
cmd.move(3, 0, 3, r=True)
cmd.select(lattice[1]+'.pt[2][2][1]', r=True)
cmd.move(3, 0, 3, r=True)
cmd.select(lattice[1]+'.pt[1][2][2]', r=True)
cmd.move(3, 0, 3, r=True)
cmd.hide()
cmd.select(sphereXPlusZPlus)
cmd.hide()

sphereXPlusZMinus = cmd.polySphere(n='sphereXPlusZMinus')[0]
cmd.move(0,0,30,r=True)
lattice = cmd.lattice(dv=(3, 3, 3), oc=True)
cmd.select(lattice[1]+'.pt[2][2][0]', r=True)
cmd.move(3, 0, -3, r=True)
cmd.select(lattice[1]+'.pt[2][2][1]', r=True)
cmd.move(3, 0, -3, r=True)
cmd.select(lattice[1]+'.pt[1][2][0]', r=True)
cmd.move(3, 0, -3, r=True)
cmd.hide()
cmd.select(sphereXPlusZMinus)
cmd.hide()

sphereXMinusZMinus = cmd.polySphere(n='sphereXPMinusZMinus')[0]
cmd.move(0,0,35,r=True)
lattice = cmd.lattice(dv=(3, 3, 3), oc=True)
cmd.select(lattice[1]+'.pt[1][2][0]', r=True)
cmd.move(-3, 0, -3, r=True)
cmd.select(lattice[1]+'.pt[0][2][1]', r=True)
cmd.move(-3, 0, -3, r=True)
cmd.select(lattice[1]+'.pt[0][2][0]', r=True)
cmd.move(-3, 0, -3, r=True)
cmd.hide()
cmd.select(sphereXMinusZMinus)
cmd.hide()

sphereXMinusZPlus = cmd.polySphere(n='sphereXPMinusZPlus')[0]
cmd.move(0,0,40,r=True)
lattice = cmd.lattice(dv=(3, 3, 3), oc=True)
cmd.select(lattice[1]+'.pt[1][2][2]', r=True)
cmd.move(-3, 0, 3, r=True)
cmd.select(lattice[1]+'.pt[0][2][1]', r=True)
cmd.move(-3, 0, 3, r=True)
cmd.select(lattice[1]+'.pt[0][2][2]', r=True)
cmd.move(-3, 0, 3, r=True)
cmd.hide()
cmd.select(sphereXMinusZPlus)
cmd.hide()

####
#i need to make more blendShapes
####

####
#blend shape setup
####
bubbleBlend = cmd.blendShape(sphereXPlus, sphereXMinus, sphereZPlus, sphereZMinus, sphereXPlusZPlus, sphereXPlusZMinus,
               sphereXMinusZPlus, sphereXMinusZMinus, sphereDefault, n='bubbleBlend' )

cmd.blendShape(bubbleBlend, edit=True, w=[(0,1),(1,.3)])

