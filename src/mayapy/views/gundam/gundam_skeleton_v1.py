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
import leg_v1
import arms_v1
import torso_v1

class Skeleton:
    def __init__(self, name):
        self.name = name

        mc.select(cl=True)
        self.rightHand = hand_v1.Hand('right', Side.right)
        mc.select(cl=True)
        self.leftHand = hand_v1.Hand('left', Side.left)

        self.leftLeg = leg_v1.Leg('left', Side.left)
        mc.select(cl=True)
        self.rightLeg = leg_v1.Leg('right', Side.right)
        mc.select(cl=True)

        self.leftArm = arms_v1.Arm('left', Side.left)
        mc.select(cl=True)
        self.rightArm = arms_v1.Arm('right', Side.right)
        mc.select(cl=True)


        mc.select(self.rightHand.j_wrist)
        mc.move(-112,176 ,0,r=True)
        mc.rotate('90deg', '-90deg',0, r=True)
        mc.select(self.leftHand.j_wrist)
        mc.move(112,176   ,0, r=True)
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

        self.torso = torso_v1.Torso('torso')
        mc.select(self.torso.j_root)
        mc.move(0,107,0)

        mc.parent(self.rightLeg.j_hip, self.torso.j_root)
        mc.parent(self.leftLeg.j_hip, self.torso.j_root)
        mc.parent(self.rightArm.j_sholder, self.torso.j_neck)
        mc.parent(self.leftArm.j_sholder, self.torso.j_neck)
        mc.parent(self.leftHand.j_wrist, self.leftArm.j_elbow)
        mc.parent(self.rightHand.j_wrist, self.rightArm.j_elbow)








Skeleton('artemie')