###
#
# hand by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side
import hand_v2 as hand
import leg_v3 as leg
import arms_v3 as arms
import torso_v3 as torso

class Gundam:
    def __init__(self, name):
        self.name = name

        '''
        mc.select(cl=True)
        self.rightHand = hand.Hand(name+'_right', Side.right)
        mc.select(cl=True)
        self.leftHand = hand.Hand(name+'_left', Side.left)
        '''
        self.leftLeg = leg.Leg(name+'_left', Side.left)
        mc.select(cl=True)
        self.rightLeg = leg.Leg(name+'_right', Side.right)
        mc.select(cl=True)

        self.leftArm = arms.Arm(name+'_left', Side.left)
        mc.select(cl=True)
        self.rightArm = arms.Arm(name+'_right', Side.right)
        mc.select(cl=True)


        mc.select(self.rightArm.hand.j_wrist)
        #mc.move(-112, 173, 0, r=True)
        mc.rotate('180deg', '-90deg',0, r=True)
        mc.select(self.leftArm.hand.j_wrist)
        #mc.move(112, 173, 0, r=True)
        mc.rotate('180deg', '90deg',0, r=True)

        mc.select(self.rightLeg.j_hip)
        mc.move(-20,0,12, r=True)
        mc.select(self.leftLeg.j_hip)
        mc.move(20,0,12, r=True)

        mc.select(self.rightLeg.h_foot)
        mc.move(-20,0,12, r=True)
        mc.select(self.leftLeg.h_foot)
        mc.move(20,0,12, r =True)

        mc.select(self.rightArm.j_shoulder)
        mc.move(-28,90,0, r=True)
        mc.rotate(0,0,-90)
        mc.select(self.leftArm.j_shoulder)
        mc.move(28,90,0, r=True)
        mc.rotate(0,0,90)

        self.torso = torso.Torso('torso')
        mc.select(self.torso.j_root)
        mc.move(0,107,0)

        mc.parent(self.rightLeg.j_hip, self.torso.j_root)
        mc.parent(self.leftLeg.j_hip, self.torso.j_root)
        mc.parent(self.rightArm.j_shoulder, self.torso.j_neck)
        mc.parent(self.leftArm.j_shoulder, self.torso.j_neck)
        #mc.parent(self.leftArm.hand.j_wrist, self.leftArm.j_elbow)
        #mc.parent(self.rightArm.hand.j_wrist, self.rightArm.j_elbow)

        mc.select(cl=True)
        self.j_root = mc.joint(p=(0,107,0), n=name+'_root')

        mc.parent(self.torso.j_root, self.j_root)

        mc.setAttr(self.j_root+ " | " + self.torso.j_root+".segmentScaleCompensate", 0)

        mc.select(cl=True)

        self.parentIKToRoot()

        print self.leftArm.h_hand

    def parentIKToRoot(self):
        mc.parent(self.rightLeg.ik_ankle[0], self.j_root)
        mc.parent(self.rightLeg.ik_ball[0], self.j_root)
        mc.parent(self.rightLeg.ik_toe[0], self.j_root)

        mc.parent(self.leftLeg.ik_ankle[0], self.j_root)
        mc.parent(self.leftLeg.ik_ball[0], self.j_root)
        mc.parent(self.leftLeg.ik_toe[0], self.j_root)

        mc.parent(self.leftArm.ik_wrist[0], self.j_root)
        mc.parent(self.rightArm.ik_wrist[0], self.j_root)
        pass

    def attachIKToRoot(self):
        mc.parent(self.leftLeg.h_foot, self.j_root)
        mc.parent(self.rightLeg.h_foot, self.j_root)
        mc.parent(self.leftArm.h_hand, self.j_root)
        mc.parent(self.rightArm.h_hand, self.j_root)
        pass

    def detachIKFromRoot(self):
        mc.parent(self.j_root+"|"+self.leftLeg.h_foot, world=True)
        mc.parent(self.j_root+"|"+self.rightLeg.h_foot, world=True)
        mc.parent(self.j_root+"|"+self.leftArm.h_hand, world=True)
        mc.parent(self.j_root+"|"+self.rightArm.h_hand, world=True)
        pass

    def attachArmsIKToRoot(self):
        mc.parent(self.leftLeg.h_foot, self.j_root)
        mc.parent(self.rightLeg.h_foot, self.j_root)
        pass

    def detachArmsIKFromRoot(self):
        mc.parent(self.j_root+"|"+self.leftArm.h_hand, world=True)
        mc.parent(self.j_root+"|"+self.rightArm.h_hand, world=True)
        pass

    def attachLegsIKToRoot(self):
        mc.parent(self.leftLeg.h_foot, self.j_root)
        mc.parent(self.rightLeg.h_foot, self.j_root)
        pass

    def detachLegsIKFromRoot(self):
        mc.parent(self.j_root+"|"+self.leftLeg.h_foot, world=True)
        mc.parent(self.j_root+"|"+self.rightLeg.h_foot, world=True)
        pass

    def __str__(self):
        return self.name
        pass

    def scale(self,ratio):
        mc.select(self.j_root)
        mc.scale(ratio, ratio, ratio, r=True)


#Gundam('artemie')