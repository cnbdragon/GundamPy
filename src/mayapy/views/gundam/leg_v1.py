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

        self._createGeometry(name, side)
        self._createJoints(name, side)


        self._deleteHistory()
        pass

    def _createGeometry(self, name, side):

        #create tibia
        self.tibia = mc.polyCube(sx=1, sy=1, sz=1, w=2,h=50, d=2, n=name+'_tibia')[0]
        mc.move(0,28,-12)

        self.knee = mc.polyCylinder(h=5,r=2,n=name+'_knee')[0]
        mc.move(0,54,-12,r=True)
        mc.rotate(0,0,'90deg')
        self.tibia = mc.polyUnite(self.tibia,self.knee, n=name+'_tibia')[0]
        mc.move(0,54,-12, self.tibia+".scalePivot", self.tibia+".rotatePivot")

        #create feamer
        self.femur = mc.polyCube(sx=1, sy=1, sz=1, w=3,h=50, d=3, n=name+'_feamer')[0]
        mc.move(0,80,-12)
        self.hip = mc.polySphere(r=5,n=name+'_hip')
        mc.move(0,107,-12)
        self.femur = mc.polyUnite(self.femur,self.hip, n=name+'_femur')[0]
        mc.move(0,107,-12, self.femur+".scalePivot", self.femur+".rotatePivot")
        pass

    def _createJoints(self, name, side):
        #bone
        mc.select(cl=True)


        self.j_hip = mc.joint(p=(0,107,-12), n=name+'_hip')
        self.j_knee = mc.joint(p=(0,54,-12), n=name+'_knee')
        #self.j_toe = mc.joint(p=(0,0,2), n=name+'_toe')

        mc.parent(self.femur,self.j_hip)
        mc.parent(self.tibia,self.j_knee)

        mc.parent(self.foot.j_ankle,self.j_knee)
        pass

    def _deleteHistory(self):
        mc.select(self.j_hip)
        mc.delete(ch=True)

class Foot():
    def __init__(self, name, side):
        self.name = name
        self.side = side
        self._createGeometry(name, side)
        self._createJoints(name,side)

        self._deleteHistory()
        pass

    def _createGeometry(self, name, side):

        #build toe
        self.side = side
        self.name = name
        self.toe = mc.polyCube(sx=2, sy=2, sz=2, w=5,h=2, d=3, n=name+'_toe')[0]
        self.ball = mc.polyCylinder(h=5,n=name+'_ball')[0]
        mc.move(0,0,-2,r=True)
        mc.rotate(0,0,'90deg')
        self.toe = mc.polyUnite(self.toe,self.ball, n=name+'_toe')[0]
        mc.move(0,0,-2, self.toe+".scalePivot", self.toe+".rotatePivot")

        #build arch
        self.arch = mc.polyCube(w=5, d=10, n=name+'_arch')[0]
        mc.move(0,0,-7,r=True)

        #mc.select(f[8]-f[11])
        mc.select(self.arch+'.f[2]')
        mc.move(0,3,0,r=True)

        self.ankle = mc.polySphere(r=2.5)[0]
        mc.move(0,3,-12,r=True)

        self.arch = mc.polyUnite(self.arch, self.ankle, n=name+'_arch')[0]



        mc.move(0,3,-12, self.arch+".scalePivot", self.arch+".rotatePivot")
        #self.heal = mc.polyCube(sx=2, sy=2, sz=2,w=5, h=3, n=name+'_heal')
        pass

    def _createJoints(self, name, side):

        #bone
        mc.select(cl=True)


        self.j_ankle = mc.joint(p=(0,3,-12), n=name+'_ankle')
        self.j_ball = mc.joint(p=(0,0,-2), n=name+'_ball')
        self.j_toe = mc.joint(p=(0,0,2), n=name+'_toe')

        mc.parent(self.arch,self.j_ankle)
        mc.parent(self.toe,self.j_toe)
        pass

    def _deleteHistory(self):
        mc.select(self.j_ankle)
        mc.delete(ch=True)

#Leg('right', Side.right)
mc.select(cl=True)