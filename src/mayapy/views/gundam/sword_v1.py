import nimble
from nimble import cmds as mc

class Sword():
    def __init__(self, name):
        self.name = name
        self._createGeometry(name)

    def _createGeometry(self,name):
        self.spine = mc.polyCube(w=4,d=8,h=150, n=name+'_sword_spine')
        self.tip1 = mc.polyCube(w=4,d=8,h=20)
        pass

