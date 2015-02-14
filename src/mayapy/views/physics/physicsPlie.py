#__author__ = 'kirsten'

GRAVITY = 9.8 #m/s2
from nimble import cmds
class Plie():
    def __init__(self,robot):
        self.robot = robot
        self.leftLegStart = ["self.robot.getlefxposit","self.robot.getleftyposit","self.robot.getleftzposit"]
        self.rightLegStart = ["self.robot.getrightxposit","self.robot.getrightyposit","self.robot.getrightzposit"]
        self.centerOfMassStart = ["self.robot.getcenterxposit","self.robot.getcenteryposit","self.robot.getcenterzposit"]
        self.leftLegCurrent = self.leftlegstart
        self.rightLegCurrent = self.rightlegstart
        self.centerOfMassCurrent = self.centerofmasscurrent
        self.velocity = [0,0,0]
        self.force = [0,GRAVITY,0]
        self.time = 0
        self.depth = 1
        self.resistance

    def getFeetPosition(self):
        self.feetPlacement = "robot.feetplacement"
        return [self.leftLegCurrent,self.rightLegCurrent,self.centerOfMassCurrent]

    def setFeetPosition(self, list_of_list):
        self.feetPlacement = " position"
        self.leftLegCurrent = list_of_list[0]
        self.rightLegCurrent = list_of_list[1]
        self.centerOfMassCurrent = list_of_list[2]

    def getKneeJoint(self):
        return ["self.robot.LeftKneeJoint", "self.robot.RightKneeJoint"]

    def getWeight(self):
        return "self.robot.weight"

    def getImpulse(self):

        for i in range(self.time):
            self.velocity[0] += self.force[0] * self.time
            self.velocity[1] += self.force[1] * self.time - self.resistance
            self.velocity[2] += self.force[2] * self.time

    def bendKnees(self):
        kneeJoints= self.getKneeJoint()
        # keeplocked in z
        d = cmds.select(kneeJoints[0])

        kneeJoints.move(self.toejointonleftfootx,self.tojointonleftfooty*self.depth, self.toejointonleftfootz)
        kneeJoints.move(self.toejointonrightfootx,self.tojointonrightfooty*self.depth, self.toejointonrightfootz)
        d = cmds.select("center of gravity")
        "center of gravity".move(self.centerOfMassCurrent[0],self.centerOfMassCurrent[1]*self.depth,self.centerOfMassCurrent)
        self.getImpulse()

