###
#
# torso by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side


class Torso():
    def __init__(self, name):
        self.name = name
        #self.side = side
        #self.foot = Foot(name, side)

        self._createGeometry(name)
        self._createJoints(name)


        self._deleteHistory()
        pass

    def _createGeometry(self, name):
        '''
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
        '''

        self.spine = mc.polyCylinder(h=75,r=2,n=name+'_spine')[0]
        mc.move(0,30,0)
        self.pelvic = mc.polyCylinder(h=40,r=2,n=name+'_pelvic')[0]
        mc.rotate(0,0,'90deg')
        self.clavical = mc.polyCylinder(h=56,r=2,n=name+'_clavical')[0]
        mc.rotate(0,0,'90deg')
        mc.move(0,67,0)

        #self.hip = mc.polySphere(r=5,n=name+'_hip')

        self.torso = mc.polyUnite(self.spine,self.pelvic,self.clavical,n=name)[0]


    def _createJoints(self, name):
        #bone
        mc.select(cl=True)


        self.j_root = mc.joint(p=(0,0,0), n=name+'_j_root')
        self.j_neck = mc.joint(p=(0,67,0), n=name+'_j_neck')


        mc.parent(self.torso,self.j_root)

        pass

    def _deleteHistory(self):
        mc.select(self.j_root)
        mc.delete(ch=True)

#Torso('torso')