# Assignment2Widget.py
# (C)2013
# Scott Ernst

from pyglass.widgets.PyGlassWidget import PyGlassWidget
from mayapy.views.gundam.gundam_skeleton_v1 import Skeleton
from physicPlie2 import typeOfPlie,Plies
from PhysicPlieIk import PlieIk,moveFeetFirst,moveFeetFifth
from mayapy.views.gundam.GundamWidget import GundamWidget,gundams_need
from PhysicArmIK import ArmsIK
from PhysicJump import BigJump
from enum import Enum
print gundams_need

#___________________________________________________________________________________________________ Assignment2Widget
class PhysicWidget(PyGlassWidget):
    """A class for..."""
#===================================================================================================
#                                                                                       C L A S S
#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment2Widget."""
        super(PhysicWidget, self).__init__(parent, **kwargs)


        self.homeBtn.clicked.connect(self._handleReturnHome)
        self.plieBtn.clicked.connect(self._handlePlie)
        self.armBtn.clicked.connect(self._handleArms)
        self.plieBox.addItem("first Plie")
        self.plieBox.addItem("half Plie in first")
        self.plieBox.addItem("second Plie")
        self.plieBox.addItem("parallel Plie")
        self.plieBox.addItem("fifth Plie")
        self.armBox.addItem("fifth")
        self.plies = ["first","half","second","parallel","fifth"]
        self.arms = ["first","second","fifth"]
        self.jumpBtn.clicked.connect(self._handleJump)

    def _handleJump(self):
        global gundams_need
        start = self.startTimeBox_2.value()
        end = self.endTimeBox_2.value()
        for i in range(len(gundams_need)):
            jus = BigJump("jump",start,end,gundams_need[i][0],10,3,2)
            #jus2 = BigJump("jump",start,end,gundams_need[1][0],10,3,2)
    def _handleArms(self):
        global gundams_need
        ind = self.armBox.currentIndex()
        for i in range(len(gundams_need)):
            arms1 = ArmsIK(self.arms[ind],gundams_need[i][0])
        #arms1 = ArmsIK(self.arms[ind],gundams_need[1][0])
#===================================================================================================
#                                                                                 H A N D L E R S
    def _handlePlie(self):
        global gundams_need
        startTime = self.startTimeBox.value()
        endTime = self.endTimeBox.value()
        idx = self.plieBox.currentIndex()
        print gundams_need
        for i in range(len(gundams_need)):
            #plie1 = PlieIk(self.plies[idx],startTime,endTime,gundams_need[0][0])
            plie2 = PlieIk(self.plies[idx],startTime,endTime,gundams_need[i][0])

#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')



