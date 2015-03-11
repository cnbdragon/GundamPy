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
    def __init__(self, name):
        self.name = name
        #self.side = side
        #self.foot = Foot(name, side)

        self._createGeometry(name)
        self._createJoints(name)

        self._createIK(name)


        self._deleteHistory()
        pass

    def _createGeometry(self, name):
        '''
        #create tibia
        self.tibia = mc.polyCube(sx=1, sy=1, sz=1, w=2,h=50, d=2, n=name+'_tibia')[0]
        mc.move(0,28,-12)

        self.knee = mc.polyCylinder(h=5,r=2,n=name+'_knee')[0]
        mc.move(0,54,-12,r=True)
        mc.rotate(0,0,'90deg')
        self.tibia = mc.polyUnite(self.tibia,self.knee, n=name+'_tibia')[0]
        mc.move(0,54,-12, self.tibia+".scalePivot", self.tibia+".rotatePivot")

        #create feamer
        self.femur = mc.polyCube(sx=1, sy=1, sz=1, w=3,h=50, d=3, n=name+'_feamer')[0]
        mc.move(0,80,-12)
        self.hip = mc.polySphere(r=5,n=name+'_hip')
        mc.move(0,107,-12)
        self.femur = mc.polyUnite(self.femur,self.hip, n=name+'_femur')[0]
        mc.move(0,107,-12, self.femur+".scalePivot", self.femur+".rotatePivot")
        pass
        '''

        self.spine = mc.polyCylinder(h=75,r=2,n=name+'_spine')[0]
        mc.move(0,30,0)
        self.pelvic = mc.polyCylinder(h=40,r=2,n=name+'_pelvic')[0]
        mc.rotate(0,0,'90deg')
        self.clavical = mc.polyCylinder(h=56,r=2,n=name+'_clavical')[0]
        mc.rotate(0,0,'90deg')
        mc.move(0,67,0)

        #self.hip = mc.polySphere(r=5,n=name+'_hip')

        self.torso = mc.polyUnite(self.spine,self.pelvic,n=name)[0]


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

        pass


    def _createIK(self, name):
        self.ik_spine = mc.ikHandle(sj = self.j_root, ee= self.j_neck, n=name+"_spine_ik", sol='ikSplineSolver')
        print self.ik_spine
        mc.skinCluster(self.j_bind_root, self.j_bind_neck, self.ik_spine[2], tsb=True, mi=2)

    def _deleteHistory(self):
        mc.select(self.j_root)
        mc.delete(ch=True)

#Torso('torso')