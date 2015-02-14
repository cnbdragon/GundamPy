###
#
# hand by john wulf
#
#
###

import nimble
from nimble import cmds as mc
from gundam_enums import Side

class Hand():
    def __init__(self, name, side):
        self.name = name
        self.side = side

        if (self.side == Side.right):
            self.index = Finger('index', 1.25, 1.875)
            self.middle = Finger('middle', 1.5, .625)
            self.ring = Finger('ring', 1.25, -.625)
            self.pinky = Finger('pinky', 1, -1.875)
            self.thumb = Thumb('thumb', side)
        else:
            self.index = Finger('index', 1.25, -1.875)
            self.middle = Finger('middle', 1.5, -.625)
            self.ring = Finger('ring', 1.25, .625)
            self.pinky = Finger('pinky', 1, 1.875)
            self.thumb = Thumb('thumb', side)

        self._createGeometry(side)
        self._createJoints(side)

        self._deleteHistory()




    def _createGeometry(self, side):
        mc.select(cl=True)
        self.r_hand_palm = mc.polyCube(sx=4,sy=4,sz=4,w=5,h=5,n='R_palm')[0]
        self.r_hand_heal = mc.polyCube(w=5,n='R_heal')[0]
        mc.move(0,-2,1,r=True)

        if side == Side.right:
            mc.select(self.r_hand_heal+'.e[7]')
        elif side == Side.left:
            mc.select(self.r_hand_heal+'.e[6]')

        mc.move(0,1,0,r=True)

        self.r_hand = mc.polyUnite(self.r_hand_heal, self.r_hand_palm, n='r_hand')[0]

        self.r_hand_n_1 = mc.polySphere(r=.6,n="r_hand_n_1")
        mc.move(-1.875,2,.25)
        self.r_hand_n_2 = mc.polySphere(r=.6,n="r_hand_n_2")
        mc.move(-.625,2,.25)
        self.r_hand_n_3 = mc.polySphere(r=.6,n="r_hand_n_3")
        mc.move(.625,2,.25)
        self.r_hand_n_4 = mc.polySphere(r=.6,n="r_hand_n_4")
        mc.move(1.875,2,.25)
        self.r_hand_n_t = mc.polySphere(r=.6,n="r_hand_n_t")

        if side == Side.right:
            mc.move(2.25,-1.5,1.25)
        elif side == Side.left:
            mc.move(-2.25,-1.5,1.25)

        self.hand = mc.polyCBoolOp(self.r_hand, self.r_hand_n_1, self.r_hand_n_2, self.r_hand_n_3, self.r_hand_n_4, self.r_hand_n_t,
                                op=2, n='r_hand')

    def _createJoints(self, side):
         #bone
         mc.select(cl=True)

         self.j_wrist = mc.joint(p=(0,-2,0), n='wrist')

         '''self.j_r_p_n_2 = mc.joint( p=(offset,4.25+(2*self.segOffset),.25),dof='x')

         self.j_r_p_n_3 = mc.joint( p=(offset,6.25+(4*self.segOffset),.25),dof='x')

         self.j_r_p_n_4 = mc.joint( p=(offset,8.25+(6*self.segOffset),.25))
         '''
         mc.select(cl=True)

         mc.parent(self.index.j_r_p_n_1, self.j_wrist)
         mc.parent(self.middle.j_r_p_n_1, self.j_wrist)
         mc.parent(self.ring.j_r_p_n_1, self.j_wrist)
         mc.parent(self.pinky.j_r_p_n_1, self.j_wrist)

         mc.parent(self.thumb.j_thumb_1, self.j_wrist)

         mc.select(cl=True)

         mc.parent(self.hand, self.j_wrist)

    def _deleteHistory(self):
        mc.select(self.j_wrist)
        mc.delete(ch=True)




    def setBallet(self):
        pass

    def setJazz(self):
        pass

    def setFist(self):
        pass

    def setLong(self):
        pass


