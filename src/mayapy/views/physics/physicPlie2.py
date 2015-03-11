from nimble import cmds as mc
from mayapy.views.gundam.gundam_skeleton_v1 import Skeleton
class Plies():
    def __init__(self,timel):
        self.gravity= 9.8 #m/s^2
        self.velocity = 0 #m/s
        self.position = [("x",0),("y",0),("z",0)]
        self.rotation = [("ankle",0),("knee",0),("hip",0)]
        self.skeletons = []
        self.timel = timel
    def getPosition(self):
        return self.position

    def getRotation(self):
        return self.rotation

    def getGundamFeet(self):
        feet_leftleg  = self.skeletons[0].leftLeg.foot.j_ankle
        feet_rightleg = self.skeletons[0].rightLeg.foot.j_ankle
        return [feet_leftleg,feet_rightleg]

    def getGundamHip(self):
        hip_left  = self.skeletons[0].leftLeg.j_hip
        hip_right = self.skeletons[0].rightLeg.j_hip
        return [hip_left,hip_right]

    def getGundamFemur(self):
        femur_left  = self.skeletons[0].leftLeg.j_knee
        femur_right = self.skeletons[0].rightLeg.j_knee
        return [femur_left,femur_right]

    def moveFeet(self,xrotate,yrotate,zrotate):
        feets = self.getGundamFeet()
        mc.select(feets[0])
        mc.rotate(xrotate,yrotate,zrotate)
        mc.setKeyframe(feets[0],t=self.timel)
        mc.select(feets[1])
        mc.rotate(xrotate,yrotate,zrotate)
        mc.setKeyframe(feets[1],t=self.timel)

    def moveHip(self,xrotate,yrotate,zrotate):
        hips = self.getGundamHip()
        mc.select(hips[0])
        mc.rotate(-xrotate,yrotate,zrotate)
        mc.setKeyframe(hips[0],t=self.timel)
        mc.select(hips[1])
        mc.rotate(-xrotate,-yrotate,zrotate)
        mc.setKeyframe(hips[1],t=self.timel)

    def moveFemur(self,xrotate,yrotate,zrotate):
        femur = self.getGundamFemur()
        mc.select(femur[0])
        mc.rotate(xrotate,yrotate,zrotate)
        mc.setKeyframe(femur[0],t=self.timel)
        mc.select(femur[1])
        mc.rotate(xrotate,yrotate,zrotate)
        mc.setKeyframe(femur[1],t=self.timel)

    def moveToso(self):
        pass


#plie= Plies(0)
class typeOfPlie():
    def __init__(self,num):
        self.num = num
        if self.num == 1:
            self.feetFirst()
        elif self.num == 2:
            self.feetSecond()
        elif self.num == 3:
            self.feetThird()
        elif self.num == 4:
            self.feetFourth()
        else:
            self.feetFifth()
    def feetFirst(self):
        plie.timel=31
        plie.timel = 90
        plie.moveHip(9,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
        #middle
        plie.moveHip(30,90,0)
        plie.moveFemur(40,0,0)
        plie.moveFeet(-15,0,0)
        #end
        plie.timel = 120
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
    def feetSecond(self):
        plie.timel=2
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
        #middle
        plie.timel = 9
        plie.moveHip(30,90,0)
        plie.moveFemur(40,0,0)
        plie.moveFeet(-15,0,0)
        #end
        plie.timel = 20
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
    def feetThird(self):
        plie.timel=2
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
        #middle
        plie.timel = 9
        plie.moveHip(30,90,0)
        plie.moveFemur(40,0,0)
        plie.moveFeet(-15,0,0)
        #end
        plie.timel = 20
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
    def feetFourth(self):
        plie.timel=2
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
        #middle
        plie.timel = 9
        plie.moveHip(30,90,0)
        plie.moveFemur(40,0,0)
        plie.moveFeet(-15,0,0)
        #end
        plie.timel = 20
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
    def feetFifth(self):
        plie.timel=2
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)
        #middle
        plie.timel = 9
        plie.moveHip(30,90,0)
        plie.moveFemur(40,0,0)
        plie.moveFeet(-15,0,0)
        #end
        plie.timel = 20
        plie.moveHip(0,90,0)
        plie.moveFemur(0,0,0)
        plie.moveFeet(-15,0,0)

