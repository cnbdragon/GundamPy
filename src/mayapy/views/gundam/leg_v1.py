###
#
# hand by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side


class Leg():
    def __init__(self, name, side):
        self.name = name
        self.side = side
        self.foot = Foot(name, side)
        pass

    def _createGeometry(self,side):
        self.tibia = mc.polyCube()
        self.feamer = mc.polyCube()
        pass

    def _createJoints(self,side):
        pass

class Foot():
    def __init__(self, name, side):
        self.name = name
        self.side = side
        self._createGeometry(name, side)
        self._createJoints(name,side)


        pass

    def _createGeometry(self, name, side):
        self.side = side
        self.name = name
        self.toe = mc.polyCube(sx=2, sy=2, sz=2, n=name+'_toe')
        self.arch = mc.polyCube(sx=2, sy=2, sz=2, n=name+'_arch')
        self.heal = mc.polyCube(sx=2, sy=2, sz=2, n=name+'_heal')
        pass

    def _createJoints(self, name, side):

        #bone
        mc.select(cl=True)


        self.j_ankle = mc.joint(p=(0,-2,0), n=name+'_ankle')
        self.j_ball = mc.joint(p=(0,-2,0), n=name+'_ball')
        self.j_toe = mc.joint(p=(0,-2,0), n=name+'_toe')
        pass


Leg('right', Side.right)