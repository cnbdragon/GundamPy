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
        self._createIK(name, side)


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

        self._createCalfArmor(name, side)

        pass


    def _createCalfArmor(self, name, side):
        p1 = mc.polySphere(r=10)[0]
        mc.scale(.35,1,.75)
        mc.move(5,0,0)

        p2 = mc.polySphere(r=10)[0]
        mc.scale(.35,1,.75)
        mc.move(-5,0,0)

        p3 = mc.polyCylinder(r=10, sx=40)[0]
        mc.rotate(0,0,'90deg')
        mc.scale(1,5,.75)

        #claf1 = mc.polyUnite(p1,p2,p3)
        #print calf1
        #calf1 = mc.polyBoolOp(p1, p3, op=1, n='calf')[0]
        #calf2 = mc.polyBoolOp(calf1, p2, op=1, n='calf')[0]

        p4 = mc.polyCube(w=10, h=10, d=10)
        #mc.scale(0,5,2)
        #mc.move(0,0,5)





        pass

    def _createThighArmor(self, name, side):
        pass


    def _createJoints(self, name, side):
        #bone
        mc.select(cl=True)


        self.j_hip = mc.joint(p=(0,107,-12), n=name+'_hip')
        self.j_knee = mc.joint(p=(0,54,-11), n=name+'_knee')
        #self.j_toe = mc.joint(p=(0,0,2), n=name+'_toe')

        mc.parent(self.femur,self.j_hip)
        mc.parent(self.tibia,self.j_knee)

        mc.parent(self.foot.j_ankle,self.j_knee)
        pass

    def _createIK(self, name, side):

        self.ik_ankle = mc.ikHandle(sj = self.j_hip, ee= self.foot.j_ankle, n=name+"_ankle_ik")
        self.ik_ball = mc.ikHandle(sj = self.foot.j_ankle, ee=self.foot.j_ball, n=name+"_ball_ik")
        self.ik_toe = mc.ikHandle(sj = self.foot.j_ball, ee=self.foot.j_toe, n=name+"_toe_ik")

        self.h_foot = mc.circle(nr=(0,1,0), c=(0,0,-12), r=20, n=name+"_foot_IK_handle")[0]
        mc.move(0,3,-12, self.h_foot+".scalePivot", self.h_foot+".rotatePivot")
        mc.parentConstraint( self.h_foot, self.ik_ankle[0], mo=True)
        mc.parentConstraint( self.h_foot, self.ik_ball[0], mo=True)
        mc.parentConstraint( self.h_foot, self.ik_toe[0], mo=True)
        #self.ik = mc.group(ankle_ik, ball_ik, toe_ik, n=name+"_leg_IK")
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

    def _createIK(self, name, side):
        pass

    def _deleteHistory(self):
        mc.select(self.j_ankle)
        mc.delete(ch=True)

#Leg('right', Side.right)
mc.select(cl=True)