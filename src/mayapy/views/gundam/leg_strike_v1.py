###
#
# hand by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side


class Leg():
    def __init__(self, name, side,c1=None,c2=None,c3=None):
        self.name = name
        self.side = side

        self.color1 = c1
        self.color2 = c2
        self.color3 = c3
        if self.color1 is None:
            self.color1 = 'initialShadingGroup'
        if self.color2 is None:
            self.color2 = 'initialShadingGroup'
        if self.color3 is None:
            self.color3 = 'initialShadingGroup'

        self.foot = Foot(name, side,c1,c2,c3)

        self._createGeometry(name, side)
        self._createJoints(name, side)
        self._createIK(name, side)


        self._deleteHistory()
        pass

    def _createGeometry(self, name, side):

        #create tibia
        self.tibia = mc.polyCube(sx=1, sy=1, sz=1, w=2,h=50, d=2, n=name+'_tibia')[0]
        mc.move(0,28,-12)

        self.knee = mc.polyCylinder(h=5,r=2,n=name+'_knee')[0]
        mc.move(0,54,-12,r=True)
        mc.rotate(0,0,'90deg')
        self.tibia = mc.polyUnite(self.tibia,self.knee, n=name+'_tibia')[0]

        self.llegArmor = mc.polyCube(w=8,h=30,d=8)[0]
        mc.move(0,22,-12)

        mc.select(self.llegArmor+'.f[3]')
        mc.scale(1.5,1,1.5)
        mc.select(self.llegArmor+'.e[0]')
        mc.polySubdivideEdge(dv=2)
        mc.select(self.llegArmor+'.e[12]')
        mc.move(0,2,0, r=True)
        self.tibia = mc.polyUnite(self.tibia,self.llegArmor, n=name+'_tibia')[0]

        mc.move(0,54,-12, self.tibia+".scalePivot", self.tibia+".rotatePivot")

        #create feamer
        self.femur = mc.polyCube(sx=1, sy=1, sz=1, w=3,h=50, d=3, n=name+'_feamer')[0]
        mc.move(0,80,-12)
        self.hip = mc.polySphere(r=5,n=name+'_hip')
        mc.move(0,107,-12)
        self.femur = mc.polyUnite(self.femur,self.hip, n=name+'_femur')[0]
        mc.move(0,107,-12, self.femur+".scalePivot", self.femur+".rotatePivot")

        self._createCalfArmor(name, side)

        pass


    def _createCalfArmor(self, name, side):
        p1 = mc.polySphere(r=10)[0]
        mc.scale(.35,1.5,.75)
        mc.move(5,0,0)

        p2 = mc.polySphere(r=10)[0]
        mc.scale(.35,1.5,.75)
        mc.move(-5,0,0)

        p3 = mc.polyCylinder(r=10, sx=40)[0]
        mc.rotate(0,0,'90deg')
        mc.scale(1.5,5,.75)

        #claf1 = mc.polyUnite(p1,p2,p3)
        #print calf1
        #calf1 = mc.polyBoolOp(p1, p3, op=1, n='calf')[0]
        #calf2 = mc.polyBoolOp(calf1, p2, op=1, n='calf')[0]

        p4 = mc.polyCube(w=10, h=10, d=10)[0]
        mc.move(0,10,-5)
        p5 = mc.polyCube(w=10, h=10, d=10)[0]
        mc.move(0,10,-5)
        p6 = mc.polyCube(w=10, h=10, d=10)[0]
        mc.move(0,10,-5)

        c1 = mc.polyBoolOp(p1,p4, op=2)[0]
        c2 = mc.polyBoolOp(p2,p5, op=2)[0]
        c3 = mc.polyBoolOp(p3,p6, op=2)[0]
        claf1 = mc.polyUnite(c1,c2,c3)
        mc.sets(e=True, forceElement = self.color1)
        mc.move(0,40,-10)

        self.tibia = mc.polyUnite(self.tibia, claf1)

        t1 = mc.polyCube(sx=3,sy=3,sz=3,w=10, h=10, d=10, n='thigh')[0]
        t1r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        mc.scale(1,5,1)
        mc.move(0,75,-12,r=True)

        self.femur = mc.polyUnite(self.femur, t1)




        pass

    def _createThighArmor(self, name, side):
        pass


    def _createJoints(self, name, side):
        #bone
        mc.select(cl=True)


        self.j_hip = mc.joint(p=(0,107,-12), n=name+'_hip')
        self.j_knee = mc.joint(p=(0,54,-11), n=name+'_knee')
        #self.j_toe = mc.joint(p=(0,0,2), n=name+'_toe')

        mc.parent(self.femur,self.j_hip)
        mc.parent(self.tibia,self.j_knee)

        mc.parent(self.foot.j_ankle,self.j_knee)
        pass

    def _createIK(self, name, side):

        self.ik_ankle = mc.ikHandle(sj = self.j_hip, ee= self.foot.j_ankle, n=name+"_ankle_ik")
        self.ik_ball = mc.ikHandle(sj = self.foot.j_ankle, ee=self.foot.j_ball, n=name+"_ball_ik")
        self.ik_toe = mc.ikHandle(sj = self.foot.j_ball, ee=self.foot.j_toe, n=name+"_toe_ik")

        self.h_foot = mc.circle(nr=(0,1,0), c=(0,0,-12), r=20, n=name+"_foot_IK_handle")[0]
        mc.move(0,3,-12, self.h_foot+".scalePivot", self.h_foot+".rotatePivot")
        mc.parentConstraint( self.h_foot, self.ik_ankle[0], mo=True)
        mc.parentConstraint( self.h_foot, self.ik_ball[0], mo=True)
        mc.parentConstraint( self.h_foot, self.ik_toe[0], mo=True)
        #self.ik = mc.group(ankle_ik, ball_ik, toe_ik, n=name+"_leg_IK")
        pass

    def _deleteHistory(self):
        mc.select(self.j_hip)
        mc.delete(ch=True)

