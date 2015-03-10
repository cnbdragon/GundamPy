import mayapy.views.gundam.gundam_v3
import mayapy.views.gundam.leg_v3
import mayapy.views.gundam.arms_v3
import mayapy.views.gundam.torso_v3
import nimble
from nimble import cmds as mc
def moveFeetFirst(gundamIns):
    mc.select(gundamIns.rightLeg.h_foot)
    print("here", gundamIns)
    mc.rotate(0,-70,0)
    mc.move(19.8,0,0,r=True)
    mc.select(gundamIns.leftLeg.h_foot)
    mc.rotate(0,70,0)
    mc.move(-19.8,0,0,r=True)

    gundamIns.detachLegsIKFromRoot()
    mc.select(gundamIns.j_root)
    currentY= mc.getAttr(".translateY")
    mc.move(0,-2.3,0,r=True)

def moveFeetFifth(gundamIns):
    mc.select(gundamIns.rightLeg.h_foot)
    print("here", gundamIns)
    mc.rotate(0,-70,0)
    mc.move(-2.8,0,0,r=True)
    mc.select(gundamIns.leftLeg.h_foot)
    mc.rotate(0,70,0)
    mc.move(2.8,0,0,r=True)
    gundamIns.detachLegsIKFromRoot()
    mc.select(gundamIns.j_root)
    currentY= mc.getAttr(".translateY")
    mc.move(0,-2.3,0,r=True)

class PlieIk():

    def __init__(self,name,start,end,gundamIns):
        self.name = name
        self.gundamIns = gundamIns
        self.start = start
        self.end = end

        if (name == "first"):
            self.plieFirst(self.start,self.end)
        elif ( name == "second"):
            self.plieSecond(self.start,self.end)
        elif (name == "third"):
            self.plieThird(self.start,self.end)
        elif (name == "fourth"):
            self.plieFourth(self.start,self.end)
        else:
            self.plieFifth(self.start,self.end)

    def plieFirst(self,start,end):
        moveFeetFirst(self.gundamIns)
        mc.setKeyframe(self.gundamIns.j_root,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,t=start)
        mc.select(self.gundamIns.j_root)
        currentY = mc.getAttr(".translateY")
        mc.move(0,-33,0,r=True)
        mc.setKeyframe(self.gundamIns.j_root,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot, t=(end-start)/2)
        currentY = mc.getAttr(".translateY")
        mc.move(0,33,0,r=True)
        mc.setKeyframe(self.gundamIns.j_root,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot, t=end)


    def plieSecond(self,start,end):
        pass
    def plieThird(self,start,end):
        pass
    def plieFourth(self,start,end):
        pass
    def plieFifth(self,start,end):
        pass

