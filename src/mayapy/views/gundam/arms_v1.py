###
#
# hand by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side
import hand_v1

class Arm():
    def __init__(self, name, side):
        self.name = name
        self.side = side
        #self.foot = Foot(name, side)

        self._createGeometry(name, side)
        self._createJoints(name, side)


        self._deleteHistory()
        pass

    def _createGeometry(self, name, side):

        #create radius
        self.radius = mc.polyCube(sx=1, sy=1, sz=1, w=2,h=40, d=2, n=name+'_radius')[0]
        mc.move(0,20,0)

        self.elbow = mc.polyCylinder(h=5,r=2,n=name+'_elbow')[0]
        mc.move(0,41,0,r=True)
        mc.rotate(0,0,'90deg')
        self.radius = mc.polyUnite(self.radius,self.elbow, n=name+'_radius')[0]
        mc.move(0,41,0, self.radius+".scalePivot", self.radius+".rotatePivot")

        #create humerus
        self.humerus = mc.polyCube(sx=1, sy=1, sz=1, w=3,h=40, d=3, n=name+'_humerus')[0]
        mc.move(0,62,0)
        self.shoulder = mc.polySphere(r=5,n=name+'_shoulder')
        mc.move(0,84,0)
        self.humerus = mc.polyUnite(self.humerus,self.shoulder, n=name+'_humerus')[0]
        mc.move(0,84,0, self.humerus+".scalePivot", self.humerus+".rotatePivot")
        pass

    def _createJoints(self, name, side):
        #bone
        mc.select(cl=True)


        self.j_shoulder = mc.joint(p=(0,84,0), n=name+'_shoulder')
        self.j_elbow = mc.joint(p=(0,41,0), n=name+'_elbow')
        #self.j_toe = mc.joint(p=(0,0,2), n=name+'_toe')

        mc.parent(self.humerus,self.j_shoulder)
        mc.parent(self.radius,self.j_elbow)

        pass

    def _deleteHistory(self):
        mc.select(self.j_shoulder)
        mc.delete(ch=True)

#Arm('right', Side.right)
mc.select(cl=True)