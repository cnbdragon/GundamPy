import mayapy.views.gundam.gundam_v3
import mayapy.views.gundam.leg_v3
import mayapy.views.gundam.arms_v3
import mayapy.views.gundam.torso_v3
import nimble
from nimble import cmds as mc


start = True
class PlieIk():

    def __init__(self,name,gundamIns):
        self.name = name
        self.gundamIns = gundamIns

        if (name == "first"):
            self.plieFirst()
        elif ( name == "second"):
            self.plieSecond()
        elif (name == "third"):
            self.plieThird()
        elif (name == "fourth"):
            self.plieFourth()
        else:
            self.plieFifth()

    def plieFirst(self):


        mc.select(self.gundamIns.leftLeg.h_foot)
        print("here", self.gundamIns)
        mc.rotate(0,-70,3)
        mc.move(-2,-107,12)
        mc.select(self.gundamIns.rightLeg.h_foot,cl=True)
        mc.rotate(0,70,3)
        mc.move(2,-107,3)


    def plieSecond(self):
        pass
    def plieThird(self):
        pass
    def plieFourth(self):
        pass
    def plieFifth(self):
        pass

