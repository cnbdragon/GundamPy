import mayapy.views.gundam.gundam_v3
import mayapy.views.gundam.leg_v3
import mayapy.views.gundam.arms_v3
import mayapy.views.gundam.torso_v3
import nimble
from nimble import cmds as mc

class Turn():
    def __init__(self,name,start,end,gundamIns):
        self.name = name
        self.start = start
        self.end = end
        self.gundamIns = gundamIns

        if (self.name == "Turn"):
            self.turns(self.start,self.end)

    def turns(self,start,end):

        mc.select(self.gundamIns.rightLeg.h_foot)
        mc.move(0,44,0,r=True)
        mc.rotate(137,-70,0,)
        mc.select(cl=True)
        mc.select(self.gundamIns.torso.h_hips)
        mc.move(20,5,0,r=True)
        mc.select(self.gundamIns.rightArm.h_hand)
        mc.move(20,5,0,r=True)
        mc.select(self.gundamIns.leftArm.h_hand)
        mc.move(20,5,0,r=True)
        mc.select(self.gundamIns.torso.h_shoulders)
        mc.move(20,5,0,r=True)
        mc.select(cl=True)
        mc.select(self.gundamIns.rightLeg.h_foot)
        mc.move(0,5,0,r=True)
        mc.select(cl=True)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = self.start)



        mc.select(self.gundamIns.j_root)
        mc.rotate(0,-45 ,0)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end -self.start)/9.0)
        mc.select(cl=True)
        mc.select(self.gundamIns.j_root)
        mc.rotate(0,-90 ,0)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end -self.start)*2.0/9.0)
        mc.select(cl=True)
        mc.select(self.gundamIns.j_root)
        mc.rotate(0,-135 ,0)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end -self.start)*3.0/9.0)
        mc.select(cl=True)
        mc.select(self.gundamIns.j_root)
        mc.rotate(0,-180 ,0)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end -self.start)*4.0/9.0)
        mc.select(cl=True)
        mc.select(self.gundamIns.j_root)
        mc.rotate(0,-225 ,0)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end -self.start)*5.0/9.0)
        mc.select(cl=True)
        mc.select(self.gundamIns.j_root)
        mc.rotate(0,-270 ,0)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end -self.start)*6/9.0)
        mc.select(cl=True)
        mc.select(self.gundamIns.j_root)
        mc.rotate(0,-315 ,0)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end -self.start)*7.0/9.0)
        mc.select(cl=True)
        mc.select(self.gundamIns.j_root)
        mc.rotate(0,-360 ,0)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end -self.start)*8.0/9.0)
        mc.select(cl=True)
        mc.select(self.gundamIns.rightLeg.h_foot)
        mc.move(-20,-44,0,r=True)
        mc.rotate(0,-70,0,)
        mc.select(cl=True)
        mc.select(self.gundamIns.torso.h_hips)
        mc.move(0,-5,0,r=True)
        mc.select(self.gundamIns.rightArm.h_hand)
        mc.move(0,-5,0,r=True)
        mc.select(self.gundamIns.leftArm.h_hand)
        mc.move(0,-5,0,r=True)
        mc.select(self.gundamIns.torso.h_shoulders)
        mc.move(0,-5,0,r=True)
        mc.select(cl=True)
        mc.select(self.gundamIns.rightLeg.h_foot)
        mc.move(0,-5,0,r=True)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand, t = (self.end-self.start)*9.0/9.0)

        mc.select(cl=True)



