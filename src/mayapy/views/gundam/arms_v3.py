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
        self._createIK(name, side)

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

    def _createIK(self,name,side):
        #self.ik_wrist = mc.ikHandle(sj = self.j_shoulder, ee= self.hand.j_wrist, n=name+"_wrist_ik")
        #self.ik_ball = mc.ikHandle(sj = self.foot.j_ankle, ee=self.foot.j_ball, n=name+"_ball_ik")
        #self.ik_toe = mc.ikHandle(sj = self.foot.j_ball, ee=self.foot.j_toe, n=name+"_toe_ik")

        '''
        self.h_foot = mc.circle(nr=(0,1,0), c=(0,0,-12), r=20, n=name+"_foot_IK_handle")[0]
        mc.move(0,3,-12, self.h_foot+".scalePivot", self.h_foot+".rotatePivot")
        mc.parentConstraint( self.h_foot, self.ik_ankle[0], mo=True)
        mc.parentConstraint( self.h_foot, self.ik_ball[0], mo=True)
        mc.parentConstraint( self.h_foot, self.ik_toe[0], mo=True)
        #self.ik = mc.group(ankle_ik, ball_ik, toe_ik, n=name+"_leg_IK")
        '''
        pass

#Arm('right', Side.right)
mc.select(cl=True)