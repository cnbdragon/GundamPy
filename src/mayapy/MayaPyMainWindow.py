# MayaPyMainWindow.py
# (C)2013
# Scott Ernst

from PySide import QtCore
from PySide import QtGui

from pyglass.windows.PyGlassWindow import PyGlassWindow

from mayapy.views.home.MayaPyHomeWidget import MayaPyHomeWidget
from mayapy.views.assignment1.Assignment1Widget import Assignment1Widget
from mayapy.views.assignment2.Assignment2Widget import Assignment2Widget
from mayapy.views.gundam.GundamWidget import GundamWidget

#___________________________________________________________________________________________________ MayaPyMainWindow
class MayaPyMainWindow(PyGlassWindow):
    """A class for..."""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, **kwargs):
        PyGlassWindow.__init__(
            self,
            widgets={
                'home':MayaPyHomeWidget,
                'assignment1':Assignment1Widget,
                'assignment2':Assignment2Widget,
                'gundam':GundamWidget},
            title='GundamPy',
            **kwargs )

        self.setMinimumSize(1024,480)
        self.setContentsMargins(0, 0, 0, 0)

        widget = self._createCentralWidget()
        layout = QtGui.QVBoxLayout(widget)
        layout.setContentsMargins(0, 0, 0, 0)
        layout.setSpacing(0)
        widget.setLayout(layout)

        self.setActiveWidget('home')

        app_icon = QtGui.QIcon()
        app_icon.addFile('../graphics/Gny-0042-874-head_16x16.png', QtCore.QSize(16,16))
        app_icon.addFile('../graphics/Gny-0042-874-head_24x24.png', QtCore.QSize(24,24))
        app_icon.addFile('../graphics/Gny-0042-874-head_32x32.png', QtCore.QSize(32,32))
        app_icon.addFile('../graphics/Gny-0042-874-head_48x48.png', QtCore.QSize(48,48))
        app_icon.addFile('../graphics/Gny-0042-874-head_256x256.png', QtCore.QSize(256,256))
        self.setWindowIcon(app_icon)
