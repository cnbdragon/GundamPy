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

class Skeleton:
    def __init__(self, name):
        self.name = name

        mc.select(cl=True)
        self.rightHand = hand_v1.Hand('right', Side.right)
        mc.select(cl=True)
        self.leftHand = hand_v1.Hand('left', Side.left)

        mc.select(self.rightHand.j_wrist)
        mc.move(-5,2,0,r=True)
        mc.rotate('90deg', '-90deg',0, r=True)
        mc.select(self.leftHand.j_wrist)
        mc.move(5,2,0, r=True)
        mc.rotate('90deg', '90deg',0, r=True)


Skeleton('artemie')