class Finger():
    def __init__(self, name, segmentLength, offset):
        self.name = name

        if segmentLength == 1.0:
            self.segOffset = 0
        else:
            self.segOffset = (segmentLength/2)-.5

        self._createGeometry(segmentLength, offset)
        self._createJoints(segmentLength, offset)

    def _createGeometry(self, segmentLength, offset):


        mc.select(cl=True)
        #section 1 cunstruction
        self.r_hand_p_n_1 = mc.polySphere(r=.6,n="r_hand_p_n_1")
        mc.move(offset,2,.25)
        self.r_hand_p_b_1 = mc.polyCylinder(r=.25,h=.5,n="r_hand_p_b_1")
        mc.move(offset,2.6,.25)
        self.r_hand_p_p_1 = mc.polyCube(sx=2, sy=2, sz=2, h=segmentLength)
        mc.move(offset,3.25+self.segOffset,.25)
        self.r_hand_p_n_2_a = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_2_a')
        mc.move(offset+.35,4.25+(2*self.segOffset),.25) #1.875 + .35
        self.r_hand_p_n_2_b = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_2_b')
        mc.move(offset-.35,4.25+(2*self.segOffset),.25) #1.875 -.35

        #section 1 unite

        self.r_hand_p_s_1 = mc.polyUnite(self.r_hand_p_n_1, self.r_hand_p_b_1, self.r_hand_p_p_1,
                                         self.r_hand_p_n_2_a, self.r_hand_p_n_2_b, n='r_hand_p_s_1')[0]
        mc.move(offset,2,.25, self.r_hand_p_s_1+".scalePivot", self.r_hand_p_s_1+".rotatePivot")

        #section 2 construction
        self.r_hand_p_n_2_c = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_2_c')
        mc.move(offset,4.25+(2*self.segOffset),.25)
        self.r_hand_p_p_2 = mc.polyCube(sx=2, sy=2, sz=2, h=segmentLength)
        mc.move(offset,5.25+(3*self.segOffset),.25)
        self.r_hand_p_n_3_a = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_3_a')
        mc.move(offset+.35,6.25+(4*self.segOffset),.25) #1.875 + .35
        self.r_hand_p_n_3_b = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_3_b')
        mc.move(offset-.35,6.25+(4*self.segOffset),.25) #1.875 -.35

        #section 2 unite

        self.r_hand_p_s_2 = mc.polyUnite(self.r_hand_p_n_2_c, self.r_hand_p_p_2, self.r_hand_p_n_3_a,
                                         self.r_hand_p_n_3_b, n='r_hand_p_s_2')[0]
        mc.move(offset,4.25+(2*self.segOffset),.25, self.r_hand_p_s_2+".scalePivot", self.r_hand_p_s_2+".rotatePivot")

        #section 3 construction
        self.r_hand_p_n_3_c = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_3_c')
        mc.move(offset,6.25+(4*self.segOffset),.25)
        self.r_hand_p_p_3 = mc.polyCube(sx=2, sy=2, sz=2, h=segmentLength)
        mc.move(offset,7.25+(5*self.segOffset),.25)

        #section 3 unite

        self.r_hand_p_s_3 = mc.polyUnite(self.r_hand_p_n_3_c, self.r_hand_p_p_3, n='r_hand_p_s_3')[0]
        mc.move(offset,6.25+(4*self.segOffset),.25, self.r_hand_p_s_3+".scalePivot", self.r_hand_p_s_3+".rotatePivot")



    def _createJoints(self, segmentLength, offset):
        #bone
        mc.select(cl=True)

        self.j_r_p_n_1 = mc.joint( p=(offset,2,.25))

        self.j_r_p_n_2 = mc.joint( p=(offset,4.25+(2*self.segOffset),.25),dof='x')

        self.j_r_p_n_3 = mc.joint( p=(offset,6.25+(4*self.segOffset),.25),dof='x')

        self.j_r_p_n_4 = mc.joint( p=(offset,8.25+(6*self.segOffset),.25))

        mc.select(cl=True)

        mc.parent(self.r_hand_p_s_1, self.j_r_p_n_1)
        mc.parent(self.r_hand_p_s_2, self.j_r_p_n_2)
        mc.parent(self.r_hand_p_s_3, self.j_r_p_n_3)


class Thumb():
    def __init__(self, name, side):
        self.name = name
        if side == Side.right:
            self.sideModifyer = 1
        elif side == Side.left:
            self.sideModifyer = -1

        self._createGeometry(side)
        self._createJoints(side)



    def _createGeometry(self, side):
        mc.select(cl=True)
        self.r_hand_n_t = mc.polySphere(r=.6,n="r_hand_n_t")
        mc.move(self.sideModifyer*2.25,-1.5,1.25)

    def _createJoints(self, side):

        mc.select(cl=True)
        self.j_thumb_1 = mc.joint(p=(self.sideModifyer*2.25,-1.5,1.25))

        mc.select(cl=True)

        mc.parent(self.r_hand_n_t, self.j_thumb_1)
        pass



def main():
    Hand("right", Side.right)

#main()
mc.select(cl=True)