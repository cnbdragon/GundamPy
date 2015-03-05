# Assignment2Widget.py
# (C)2013
# Scott Ernst

from pyglass.widgets.PyGlassWidget import PyGlassWidget
from gundam_skeleton_v1 import Skeleton
from gundam_v2 import Gundam
from enum import Enum

#___________________________________________________________________________________________________ Assignment2Widget
class GundamWidget(PyGlassWidget):
    """A class for..."""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment2Widget."""
        super(GundamWidget, self).__init__(parent, **kwargs)

        self.SkeletonBtn.clicked.connect(self._handleSkeletonButton)
        self.V2Btn.clicked.connect(self._handleV2Button)
        self.homeBtn.clicked.connect(self._handleReturnHome)

#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleSkeletonButton(self):
        seleton_1 = Skeleton("Bob")

#___________________________________________________________________________________________________ _handleLeftFootBtn
    def _handleV2Button(self):
        gundam = Gundam("Jeremy")


