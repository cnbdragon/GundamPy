###
#
# torso by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side


class Torso():
    def __init__(self, name, c1=None, c2=None, c3=None, c4=None, c5=None):
        self.name = name
        self.color1 = c1
        self.color2 = c2
        self.color3 = c3
        self.color4 = c4
        self.color5 = c5
        if self.color1 is None:
            self.color1 = 'initialShadingGroup'
        if self.color2 is None:
            self.color2 = 'initialShadingGroup'
        if self.color3 is None:
            self.color3 = 'initialShadingGroup'
        if self.color4 is None:
            self.color4 = 'initialShadingGroup'
        if self.color5 is None:
            self.color5 = 'initialShadingGroup'
        #self.side = side
        #self.foot = Foot(name, side)

        self._createGeometry(name)
        self._createJoints(name)

        self._createIK(name)


        self._deleteHistory()
        pass

    def _createGeometry(self, name):

        #self.spine = mc.polyCylinder(h=75,r=2,n=name+'_spine')[0]
        #mc.move(0,30,0)
        self.pelvic = mc.polyCylinder(h=40,r=2,n=name+'_pelvic')[0]
        mc.rotate(0,0,'90deg')
        self.clavical = mc.polyCylinder(h=56,r=2,n=name+'_clavical')[0]
        mc.rotate(0,0,'90deg')
        mc.move(0,67,0)

        #self.hip = mc.polySphere(r=5,n=name+'_hip')
        self.hipPlate = mc.polyCube(w=50,d=10,h=5)
        mc.move(0,10,0)

        self.crotchPlate1 = mc.polyCube(w=10,d=20,h=20)[0]
        mc.select(self.crotchPlate1+'.e[3]')
        mc.move(0,2,0,r=True)
        mc.scale(.75,1,1)
        self.crotchPlate2 = mc.polyCube(w=10,d=10,h=20)[0]
        mc.move(0,0,15)
        mc.select(self.crotchPlate2+'.e[0]')
        mc.move(0,2,-5,r=True)
        mc.scale(.75,1,1)

        mc.select(self.crotchPlate2)
        self.crotchPlate1_1 = mc.duplicate(rr=True)
        mc.sets(e=True, forceElement = self.color1)
        mc.move(0,2,-3, r=True)
        mc.scale(1.5,1 ,1)

        self.crotchPlate3 = mc.polyCube(w=10,d=20,h=10)[0]
        mc.move(0,15,10)
        mc.select(self.crotchPlate3+'.e[1]')
        mc.move(0,0,-6, r=True)
        mc.scale(.75,1,1)

        mc.select(self.crotchPlate3)
        self.crotchPlate3_1 = mc.duplicate(rr=True)
        mc.sets(e=True, forceElement = self.color1)
        mc.move(0,2,-3,r=True)
        mc.scale(1.5,1,1)

        mc.select(self.crotchPlate3)
        self.crotchPlate3_2 = mc.duplicate(rr=True)
        mc.sets(e=True, forceElement = self.color3)
        mc.move(0,0,1,r=True)
        mc.scale(.75,.75,1)


        #self.crotchPlate4 = mc.polyCube(w=10,d=20,h=10)[0]
        #mc.move(0,-15,0)
        self.pelvic = mc.polyUnite(self.pelvic, self.crotchPlate2,self.crotchPlate3,self.crotchPlate1_1,self.crotchPlate3_1,self.crotchPlate3_2)
        self.pelvic = mc.polyUnite(self.pelvic, self.crotchPlate1)
        self.pelvic = mc.polyUnite(self.pelvic, self.hipPlate)[0]

        #self.torso = mc.polyUnite(self.spine,self.pelvic,n=name)[0]
        self.torso = self.pelvic



        ######### Cockpit ##############

        self.cockpit = mc.polyCube(w=10,d=2,h=10)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,25,8, r=True)
        mc.select(self.cockpit+'.e[1]')
        mc.move(0,5,5,r=True)

        self.cockpit2 = mc.polyCube(w=10,d=2,h=10)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(0,35,10, r=True)
        mc.select(self.cockpit2+'.e[1]')
        mc.move(0,0,10,r=True)
        mc.select(self.cockpit2+'.e[2]')
        mc.move(0,2,10,r=True)
        self.cockpit = mc.polyUnite(self.cockpit, self.cockpit2)

        self.cockpitWall1 = mc.polyCube(w=2, h=30, d=10)[0]
        mc.move(0,25,0,r=True)
        mc.select(self.cockpitWall1+'.e[1]')
        mc.move(0,0,15,r=True)

        self.cockpitWall2 = mc.polyCube(w=2, h=20, d=20)[0]
        mc.move(6.5,32,0,r=True)
        mc.select(self.cockpitWall2+'.e[1]')
        mc.move(0,0,15,r=True)

        self.cockpitWall3 = mc.polyCube(w=2, h=20, d=20)[0]
        mc.move(-6.5,32,0,r=True)
        mc.select(self.cockpitWall3+'.e[1]')
        mc.move(0,0,15,r=True)

        self.cockpitWall4 = mc.polyCube(w=2, h=20, d=20)[0]
        mc.move(6.5,52,0,r=True)
        mc.select(self.cockpitWall4+'.e[0]')
        mc.move(0,0,15,r=True)

        self.cockpitWall5 = mc.polyCube(w=2, h=20, d=20)[0]
        mc.move(-6.5,52,0,r=True)
        mc.select(self.cockpitWall5+'.e[0]')
        mc.move(0,0,15,r=True)

        self.cockpitWall6 = mc.polyCube(w=15,h=20, d=2)
        mc.move(0,32,-10,r=True)
        self.cockpitWall7 = mc.polyCube(w=15,h=20, d=2)
        mc.move(0,52,-10,r=True)

        self.cockpit = mc.polyUnite(self.cockpit, self.cockpitWall1,self.cockpitWall2,
                                    self.cockpitWall3,self.cockpitWall4,self.cockpitWall5,
                                    self.cockpitWall6,self.cockpitWall7)

        self.lRibs1 = mc.polyCube(w=10,d=20,h=5)[0]
        mc.sets(e=True, forceElement = self.color1)
        mc.move(12,25,0,r=True)
        mc.select(self.lRibs1+'.e[1]')
        mc.move(0,0,-2,r=True)
        mc.select(self.lRibs1+'.e[2]')
        mc.move(0,0,2,r=True)
        mc.select(self.lRibs1+'.e[7]')
        mc.move(-2,1,0,r=True)
        mc.polyBevel()

        self.lRibs2 = mc.polyCube(w=5,d=15,h=5)[0]
        mc.sets(e=True, forceElement = self.color1)
        mc.move(12,30,0,r=True)
        mc.select(self.lRibs2+'.e[1]')
        mc.move(0,0,-2,r=True)
        mc.select(self.lRibs2+'.e[2]')
        mc.move(0,0,2,r=True)
        mc.select(self.lRibs2+'.e[7]')
        mc.move(-2,1,0,r=True)
        mc.polyBevel()

        self.lRibs3 = mc.polyCube(w=2,d=20,h=10)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(8,30,0,r=True)
        mc.select(self.lRibs3+'.e[1]')
        mc.move(0,0,2,r=True)
        mc.select(self.lRibs3+'.e[2]')
        mc.move(0,0,-2,r=True)
        mc.select(self.lRibs3+'.e[7]')
        mc.move(2,1,0,r=True)
        mc.polyBevel()

        self.lRibs4 = mc.polyCube(w=8,d=30,h=10)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(8,40,0,r=True)
        mc.select(self.lRibs4+'.e[1]')
        mc.move(0,0,5,r=True)
        mc.select(self.lRibs4+'.e[2]')
        mc.move(0,0,-2,r=True)
        mc.select(self.lRibs4+'.e[7]')
        mc.move(5,1,0,r=True)
        mc.polyBevel()

        self.lRibs = mc.polyUnite(self.lRibs1,
                                  self.lRibs2,
                                  self.lRibs3,
                                  self.lRibs4)

        self.rRibs1 = mc.polyCube(w=10,d=20,h=5)[0]
        mc.sets(e=True, forceElement = self.color1)
        mc.move(-12,25,0,r=True)
        mc.select(self.rRibs1+'.e[1]')
        mc.move(0,0,-2,r=True)
        mc.select(self.rRibs1+'.e[2]')
        mc.move(0,0,2,r=True)
        mc.select(self.rRibs1+'.e[6]')
        mc.move(2,1,0,r=True)
        mc.polyBevel()

        self.rRibs2 = mc.polyCube(w=5,d=15,h=5)[0]
        mc.sets(e=True, forceElement = self.color1)
        mc.move(-12,30,0,r=True)
        mc.select(self.rRibs2+'.e[1]')
        mc.move(0,0,-2,r=True)
        mc.select(self.rRibs2+'.e[2]')
        mc.move(0,0,2,r=True)
        mc.select(self.rRibs2+'.e[6]')
        mc.move(2,1,0,r=True)
        mc.polyBevel()

        self.rRibs3 = mc.polyCube(w=2,d=20,h=10)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(-8,30,0,r=True)
        mc.select(self.rRibs3+'.e[1]')
        mc.move(0,0,2,r=True)
        mc.select(self.rRibs3+'.e[2]')
        mc.move(0,0,-2,r=True)
        mc.select(self.rRibs3+'.e[6]')
        mc.move(-2,1,0,r=True)
        mc.polyBevel()

        self.rRibs4 = mc.polyCube(w=8,d=30,h=10)[0]
        mc.sets(e=True, forceElement = self.color2)
        mc.move(-8,40,0,r=True)
        mc.select(self.rRibs4+'.e[1]')
        mc.move(0,0,5,r=True)
        mc.select(self.rRibs4+'.e[2]')
        mc.move(0,0,-2,r=True)
        mc.select(self.rRibs4+'.e[6]')
        mc.move(-5,1,0,r=True)
        mc.polyBevel()

        self.rRibs = mc.polyUnite(self.rRibs1,
                                  self.rRibs2,
                                  self.rRibs3,
                                  self.rRibs4)

        self.cockpit = mc.polyUnite(self.cockpit, self.lRibs, self.rRibs)
        ########## CHEST #############

        self.chest1 = mc.polyCube(w=10,d=2,h=10)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(0,47,23, r=True)
        mc.select(self.chest1+'.e[1]')
        mc.move(0,0,10,r=True)
        mc.select(self.chest1+'.e[3]')
        mc.move(0,2,0,r=True)
        mc.select(self.chest1+'.e[2]')
        mc.move(0,0,-20,r=True)

        self.chest2 = mc.polyCube(w=10,d=2,h=10)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(0,57,23, r=True)
        mc.select(self.chest2+'.e[0]')
        mc.move(0,0,10,r=True)
        mc.select(self.chest2+'.e[3]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest2+'.e[2]')
        mc.move(0,0,-20,r=True)

        self.chest3 = mc.polyCube(w=20,d=2,h=10)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(15,57,23, r=True)
        mc.select(self.chest3+'.e[0]')
        mc.move(0,0,10,r=True)
        mc.select(self.chest3+'.e[3]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest3+'.e[2]')
        mc.move(0,0,-20,r=True)
        mc.select(self.chest3+'.e[5]')
        mc.move(0,0,-5,r=True)

        self.chest4 = mc.polyCube(w=20,d=2,h=10)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(-15,57,23, r=True)
        mc.select(self.chest4+'.e[0]')
        mc.move(0,0,10,r=True)
        mc.select(self.chest4+'.e[3]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest4+'.e[2]')
        mc.move(0,0,-20,r=True)
        mc.select(self.chest4+'.e[4]')
        mc.move(0,0,-5,r=True)

        self.chest5 = mc.polyCube(w=10,d=2,h=5)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(0,67,13, r=True)
        mc.select(self.chest5+'.e[0]')
        mc.move(0,-2.5,10,r=True)
        mc.select(self.chest5+'.e[3]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest5+'.e[2]')
        mc.move(0,0,-20,r=True)
        mc.select(self.chest5+'.f[1]')
        #mc.move(0,0,-20,r=True)
        mc.scale(.5,1,.5)

        self.chest6 = mc.polyCube(w=20,d=2,h=5)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(15,64.5,13, r=True)
        mc.select(self.chest6+'.e[0]')
        mc.move(0,0,10,r=True)
        mc.select(self.chest6+'.e[3]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest6+'.e[2]')
        mc.move(0,0,-20,r=True)
        mc.select(self.chest6+'.e[5]')
        mc.move(0,0,-5,r=True)
        mc.select(self.chest6+'.e[1]')
        mc.move(0,0,-10,r=True)

        self.chest7 = mc.polyCube(w=20,d=2,h=5)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(-15,64.5,13, r=True)
        mc.select(self.chest7+'.e[0]')
        mc.move(0,0,10,r=True)
        mc.select(self.chest7+'.e[3]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest7+'.e[2]')
        mc.move(0,0,-20,r=True)
        mc.select(self.chest7+'.e[4]')
        mc.move(0,0,-5,r=True)
        mc.select(self.chest7+'.e[1]')
        mc.move(0,0,-10,r=True)

        self.chest8 = mc.polyCube(w=10,d=2,h=5)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(10,67.5,3, r=True)
        mc.select(self.chest8+'.e[0]')
        mc.move(0,0,10,r=True)
        mc.select(self.chest8+'.e[3]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest8+'.e[2]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest8+'.e[5]')
        mc.move(0,0,-5,r=True)
        mc.select(self.chest8+'.e[1]')
        mc.move(0,0,-1,r=True)

        self.chest9 = mc.polyCube(w=10,d=2,h=5)[0]
        mc.sets(e=True, forceElement = self.color3)
        mc.move(-10,67.5,3, r=True)
        mc.select(self.chest9+'.e[0]')
        mc.move(0,0,10,r=True)
        mc.select(self.chest9+'.e[3]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest9+'.e[2]')
        mc.move(0,0,-10,r=True)
        mc.select(self.chest9+'.e[4]')
        mc.move(0,0,-5,r=True)
        mc.select(self.chest9+'.e[1]')
        mc.move(0,0,-1,r=True)



        self.chest = mc.polyUnite(self.chest1,
                                  self.chest2,
                                  self.chest3,
                                  self.chest4,
                                  self.chest5,
                                  self.chest6,
                                  self.chest7,
                                  self.chest8,
                                  self.chest9)


        ######### shoulders ############
        t1 = mc.polyCube(sx=3,sy=3,sz=3,w=15, h=15, d=15, n='l_shoulder')[0]
        mc.sets(e=True, forceElement = self.color4)
        t1r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        #mc.scale(1,5,1)
        mc.move(25,67,0,r=True)

        t2 = mc.polyCube(sx=3,sy=3,sz=3,w=15, h=15, d=15, n='r_shoulder')[0]
        mc.sets(e=True, forceElement = self.color4)
        t2r = mc.polyBevel(ws=1, oaf=1, o=.5,sa=30 )[0]
        #mc.scale(1,5,1)
        mc.move(-25,67,0,r=True)

        self.clavical = mc.polyUnite(self.clavical,
                                     t1,t2)



    def _createJoints(self, name):
        #bone
        mc.select(cl=True)


        self.j_root = mc.joint(p=(0,0,0), n=name+'_j_root')
        self.j_s1 = mc.joint(p=(0,11,1), n=name+'_j_s1')
        self.j_s2 = mc.joint(p=(0,22,1), n=name+'_j_s2')
        self.j_s3 = mc.joint(p=(0,33,1), n=name+'_j_s3')
        self.j_s4 = mc.joint(p=(0,44,1), n=name+'_j_s4')
        self.j_s5 = mc.joint(p=(0,55,1), n=name+'_j_s5')
        self.j_neck = mc.joint(p=(0,67,0), n=name+'_j_neck')

        mc.select(cl=True)
        self.j_bind_root = mc.joint(p=(0,0,0), n=name+'_j_bind_root')
        mc.select(cl=True)
        self.j_bind_neck = mc.joint(p=(0,67,0), n=name+'_j_bind_neck')

        #mc.parent(self.j_bind_root, self.j_root)
        #mc.parent(self.j_bind_neck, self.j_neck)

        self.h_hips = mc.circle(nr=(0,1,0), c=(0,0,0), r=50, n=name+"_hips_IK_handle")[0]
        self.h_shoulders = mc.circle(nr=(0,1,0), c=(0,67,0), r=70, n=name+"_shoulders_IK_handle")[0]
        mc.move(0,67,0, self.h_shoulders+".scalePivot", self.h_shoulders+".rotatePivot")

        mc.parentConstraint( self.h_hips, self.j_bind_root, mo=True)
        mc.parentConstraint( self.h_shoulders, self.j_bind_neck, mo=True)
        #mc.parent(self.h_hips, self.torso)
        #mc.parent(self.h_shoulders, self.torso)

        mc.parent(self.torso,self.j_root)
        mc.parent(self.clavical,self.j_neck)
        mc.parent(self.cockpit, self.j_s3)
        mc.parent(self.chest, self.j_s5)

        pass


    def _createIK(self, name):
        self.ik_spine = mc.ikHandle(sj = self.j_root, ee= self.j_neck, n=name+"_spine_ik", sol='ikSplineSolver')
        print self.ik_spine
        mc.skinCluster(self.j_bind_root, self.j_bind_neck, self.ik_spine[2], tsb=True, mi=2)

    def _deleteHistory(self):
        mc.select(self.j_root)
        mc.delete(ch=True)

#Torso('torso')