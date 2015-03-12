from mayapy.views.gundam.gundam_v3 import Gundam
import mayapy.views.gundam.leg_v3
import mayapy.views.gundam.arms_v3
import mayapy.views.gundam.torso_v3
import nimble
from nimble import cmds as mc




class ArmsIK():
    def __init__(self,name,gundamIns):
        self.name      = name
        self.gundamIns = gundamIns
        if self.gundamIns.currentArms == "straight":
            self.moveFifth()

        if (self.name == "first"):
            self.moveFirst()
        elif ( self.name == "second"):
            self.moveSecond()
        elif (self.name == "fifth"):
            self.moveFifth()
        else:
            print("error")
    def moveFirst(self):
        pass
    def moveSecond(self):
        pass
    def moveFifth(self):
        if self.gundamIns.currentArms == 'straight':
            self.gundamIns.currentArms = "fifth"
            #left arm:
            mc.select(self.gundamIns.leftArm.h_hand)
            mc.move(-10.285,0,r=True)
            mc.move(0,0,83.464,r=True)
            mc.move(-70,0,0,r=True)
            mc.move(0,0,-10, r=True)
            mc.move(0,-30,0, r=True)
            mc.move(0,0,-10,r=True)
            mc.rotate(0,-60,0,r=True)
            mc.select(cl=True)

            mc.select(self.gundamIns.rightArm.h_hand)
            '''
            mc.move(10.285,0,r=True)
            mc.move(0,0,83.464,r=True)
            mc.move(-70,0,0,r=True)
            mc.move(0,0,-10, r=True)
            mc.move(0,-30,0, r=True)
            mc.move(0,0,-10,r=True)
            mc.rotate(0,60,0,r=True)
            '''


        else:
            pass

