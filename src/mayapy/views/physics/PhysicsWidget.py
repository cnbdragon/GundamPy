# Assignment2Widget.py
# (C)2013
# Scott Ernst

from pyglass.widgets.PyGlassWidget import PyGlassWidget
from mayapy.views.gundam.gundam_skeleton_v1 import Skeleton
from physicPlie2 import typeOfPlie,Plies
from PhysicPlieIk import PlieIk,moveFeetFirst,moveFeetFifth
from mayapy.views.gundam.GundamWidget import GundamWidget,gundams_need
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

        self.leftFootBtn.clicked.connect(self._handleLeftFootButton)
        self.homeBtn.clicked.connect(self._handleReturnHome)
        self.plieBtn.clicked.connect(self._handlePlie)


#===================================================================================================
#                                                                                 H A N D L E R S
    def _handlePlie(self):
        global gundams_need
        times = self.timeBox.value()
        print gundams_need

        plie1 = PlieIk("first",0,times,gundams_need[0][0])

#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleLeftFootButton(self):
        seleton_1 = Skeleton("bob")

