# MayaPyApplication.py
# (C)2013
# Scott Ernst

from pyglass.app.PyGlassApplication import PyGlassApplication

#___________________________________________________________________________________________________ MayaPyApplication
class MayaPyApplication(PyGlassApplication):

#===================================================================================================
#                                                                                   G E T / S E T

#___________________________________________________________________________________________________ GS: debugRootResourcePath
    @property
    def debugRootResourcePath(self):
        return ['..', '..', 'resources']

#___________________________________________________________________________________________________ GS: splashScreenUrl
    @property
    def splashScreenUrl(self):
        return 'splashscreen.png'

#___________________________________________________________________________________________________ GS: appID
    @property
    def appID(self):
        return 'GundamPy'

#___________________________________________________________________________________________________ GS: appGroupID
    @property
    def appGroupID(self):
        return 'GundamPy'

#___________________________________________________________________________________________________ GS: mainWindowClass
    @property
    def mainWindowClass(self):
        from mayapy.MayaPyMainWindow import MayaPyMainWindow
        return MayaPyMainWindow

####################################################################################################
####################################################################################################

# set app icon
'''
app_icon = QtGui.QIcon()
app_icon.addFile('graphics/Gny-0042-874-head_16x16.png', QtCore.QSize(16,16))
app_icon.addFile('graphics/Gny-0042-874-head_24x24.png', QtCore.QSize(24,24))
app_icon.addFile('graphics/Gny-0042-874-head_32x32.png', QtCore.QSize(32,32))
app_icon.addFile('graphics/Gny-0042-874-head_48x48.png', QtCore.QSize(48,48))
app_icon.addFile('graphics/Gny-0042-874-head_256x256.png', QtCore.QSize(256,256))
app.setWindowIcon(app_icon)
'''
if __name__ == '__main__':
    MayaPyApplication().run()
