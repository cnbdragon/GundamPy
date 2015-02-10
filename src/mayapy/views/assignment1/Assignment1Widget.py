# Assignment1Widget.py
# (C)2013
# Scott Ernst

import nimble
import random as rand
import numpy as np
from nimble import cmds
from nimble import cmds as cmd
from pyglass.widgets.PyGlassWidget import PyGlassWidget

#___________________________________________________________________________________________________ Assignment1Widget
class Assignment1Widget(PyGlassWidget):
    """A class for Assignment 1"""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment1Widget."""
        super(Assignment1Widget, self).__init__(parent, **kwargs)
        self.exampleBtn.clicked.connect(self._handleExampleButton)
        self.sphereBtn.clicked.connect(self._handleSphereButton)
        self.bubbleBtn.clicked.connect(self._handleBubbleButton)
        self.bubblesBtn.clicked.connect(self._handleBubblesButton)
        self.bubbleBtn_2.clicked.connect(self._handleBubble2Button)
        self.bubblesBtn_2.clicked.connect(self._handleBubbles2Button)
        self.homeBtn.clicked.connect(self._handleReturnHome)

#===================================================================================================
#                                                                                 H A N D L E R S

#_______________________________________________________________________________________________ _handleExaampleButton
    def _handleExampleButton(self):
        """
        This callback creates a polygonal cylinder in the Maya scene.

        """
        r = 5
        a = 2.0*r
        y = (0, 1, 0)
        c = cmds.polyCylinder(
            r=r, h=5, sx=40, sy=1, sz=1, ax=y, rcp=0, cuv=2, ch=1, n='exampleCylinder')[0]
        cmds.select(c)
        response = nimble.createRemoteResponse(globals())
        response.put('name', c)
#___________________________________________________________________________________________________ _handleSphere
    def _handleSphereButton(self):
        """
        This callback creates a polygonal sphere in the Maya scene.
        it then translates it.
        """
        r = 2
        a = 2.0*r
        y = (0, 1, 0) # y up
        c = cmds.polySphere(
            r=r, sx=10, sy=10, ax=y, cuv=2, ch=1, n='Bubble')[0]
        cmds.select(c)
        cmd.move(0, 5, 0, r = True)
        response = nimble.createRemoteResponse(globals())
        response.put('name', c)

#___________________________________________________________________________________________________ _handleBubble
    def _handleBubbleButton(self):
        """
        This callback creates a polygonal sphere in the Maya scene.
        it then translates it.
        """
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
        response = nimble.createRemoteResponse(globals())
        response.put('name', c)

#___________________________________________________________________________________________________ _handleBubble
    def _handleBubblesButton(self):
        """
        This callback creates a polygonal sphere in the Maya scene.
        it then translates it.
        """
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
        randBubbleCount = rand.choice(range(10,300)) #this should be set in the interface
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
        response = nimble.createRemoteResponse(globals())
        response.put('name', c)

#___________________________________________________________________________________________________ _handleBubble
    def _handleBubble2Button(self):
        """
        This callback creates a polygonal sphere in the Maya scene.
        it then translates it.
        """
        decRange = np.arange(-1,1,.1)
        decRange2 = np.arange(0,1,.1)
        r = 2
        a = 2.0*r
        y = (0, 1, 0) # y up
        '''
        c = cmds.polySphere(
            r=r, sx=10, sy=10, ax=y, cuv=2, ch=1, n='Bubble')[0]
        cmds.select(c)
        cmd.setKeyframe()

        cmd.setKeyframe()
        '''

        '''
        i have a problem of select not adding
        '''

        sphereDefault = cmd.polySphere(n='sphereDefault')[0]
        cmds.select(sphereDefault)
        cmd.setKeyframe()

        cmd.setKeyframe()
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
        bubbleBlend = cmd.blendShape(sphereXPlus,
                                     sphereXMinus,
                                     sphereZPlus,
                                     sphereZMinus,
                                     sphereXPlusZPlus,
                                     sphereXPlusZMinus,
                                     sphereXMinusZPlus,
                                     sphereXMinusZMinus,
                                     sphereDefault,
                                     n='bubbleBlend' )

        #cmd.blendShape(bubbleBlend, edit=True, w=[(0,1),(1,.3)])

        for i in range(1,300,5):
            x = rand.choice(decRange)
            y = 5*rand.choice(decRange2)
            z = rand.choice(decRange)
            cmd.currentTime(i)
            cmd.select(sphereDefault)
            cmd.move(x,y,z,r=True)
            cmd.setKeyframe()
            cmd.blendShape(bubbleBlend, edit=True,
                           w=[(0,rand.choice(decRange)),
                              (1,rand.choice(decRange)),
                              (2,rand.choice(decRange)),
                              (3,rand.choice(decRange)),
                              (4,rand.choice(decRange)),
                              (5,rand.choice(decRange)),
                              (6,rand.choice(decRange)),
                              (7,rand.choice(decRange))])
            cmd.setKeyframeBlendshapeTargetWts()
        response = nimble.createRemoteResponse(globals())
        #response.put('name', c)


#___________________________________________________________________________________________________ _handleBubble
    def _handleBubbles2Button(self):
        """
        This callback creates a polygonal sphere in the Maya scene.
        it then translates it.
        """
        decRange = np.arange(-1,1,.1)
        decRange2 = np.arange(0,1,.1)
        r = 2
        a = 2.0*r
        y = (0, 1, 0) # y up
        '''
        c = cmds.polySphere(
            r=r, sx=10, sy=10, ax=y, cuv=2, ch=1, n='Bubble')[0]
        cmds.select(c)
        cmd.setKeyframe()

        cmd.setKeyframe()
        '''

        '''
        i have a problem of select not adding
        '''

        sphereDefault = cmd.polySphere(n='sphereDefault')[0]
        cmds.select(sphereDefault)
        cmd.setKeyframe()

        cmd.setKeyframe()
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

        #cmd.blendShape(bubbleBlend, edit=True, w=[(0,1),(1,.3)])

        for i in range(0,100,1):
            randX = rand.choice(range(-50,50,1))
            randZ = rand.choice(range(-50,50,1))

            sphereDefault = cmd.polySphere(n='sphereDefault')[0]
            bubbleBlend = cmd.blendShape(sphereXPlus, sphereXMinus, sphereZPlus, sphereZMinus, sphereXPlusZPlus, sphereXPlusZMinus,
                            sphereXMinusZPlus, sphereXMinusZMinus, sphereDefault, n='bubbleBlend' )
            cmds.select(sphereDefault)



            startTime = rand.choice(range(1, 600, 1))
            cmd.currentTime(1)
            cmd.move(randX, 0, randZ, a=True)
            cmd.setKeyframe()
            for j in range(startTime, 600, 2):
                x = rand.choice(decRange)
                y = 5*rand.choice(decRange2)
                z = rand.choice(decRange)
                cmd.currentTime(i)
                cmd.select(sphereDefault)
                cmd.move(x,y,z,r=True)
                cmd.setKeyframe()
                cmd.blendShape(bubbleBlend, edit=True,
                                   w=[(0,rand.choice(decRange)),
                                      (1,rand.choice(decRange)),
                                      (2,rand.choice(decRange)),
                                      (3,rand.choice(decRange)),
                                      (4,rand.choice(decRange)),
                                      (5,rand.choice(decRange)),
                                      (6,rand.choice(decRange)),
                                      (7,rand.choice(decRange))])
                cmd.setKeyframeBlendshapeTargetWts()
            response = nimble.createRemoteResponse(globals())
            #response.put('name', c)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')
