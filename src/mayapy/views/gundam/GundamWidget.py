# Assignment2Widget.py
# (C)2013
# Scott Ernst

from pyglass.widgets.PyGlassWidget import PyGlassWidget
from gundam_skeleton_v1 import Skeleton
from gundam_v2 import Gundam
from mayapy.views.assignment2.Assignment2Widget import Assignment2Widget,listOfMaterialShader,listOfMaterials
from enum import Enum

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
        #listOfMaterials.__repr__()

        self.gundamTypeListCB.addItem("Gundam v1")
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
        print(self.maleName.text())
        gundam = Gundam(self.maleName.text())
        self.gundams.append(gundam)
        self.gundamList.addItem(gundam.name)
        gundam.attachIKToRoot()
        size = int(self.maleSize.text())
        ratio = size / 20.0
        print(ratio)
        gundam.scale(ratio)


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
        temp.attachArmIKToRoot()
#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleDetachArmButton(self):
        idx = self.gundamList.currentIndex()
        temp = self.gundams[idx]
        temp.detachArmIKFromRoot()

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleAttachLegButton(self):
        idx = self.gundamList.currentIndex()
        temp = self.gundams[idx]
        temp.attachLegIKToRoot()
#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleDetachLegButton(self):
        idx = self.gundamList.currentIndex()
        temp = self.gundams[idx]
        temp.detachLegIKFromRoot()


