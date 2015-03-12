###
#
# hand by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side
from hand_v3 import Hand

class Arm():
    def __init__(self, name, side, c1=None, c2=None, c3=None, c4=None, c5=None):
        self.name = name
        self.side = side
        if self.side == Side.right:
            self.sideMult = -1
        else:
            self.sideMult = 1
        self.color1 = c1
        self.color2 = c2
        self.color3 = c3
        self.color4 = c4
        self.color5 = c5
        if self.color1 is None:
            self.color1 = 'initialShadingGroup'
        if self.color2 is None:
            self.color2 = 'initialShadingGroup'
        if self.color3 is None:
            self.color3 = 'initialShadingGroup'
        if self.color4 is None:
            self.color4 = 'initialShadingGroup'
        if self.color5 is None:
            self.color5 = 'initialShadingGroup'

        self.hand = Hand(name, side)

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


        ######### shoulders ############
        t1 = mc.polyCube(sx=3,sy=3,sz=3,w=15, h=15, d=15, n='l_shoulder')[0]
        mc.sets(e=True, forceElement = self.color4)
        t1r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        #mc.scale(1,5,1)
        mc.move(self.sideMult*5,90,0,r=True)

        t2 = mc.polyCube(sx=3,sy=3,sz=3,w=10, h=15, d=10, n='r_shoulder')[0]
        mc.sets(e=True, forceElement = self.color4)
        t2r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        mc.scale(1,2.5,1)
        mc.move(0,63,0,r=True)

        t3 = mc.polyCube(sx=3,sy=3,sz=3,w=10, h=15, d=10, n='r_shoulder')[0]
        mc.sets(e=True, forceElement = self.color1)
        t3r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        mc.scale(1.2,2.25,1)

        mc.move(0,63,-1,r=True)

        t4 = mc.polyCube(sx=3,sy=3,sz=3,w=10, h=15, d=10, n='r_shoulder')[0]
        mc.sets(e=True, forceElement = self.color4)
        t4r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        mc.scale(1,2.5,1)
        mc.move(0,20,0,r=True)

        t5 = mc.polyCube(sx=3,sy=3,sz=3,w=10, h=15, d=10, n='r_shoulder')[0]
        mc.sets(e=True, forceElement = self.color1)
        t5r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        mc.scale(1.2,2.25,1.0)
        mc.move(0,20,-1,r=True)

        self.elbowArmor = mc.polyCube(sx=3,sy=3,sz=3,w=8, h=15, d=9, n='r_shoulder')[0]
        mc.sets(e=True, forceElement = self.color1)
        t5r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        mc.move(0,41,-1,r=True)

        self.humerus = mc.polyUnite(self.humerus,
                                     t1,t2,t3)

        self.radius = mc.polyUnite(self.radius,
                                   t4,t5)
    def _createJoints(self, name, side):
        #bone
        mc.select(cl=True)


        self.j_shoulder = mc.joint(p=(0,84,0), n=name+'_shoulder')
        self.j_elbow = mc.joint(p=(0,41,-1), n=name+'_elbow')
        #self.j_toe = mc.joint(p=(0,0,2), n=name+'_toe')

        mc.parent(self.humerus,self.j_shoulder)
        mc.parent(self.radius,self.j_elbow)
        mc.parent(self.elbowArmor, self.j_elbow)
        mc.parent(self.hand.j_wrist,self.j_elbow)

        pass

    def _deleteHistory(self):
        mc.select(self.j_shoulder)
        mc.delete(ch=True)

    def _createIK(self,name,side):

        self.ik_wrist = mc.ikHandle(sj = self.j_shoulder, ee=self.hand.j_wrist, n=name+"_wrist_ik")
        #self.ik_ball = mc.ikHandle(sj = self.foot.j_ankle, ee=self.foot.j_ball, n=name+"_ball_ik")
        #self.ik_toe = mc.ikHandle(sj = self.foot.j_ball, ee=self.foot.j_toe, n=name+"_toe_ik")


        self.h_hand = mc.circle(nr=(0,1,0), c=(0,0,0), r=20, n=name+"_hand_IK_handle")[0]

        #mc.move(0,3,-12, self.h_hand+".scalePivot", self.h_hand+".rotatePivot")
        mc.parentConstraint( self.h_hand, self.ik_wrist[0], mo=True)
        '''
        mc.parentConstraint( self.h_foot, self.ik_ball[0], mo=True)
        mc.parentConstraint( self.h_foot, self.ik_toe[0], mo=True)
        #self.ik = mc.group(ankle_ik, ball_ik, toe_ik, n=name+"_leg_IK")
        '''
        mc.parent(self.h_hand,self.radius)
        pass

#Arm('right', Side.right)
mc.select(cl=True)