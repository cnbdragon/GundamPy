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
        PlieIk("first",self.start,self.end/3.0,self.gundamIns)

        mc.select(self.gundamIns.rightLeg.h_foot)
        mc.rotate(-120,0,0, r=True)
        mc.select(cl=True)
        mc.select(self.gundamIns.leftLeg.h_foot)
        mc.rotate(90,0,0)
        mc.select(cl=True)
        mc.select(self.gundamIns.torso.h_hips,self.gundamIns.torso.h_shoulders,self.gundamIns.rightArm.h_hand,self.gundamIns.leftArm.h_hand)

        mc.setKeyframe(self.gundamIns.torso.j_root,t=((self.start-self.end)/3.0)/2 )








print ( .44/2)