import mayapy.views.gundam.gundam_v3
import mayapy.views.gundam.leg_v3
import mayapy.views.gundam.arms_v3
import mayapy.views.gundam.torso_v3
from PhysicPlieIk import PlieIk
import nimble
from nimble import cmds as mc



GRAVITY = -9.81 #m/s
MASS = 181.437 #kilograms is 400 pounds

class  BigJump():
    def __init__(self,name,start,end,gundamIns,plieTime,heightOfPlie,height = .5):
        self.name = name
        self.start = start
        self.end = end
        self.plieTime = plieTime
        self.heightOfPlie = heightOfPlie
        self.height = height
        self.gundamIns = gundamIns

        if self.name == "sissoneAttitude":
            self.sisoneAttitude()
        else:
            self.jump()



    def getHeight(self,v1):
        he1 = (v1**2)/(2.0*GRAVITY)
        print he1, "he1"
        he2 = (v1)*((self.end-self.start)/2.0)
        print he2, "he2"
        return he1+he2

    def getImpulse(self):

        impulse = (GRAVITY*MASS*self.plieTime)
        print impulse ,"1"
        impulse = impulse/self.heightOfPlie
        return impulse



    def sisoneAttitude(self):
        v_i = self.getImpulse()
        print v_i
        leg1 = self.getHeight(1)
        print(leg1, "leg1")
        return leg1

    def jump(self):
        PlieIk("half",self.start,(self.end-self.start)/5.0,self.gundamIns)

        mc.select(self.gundamIns.torso.h_hips)
        mc.move(0,120,0,r=True)
        mc.select(self.gundamIns.rightArm.h_hand)
        mc.move(0,120,0,r=True)
        mc.select(self.gundamIns.leftArm.h_hand)
        mc.move(0,120,0,r=True)
        mc.select(self.gundamIns.torso.h_shoulders)
        mc.move(0,120,0,r=True)
        mc.select(cl=True)
        #exit(0)

        mc.select(self.gundamIns.leftLeg.h_foot)
        mc.move(0,0,0,r=True)
        mc.select(cl=True)
        mc.select(self.gundamIns.rightLeg.h_foot)
        mc.move(0,0,-80,r=True)
        mc.move(0,50,0,r=True)
        mc.move(10,0,0,r=True)
        mc.move(0,50,0,r=True)
        mc.rotate(70,-160,70)
        #mc.rotate(0,70,0,r=True)
        #mc.rotate(0,0,-60,r=True)
        mc.select(cl=True)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand,t = (self.end-self.start)/5.0 + (self.end-self.start)/2+2)
        mc.select(self.gundamIns.rightLeg.h_foot)
        mc.rotate(0,-70,0)
        mc.move(-8,-100,90,r=True)
        mc.select(cl=True)
        mc.select(self.gundamIns.torso.h_hips,self.gundamIns.leftArm.h_hand,self.gundamIns.rightArm.h_hand,self.gundamIns.torso.h_shoulders)
        mc.move(0,-124,0, r= True)
        mc.setKeyframe(self.gundamIns.torso.h_hips,self.gundamIns.leftLeg.h_foot,self.gundamIns.rightLeg.h_foot,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand,t = (self.end-self.start))










