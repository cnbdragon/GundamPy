# Assignment2Widget.py
# (C)2013
# Scott Ernst

from pyglass.widgets.PyGlassWidget import PyGlassWidget
from gundam_skeleton_v1 import Skeleton
from gundam_v2 import Gundam as Gundam
from gundam_v3 import Gundam as Gundam3
from gundam_strike_v1 import Gundam as GundamStrike
from gundam_v3 import Gundam as GundamArtemie
from mayapy.views.assignment2.Assignment2Widget import Assignment2Widget,listOfMaterialShader,listOfMaterials
from enum import Enum
from mayapy.views.physics.PhysicPlieIk import PlieIk
gundams_need = []
#___________________________________________________________________________________________________ Assignment2Widget
class GundamWidget(PyGlassWidget):
    """A class for..."""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        global listOfMaterialShader
        global listOfMaterials
        """Creates a new instance of Assignment2Widget."""
        super(GundamWidget, self).__init__(parent, **kwargs)
        self.gundams = list()
        self.SkeletonBtn.clicked.connect(self._handleSkeletonButton)
        self.V2Btn.clicked.connect(self._handleV2Button)
        self.strikeBtn.clicked.connect(self._handleStrikeButton)
        self.homeBtn.clicked.connect(self._handleReturnHome)
        self.attachAllBtn.clicked.connect(self._handleAttachAllButton)
        self.detachAllBtn.clicked.connect(self._handleDetachAllButton)
        self.attachArmsBtn.clicked.connect(self._handleAttachArmButton)
        self.detachArmsBtn.clicked.connect(self._handleDetachArmButton)
        self.attachFeetBtn.clicked.connect(self._handleAttachLegButton)
        self.detachFeetBtn.clicked.connect(self._handleDetachLegButton)

        #listOfMaterials.__repr__()

        #self.gundamTypeListCB.addItem("Gundam v1")
        self.gundamTypeListCB.addItem("Gundam v2")
        self.gundamTypeListCB.addItem("Gundam v3")
        self.gundamTypeListCB.addItem("Strike")
        self.gundamTypeListCB.addItem("Artemie")
        for i in range(len(listOfMaterialShader)):
            x = listOfMaterialShader[i]
            if x == None:
                listOfMaterials[i] # this works
            listOfMaterials.__repr__()
            listOfMaterialShader.__repr__()

            print listOfMaterialShader[i]
            self.materialList1.addItem(x)

#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleSkeletonButton(self):
        seleton_1 = Skeleton("Bob")
        self.gundamList.addItem("Bob")
#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleV2Button(self):
        gundam = Gundam("Jeremy")
        self.gundamList.addItem("Jeremy")

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleStrikeButton(self):
        global gundams_need
        print(self.maleName.text())
        idx = self.gundamTypeListCB.currentIndex()
        if idx == 0:
            gundam = Gundam(self.maleName.text())
        elif idx == 1:
            gundam = Gundam3(self.maleName.text())
        elif idx == 2:
            gundam = GundamStrike(self.maleName.text())
        elif idx == 3:
            gundam = GundamArtemie(self.maleName.text())

        #gundam = Gundam(self.maleName.text())
        self.gundams.append(gundam)
        self.gundamList.addItem(gundam.name)
        gundam.attachIKToRoot()
        size = int(self.maleSize.text())
        ratio = size / 20.0
        print(ratio)
        gundam.scale(ratio)
        print self.gundams
        gundams_need.append((gundam,"second"))
        #plie = PlieIk("first",0,160,gundam)
        #plie2 = PlieIk("second",160,320,gundam)

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleAttachAllButton(self):
        idx = self.gundamList.currentIndex()

        temp = self.gundams[idx]

        temp.attachIKToRoot()
#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleDetachAllButton(self):
        idx = self.gundamList.currentIndex()
        temp = self.gundams[idx]
        temp.detachIKFromRoot()

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleAttachArmButton(self):
        idx = self.gundamList.currentIndex()
        temp = self.gundams[idx]
        temp.attachArmsIKToRoot()
#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleDetachArmButton(self):
        idx = self.gundamList.currentIndex()
        temp = self.gundams[idx]
        temp.detachArmsIKFromRoot()

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleAttachLegButton(self):
        idx = self.gundamList.currentIndex()
        temp = self.gundams[idx]
        temp.attachLegsIKToRoot()
#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleDetachLegButton(self):
        idx = self.gundamList.currentIndex()
        temp = self.gundams[idx]
        temp.detachLegsIKFromRoot()


