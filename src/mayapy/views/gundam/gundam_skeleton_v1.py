###
#
# hand by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side
import hand_v1_a as hand
import leg_v1 as leg
import arms_v1 as arms
import torso_v1 as torso

class Skeleton:
    def __init__(self, name):
        self.name = name

        mc.select(cl=True)
        self.rightHand = hand.Hand('right', Side.right)
        mc.select(cl=True)
        self.leftHand = hand.Hand('left', Side.left)

        self.leftLeg = leg.Leg('left', Side.left)
        mc.select(cl=True)
        self.rightLeg = leg.Leg('right', Side.right)
        mc.select(cl=True)

        self.leftArm = arms.Arm('left', Side.left)
        mc.select(cl=True)
        self.rightArm = arms.Arm('right', Side.right)
        mc.select(cl=True)


        mc.select(self.rightHand.j_wrist)
        mc.move(-112, 173, 0, r=True)
        mc.rotate('90deg', '-90deg',0, r=True)
        mc.select(self.leftHand.j_wrist)
        mc.move(112, 173, 0, r=True)
        mc.rotate('90deg', '90deg',0, r=True)

        mc.select(self.rightLeg.j_hip)
        mc.move(-20,0,12, r=True)
        mc.select(self.leftLeg.j_hip)
        mc.move(20,0,12, r=True)

        mc.select(self.rightArm.j_sholder)
        mc.move(-28,90,0, r=True)
        mc.rotate(0,0,-90)
        mc.select(self.leftArm.j_sholder)
        mc.move(28,90,0, r=True)
        mc.rotate(0,0,90)

        self.torso = torso.Torso('torso')
        mc.select(self.torso.j_root)
        mc.move(0,107,0)

        mc.parent(self.rightLeg.j_hip, self.torso.j_root)
        mc.parent(self.leftLeg.j_hip, self.torso.j_root)
        mc.parent(self.rightArm.j_sholder, self.torso.j_neck)
        mc.parent(self.leftArm.j_sholder, self.torso.j_neck)
        mc.parent(self.leftHand.j_wrist, self.leftArm.j_elbow)
        mc.parent(self.rightHand.j_wrist, self.rightArm.j_elbow)

        mc.select(cl=True)
        self.j_root = mc.joint(p=(0,107,0), n=name+'_root')

        mc.parent(self.torso.j_root, self.j_root)








Skeleton('artemie')