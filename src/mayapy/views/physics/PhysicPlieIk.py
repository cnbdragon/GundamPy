import mayapy.views.gundam.gundam_v3
import mayapy.views.gundam.leg_v3
import mayapy.views.gundam.arms_v3
import mayapy.views.gundam.torso_v3
import nimble
from nimble import cmds as mc

def moveFeetFirst(gundamIns):
    if gundamIns.currentFeet == 'parallel':
        mc.select(gundamIns.rightLeg.h_foot)
        print("here", gundamIns)
        mc.rotate(0,-70,0)
        mc.move(12.2,0,0,r=True)
        mc.select(gundamIns.leftLeg.h_foot)
        mc.rotate(0,70,0)
        mc.move(-12.2,0,0,r=True)
        mc.select(cl=True)
        mc.select(gundamIns.torso.h_hips,gundamIns.torso.h_shoulders,gundamIns.rightArm.h_hand,gundamIns.leftArm.h_hand)
    if (gundamIns.currentFeet == "second"):
        mc.select(gundamIns.rightLeg.h_foot)
        print("here", gundamIns)
        mc.move(19.8,0,0,r=True)
        mc.select(gundamIns.leftLeg.h_foot)
        mc.move(-19.8,0,0,r=True)
        mc.select(cl=True)
        mc.select(gundamIns.torso.h_hips,gundamIns.torso.h_shoulders,gundamIns.rightArm.h_hand,gundamIns.leftArm.h_hand)

    currentY= mc.getAttr(".translateY")
    mc.move(0,.5,0,r=True)
    mc.select(cl=True)

def moveFeetFifth(gundamIns):
    mc.select(gundamIns.rightLeg.h_foot)
    print("here", gundamIns)
    mc.rotate(0,-70,0)
    mc.move(-90,0,0,r=True)
    mc.select(gundamIns.leftLeg.h_foot)
    mc.rotate(0,70,0)
    mc.move(90,0,0,r=True)
    mc.select(gundamIns.torso.h_hips)
    currentY= mc.getAttr(".translateY")
    mc.move(0,2.3,0,r=True)

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
        elif (name == "half"):
            self.plieHalf(self.start,self.end)
        else:
            self.plieFifth(self.start,self.end)
    def plieHalf(self,start,end):
        if (self.gundamIns.currentFeet != "first"):
            moveFeetFirst(self.gundamIns)
            self.gundamIns.currentFeet = "first"


        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand,t = self.start)
        mc.select(self.gundamIns.torso.h_hips,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand)
        currentY = mc.getAttr(".translateY")
        mc.move(0,-31,0,r=True)
        mc.select(cl=True)
        #mc.currentTime((end-start)*2/2)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand,t = (self.end))
        mc.select(self.gundamIns.torso.h_hips,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand)
        mc.select(cl=True)

    def plieFirst(self,start,end):
        if (self.gundamIns.currentFeet != "first"):
            moveFeetFirst(self.gundamIns)
            self.gundamIns.currentFeet = "first"
        #mc.currentTime(start)
        print( start,(end-start))
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand,t = self.start)
        mc.select(self.gundamIns.torso.h_hips,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand)
        currentY = mc.getAttr(".translateY")
        mc.move(0,-31,0,r=True)
        mc.select(cl=True)
        #mc.currentTime((end-start)*2/2)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand,t = (self.end-self.start)/2)
        mc.select(self.gundamIns.torso.h_hips,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand)
        currentY = mc.getAttr(".translateY")

        mc.move(0,31,0,r=True)
        mc.select(cl=True)
        #mc.currentTime(end)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = self.end)
        mc.select(cl=True)


    def plieSecond(self,start,end):
        pass
    def plieThird(self,start,end):
        pass
    def plieFourth(self,start,end):
        pass
    def plieFifth(self,start,end):
        pass

