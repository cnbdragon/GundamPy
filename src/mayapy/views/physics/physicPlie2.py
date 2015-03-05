from nimble import cmds as mc
from mayapy.views.gundam.gundam_skeleton_v1 import Skeleton
class Plies():
    def __init__(self):
        self.gravity= 9.8 #m/s^2
        self.velocity = 0 #m/s
        self.position = [("x",0),("y",0),("z",0)]
        self.rotation = [("ankle",0),("knee",0),("hip",0)]


    def getPosition(self):
        return self.position

    def getRotation(self):
        return self.rotation

    def getGundamFeet(self):
        feet_leftleg = Skeleton.leftLeg.j_ankle
        feet_rightleg = Skeleton.rightLeg.j_ankle
        return [feet_leftleg,feet_rightleg]

    def getGundamHip(self):
        hip_left = Skeleton.leftLeg.j_hip
        hip_right = Skeleton.rightLeg.j_hip
        return [hip_left,hip_right]

    def getGundamFemur(self):
        femur_left = Skeleton.leftLeg.j_knee
        femur_right = Skeleton.rightLeg.j_knee
        return [femur_left,femur_right]

    def moveFeet(self):
        feets = self.getGundamFeet()


    def moveHip(self):
        hips = self.getGundamHip()
        mc.select(hips[0])
        mc.rotate(0,90,0)
        mc.setKeyframe(hips[0].name,t=1)
        mc.select(hips[1])
        mc.rotate(0,90,0)
        mc.setKeyframe(hips[1].name,t=1)
    def moveFemur(self):
        pass

    def moveToso(self):
        pass

