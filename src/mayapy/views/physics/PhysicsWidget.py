# Assignment2Widget.py
# (C)2013
# Scott Ernst

from pyglass.widgets.PyGlassWidget import PyGlassWidget
from mayapy.views.gundam.gundam_skeleton_v1 import Skeleton
from physicPlie2 import typeOfPlie,Plies
from enum import Enum

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
        self.time1 = self.timeBox.value()

#===================================================================================================
#                                                                                 H A N D L E R S
    def _handlePlie(self):
        type1 = typeOfPlie(2)
        type2 = typeOfPlie(1)

#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleLeftFootButton(self):
        seleton_1 = Skeleton("bob");
