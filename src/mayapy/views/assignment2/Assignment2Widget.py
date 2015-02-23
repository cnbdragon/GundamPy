# Assignment2Widget.py
# (C)2013
# Scott Ernst

import nimble
import random as rand
import numpy as np
from nimble import cmds
from nimble import cmds as mc
from pyglass.widgets.PyGlassWidget import PyGlassWidget
import materials

#___________________________________________________________________________________________________ Assignment2Widget
class Assignment2Widget(PyGlassWidget):
    """A class for..."""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment2Widget."""
        super(Assignment2Widget, self).__init__(parent, **kwargs)

        self.homeBtn.clicked.connect(self._handleReturnHome)
        self.initSceneBtn.clicked.connect(self._handleInit)
        self.redAABtn.clicked.connect(self._handleRedAA)
        self.blueAABtn.clicked.connect(self._handleBlueAA)
        self.customAABtn.clicked.connect(self._handleCustomAA)
        self.redFMBtn.clicked.connect(self._handleRedFM)
        self.blueFMBtn.clicked.connect(self._handleBlueFM)
        self.customFMBtn.clicked.connect(self._handleCustomFM)
        self.chromeSBtn.clicked.connect(self._handleChrome)
        self.chromeTBtn.clicked.connect(self._handleChromeTex)
        self.chromeTFBtn.clicked.connect(self._handleChromeFileTex)

        self.plasticBtn.clicked.connect(self._handlePlastic)
        self.greyPlasticBtn.clicked.connect(self._handlePlasticGrey)
        self.bluePlasticBtn.clicked.connect(self._handlePlasticBlue)
        self.customPlasticBtn.clicked.connect(self._handlePlasticCustom)

        self.goldBtn.clicked.connect(self._handleGold)
        self.shinyGoldBtn.clicked.connect(self._handleShinyGold)
        self.silverBtn.clicked.connect(self._handleSilver)



#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleInit(self):
        floor = mc.polyPlane(w=300,h=300)
        mc.move(0,-5,0)

        mc.ambientLight()
        mc.pointLight()
        mc.move(60,60,60)
#___________________________________________________________________________________________________ _handleReturnHome
    def _handleRedAA(self):
        Sphere = mc.polySphere(r=5,n='redAASphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.redAASG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleBlueAA(self):
        Sphere = mc.polySphere(r=5,n='blueAASphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.blueAASG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleCustomAA(self):
        r = self.redSpin.value()
        g = self.greenSpin.value()
        b = self.blueSpin.value()

        custAA = materials.anodizedAluminum('cust',r,g,b)

        Sphere = mc.polySphere(r=5,n='custAASphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = custAA.AASG)


#___________________________________________________________________________________________________ _handleReturnHome
    def _handleRedFM(self):
        Sphere = mc.polySphere(r=5,n='redFMSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.redFMSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleBlueFM(self):
        Sphere = mc.polySphere(r=5,n='blueFMSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.blueFMSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleCustomFM(self):
        r = self.redSpin.value()
        g = self.greenSpin.value()
        b = self.blueSpin.value()

        custFM = materials.fineMetallic('cust',r,g,b)

        Sphere = mc.polySphere(r=5,n='custFMSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = custFM.FMSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleGold(self):
        Sphere = mc.polySphere(r=5,n='goldSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.goldSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleShinyGold(self):
        Sphere = mc.polySphere(r=5,n='shinyGoldSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.shinyGoldSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleSilver(self):
        Sphere = mc.polySphere(r=5,n='sliverSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.silverSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleChrome(self):
        Sphere = mc.polySphere(r=5,n='chromeSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.chromeSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleChromeTex(self):
        Sphere = mc.polySphere(r=5,n='texChromephere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.npchromeSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleChromeFileTex(self):
        Sphere = mc.polySphere(r=5,n='fileChromeSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.npchromeFileSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handlePlastic(self):
        Sphere = mc.polySphere(r=5,n='plasticSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.cPlasticSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handlePlasticGrey(self):
        Sphere = mc.polySphere(r=5,n='greyPlasticSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.greyCPlasticSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handlePlasticBlue(self):
        Sphere = mc.polySphere(r=5,n='bluePlasticSphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = materials.blueCPlasticSG)

#___________________________________________________________________________________________________ _handleReturnHome
    def _handlePlasticCustom(self):
        r = self.redSpin.value()
        g = self.greenSpin.value()
        b = self.blueSpin.value()

        custPlast = materials.clearPlasticRGB('cust',r,g,b)

        Sphere = mc.polySphere(r=5,n='custAASphere')[0]
        mc.select(cl=True)
        mc.select(Sphere)
        mc.sets(e=True, forceElement = custPlast.PlasticSG)