class Foot():
    def __init__(self, name, side,c1=None,c2=None,c3=None):
        self.name = name
        self.side = side
        self.color1 = c1
        self.color2 = c2
        self.color3 = c3
        if self.color1 is None:
            self.color1 = 'initialShadingGroup'
        if self.color2 is None:
            self.color2 = 'initialShadingGroup'
        if self.color3 is None:
            self.color3 = 'initialShadingGroup'


        self._createGeometry(name, side)
        self._createJoints(name,side)
        self._createArmor(name, side)

        self._deleteHistory()
        pass

    def _createGeometry(self, name, side):

        #build toe
        self.side = side
        self.name = name
        self.toe = mc.polyCube(sx=2, sy=2, sz=2, w=5,h=2, d=3, n=name+'_toe')[0]
        self.ball = mc.polyCylinder(h=5,n=name+'_ball')[0]
        mc.move(0,0,-2,r=True)
        mc.rotate(0,0,'90deg')
        self.toe = mc.polyUnite(self.toe,self.ball, n=name+'_toe')[0]

        self.toeBox = mc.polyCube(w=8, h= 4, d=3, n=name+'_toeBox')[0]
        mc.sets(e=True, forceElement = self.color1)
        mc.move(0,.9,0, r=True)
        #e1
        mc.select(self.toeBox+'.e[1]')
        mc.move(0,-1,0,r=True)

        self.toeBoxBase = mc.polyCube(w=8, h= 4, d=3, n=name+'_toeBoxBase')[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,.9,1, r=True)
        #e1
        mc.select(self.toeBoxBase+'.e[2]')
        mc.move(0,-2,0,r=True)
        mc.select(self.toeBoxBase+'.e[1]')
        mc.move(0,-1,0,r=True)
        mc.select(self.toeBoxBase+'.f[2]')
        mc.scale(1.25,1,1)
        mc.move(0,0,-1,r=True)

        self.toeToeBox = mc.polyCube(w=8, h=3, d=3, n= name+'_toeToeBox')[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,.4,4,r=True)
        #f0
        mc.select(self.toeToeBox+'.f[0]')
        mc.scale(.75,.75,1)

        mc.move(0,0,-2, self.toe+".scalePivot", self.toe+".rotatePivot")

        self.toe = mc.polyUnite(self.toe,self.toeBox)
        self.toe = mc.polyUnite(self.toe, self.toeToeBox)
        self.toe = mc.polyUnite(self.toe, self.toeBoxBase, n=name+'_toe')


        #build arch
        self.arch = mc.polyCube(w=5, d=10, n=name+'_arch')[0]
        mc.move(0,0,-7,r=True)

        #mc.select(f[8]-f[11])
        mc.select(self.arch+'.f[2]')
        mc.move(0,3,0,r=True)

        self.ankle = mc.polySphere(r=2.5)[0]
        mc.move(0,3,-12,r=True)

        self.arch = mc.polyUnite(self.arch, self.ankle, n=name+'_arch')[0]

        self.archArmor = mc.polyCube(w=8, h= 4, d=8)[0]
        mc.sets(e=True, forceElement = self.color1)
        mc.move(0,.9,-6,r=True)

        self.archArmor2 = mc.polyCube(w=8, h= 4, d=8)[0]
        mc.sets(e=True, forceElement = self.color1)
        mc.move(0,4.9,-6,r=True)
        mc.select(self.archArmor2+'.e[1]')
        mc.move(0,-3.75,0,r=True)
        mc.select(self.archArmor2+'.e[2]')
        #mc.move(0,-.5,0,r=True)
        mc.scale(.5,1,1)

        self.archArmor3 = mc.polyCube(w=8, h= 4, d=8)[0]
        mc.sets(e=True, forceElement = self.color1)
        mc.move(0,4.9,-8.5,r=True)
        mc.select(self.archArmor3+'.e[1]')
        mc.move(0,0,-4 ,r=True)
        mc.scale(.5,1,1)
        mc.select(self.archArmor3+'.e[2]')
        #mc.move(0,-.5,0,r=True)
        mc.scale(.5,1,1)

        self.archArmorBase = mc.polyCube(w=8, h= 4, d=8)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,.9,-6,r=True)

        mc.select(self.archArmorBase+'.f[0]')
        mc.scale(1.25,1,1)
        mc.select(self.archArmorBase+'.f[2]')
        mc.scale(1.25,1,1)
        mc.select(self.archArmorBase+'.e[1]')
        mc.move(0,-2,0,r=True)
        mc.select(self.archArmorBase+'.e[2]')
        mc.move(0,-.5,0,r=True)

        self.archArmorBase2 = mc.polyCube(w=8, h= 4, d=4)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,.9,-12,r=True)
        mc.select(self.archArmorBase2+'.f[0]')
        mc.scale(1.25,1,1)
        mc.select(self.archArmorBase2+'.f[2]')
        mc.scale(1.25,1,1)
        mc.select(self.archArmorBase2+'.e[3]')
        mc.move(0,1,1.75,r=True)
        mc.select(self.archArmorBase2+'.e[1]')
        mc.move(0,-.5,0,r=True)

        self.archArmorBase3 = mc.polyCube(w=8, h= 4, d=4)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,4.9,-12,r=True)
        mc.select(self.archArmorBase3+'.f[0]')
        mc.scale(1.25,1,1)
        mc.select(self.archArmorBase3+'.f[2]')
        mc.scale(1.25,1,1)
        mc.select(self.archArmorBase3+'.f[1]')
        mc.scale(.5,1,1)
        mc.move(0,-1,0, r=True)
        mc.select(self.archArmorBase3+'.e[0]')
        mc.move(0,-.5,0,r=True)
        mc.select(self.archArmorBase3+'.e[1]')
        mc.move(0,0,-2.5,r=True)
        mc.select(self.archArmorBase3+'.e[2]')
        mc.move(0,0,-1.5,r=True)

        self.archArmorBase4 = mc.polyCube(w=8, h= 4, d=4)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,4.9,-15.5,r=True)
        mc.select(self.archArmorBase4+'.f[0]')
        mc.scale(1.25,1,1)
        mc.select(self.archArmorBase4+'.f[2]')
        mc.scale(1.25,1,1)
        mc.select(self.archArmorBase4+'.f[1]')

        mc.scale(.5,1,1)
        mc.move(0,-2,0, r=True)
        mc.select(self.archArmorBase4+'.f[3]')
        mc.scale(1,1,1.25)
        mc.select(self.archArmorBase4+'.e[0]')
        mc.move(0,-3,.5,r=True)
        mc.select(self.archArmorBase4+'.e[1]')
        mc.move(0,0,-2,r=True)
        mc.select(self.archArmorBase4+'.e[2]')
        mc.move(0,0,1,r=True)
        mc.select(self.archArmorBase4+'.e[3]')
        mc.move(0,-2,-.75,r=True)
        mc.scale(.75,1,1)

        self.archArmorBase5 = mc.polyCube(w=8, h= 4, d=5)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,.9,-15.6,r=True)
        mc.select(self.archArmorBase5+'.f[1]')
        mc.move(0,-3,0, r=True)
        mc.scale(1.25,1,1.25)
        mc.select(self.archArmorBase5+'.f[2]')
        mc.scale(.75,1,1)
        #mc.select(self.archArmorBase5+'.e[3]')
        #mc.move(0,1,0,r=True)
        mc.select(self.archArmorBase5+'.e[2]')
        mc.move(0,1,0,r=True)

        self.arch = mc.polyUnite(self.arch,self.archArmor)
        self.arch = mc.polyUnite(self.arch,self.archArmor2)
        self.arch = mc.polyUnite(self.arch,self.archArmor3)
        self.arch = mc.polyUnite(self.arch,self.archArmorBase2)
        self.arch = mc.polyUnite(self.arch,self.archArmorBase3)
        self.arch = mc.polyUnite(self.arch,self.archArmorBase4)
        self.arch = mc.polyUnite(self.arch,self.archArmorBase5)
        self.arch = mc.polyUnite(self.arch,self.archArmorBase, n=name+'_arch')[0]

        mc.move(0,3,-12, self.arch+".scalePivot", self.arch+".rotatePivot")
        #self.heal = mc.polyCube(sx=2, sy=2, sz=2,w=5, h=3, n=name+'_heal')

        pass


    def _createJoints(self, name, side):

        #bone
        mc.select(cl=True)


        self.j_ankle = mc.joint(p=(0,3,-12), n=name+'_ankle')
        self.j_ball = mc.joint(p=(0,0,-2), n=name+'_ball')
        self.j_toe = mc.joint(p=(0,0,2), n=name+'_toe')

        mc.parent(self.arch,self.j_ankle)
        mc.parent(self.toe,self.j_toe)
        pass

    def _createArmor(self,name, side):
        pass

    def _createIK(self, name, side):
        pass

    def _deleteHistory(self):
        mc.select(self.j_ankle)
        mc.delete(ch=True)

#Leg('right', Side.right)
mc.select(cl=True)