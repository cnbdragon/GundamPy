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
            self.index = Finger(name+'_index', 2.5, 3.75)
            self.middle = Finger(name+'_middle', 3.0, 1.25)
            self.ring = Finger(name+'_ring', 2.5, -1.25)
            self.pinky = Finger(name+'_pinky', 2, -3.75)
            self.thumb = Thumb(name+'_thumb', side)
        else:
            self.index = Finger(name+'_index', 1.25, -3.75)
            self.middle = Finger(name+'_middle', 1.5, -1.25)
            self.ring = Finger(name+'_ring', 1.25, 1.25)
            self.pinky = Finger(name+'_pinky', 1, 3.75)
            self.thumb = Thumb(name+'_thumb', side)

        self._createGeometry(side)
        self._createJoints(side)

        self._deleteHistory()

        mc.select(self.j_wrist)



    def _createGeometry(self, side):
        mc.select(cl=True)
        self.r_hand_palm = mc.polyCube(sx=4,sy=4,sz=4,w=10,h=10,d=3,n='R_palm')[0]
        mc.move(0,5,-1.5)
        self.r_hand_heal = mc.polyCube(w=10,h=2,d=2,n='R_heal')[0]
        mc.move(0,1,1,r=True)

        if side == Side.right:
            mc.select(self.r_hand_heal+'.e[7]')
        elif side == Side.left:
            mc.select(self.r_hand_heal+'.e[6]')

        mc.move(0,2,0,r=True)

        self.r_hand = mc.polyUnite(self.r_hand_heal, self.r_hand_palm, n='r_hand')[0]

        self.r_hand_n_1 = mc.polySphere(r=1.2,n="r_hand_n_1")[0]
        mc.move(-3.75,9.25,-.5)
        self.r_hand_n_2 = mc.polySphere(r=1.2,n="r_hand_n_2")[0]
        mc.move(-1.25,9.25,-.5)
        self.r_hand_n_3 = mc.polySphere(r=1.2,n="r_hand_n_3")[0]
        mc.move(1.25,9.25,-.5)
        self.r_hand_n_4 = mc.polySphere(r=1.2,n="r_hand_n_4")[0]
        mc.move(3.75,9.25,-.5)
        self.r_hand_n_t = mc.polySphere(r=1.2,n="r_hand_n_t")[0]

        if side == Side.right:
            mc.move(4.5,2,1.5)
        elif side == Side.left:
            mc.move(-4.5,2,1.5)

        #self.hand = mc.polyCBoolOp(self.r_hand, self.r_hand_n_1, self.r_hand_n_2, self.r_hand_n_3, self.r_hand_n_4, self.r_hand_n_t,
        #                       op=2, n='r_hand')

        ### we did this becuase maya is stupid, and 2014 does not have polyCBoolOp()

        self.hand = mc.polyBoolOp(self.r_hand, self.r_hand_n_1, op=2, n='r_hand')[0]
        self.hand = mc.polyBoolOp(self.hand, self.r_hand_n_2, op=2, n='r_hand')[0]
        self.hand = mc.polyBoolOp(self.hand, self.r_hand_n_3, op=2, n='r_hand')[0]
        self.hand = mc.polyBoolOp(self.hand, self.r_hand_n_4, op=2, n='r_hand')[0]
        self.hand = mc.polyBoolOp(self.hand, self.r_hand_n_t, op=2, n='r_hand')[0]


    def _createJoints(self, side):
         #bone
         mc.select(cl=True)

         self.j_wrist = mc.joint(p=(0,0,0), n=self.name+'_wrist')

         '''self.j_r_p_n_2 = mc.joint( p=(offset,4.25+(2*self.segOffset),.25),dof='x')

         self.j_r_p_n_3 = mc.joint( p=(offset,6.25+(4*self.segOffset),.25),dof='x')

         self.j_r_p_n_4 = mc.joint( p=(offset,8.25+(6*self.segOffset),.25))
         '''
         mc.select(cl=True)

         mc.parent(self.index.j_n_1, self.j_wrist)
         mc.parent(self.middle.j_n_1, self.j_wrist)
         mc.parent(self.ring.j_n_1, self.j_wrist)
         mc.parent(self.pinky.j_n_1, self.j_wrist)

         mc.parent(self.thumb.j_thumb_1, self.j_wrist)

         mc.select(cl=True)

         mc.parent(self.hand, self.j_wrist)

    def _deleteHistory(self):
        mc.select(self.j_wrist)
        mc.delete(ch=True)




    def setBallet(self):
        mc.select(self.index.j_n_1)
        mc.rotate(1,0,0,r=True)
        mc.select(self.index.j_n_2)
        mc.rotate(5,0,0,r=True)
        mc.select(self.index.j_n_3)
        mc.rotate(5,0,0,r=True)

        mc.select(self.middle.j_n_1)
        mc.rotate(10,0,0,r=True)
        mc.select(self.middle.j_n_2)
        mc.rotate(7,0,0,r=True)
        mc.select(self.middle.j_n_3)
        mc.rotate(7,0,0,r=True)

        mc.select(self.ring.j_n_1)
        mc.rotate(7,0,0,r=True)
        mc.select(self.ring.j_n_2)
        mc.rotate(7,0,0,r=True)
        mc.select(self.ring.j_n_3)
        mc.rotate(7,0,0,r=True)

        mc.select(self.pinky.j_n_1)
        mc.rotate(1,0,0,r=True)
        mc.select(self.pinky.j_n_2)
        mc.rotate(5,0,0,r=True)
        mc.select(self.pinky.j_n_3)
        mc.rotate(5,0,0,r=True)


        mc.select(self.thumb.j_thumb_1)
        mc.rotate(-50,-60,70, r=True)


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

        voff = 9.25

        mc.select(cl=True)
        #section 1 construction
        self.r_hand_p_n_1 = mc.polySphere(r=1.2,n="_n_1")
        mc.move(offset,voff+0,-.5)
        self.r_hand_p_b_1 = mc.polyCylinder(r=.75,h=3,n="_b_1")
        mc.move(offset,voff+2,-.5)
        self.r_hand_p_p_1 = mc.polyCube(sx=2, sy=2, sz=2, h=segmentLength, w=2, d=2)
        mc.move(offset,voff+2.25+self.segOffset,-.5)
        self.r_hand_p_n_2_a = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.6, r=1.0,n='_n_2_a')
        mc.move(offset+.7,voff+3.75+(2*self.segOffset),-.5) #1.875 + .35
        self.r_hand_p_n_2_b = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.6, r=1.0,n='_n_2_b')
        mc.move(offset-.7,voff+3.75+(2*self.segOffset),-.5) #1.875 -.35

        #section 1 unite

        self.r_hand_p_s_1 = mc.polyUnite(self.r_hand_p_n_1, self.r_hand_p_b_1, self.r_hand_p_p_1,
                                         self.r_hand_p_n_2_a, self.r_hand_p_n_2_b, n='r_hand_p_s_1')[0]
        mc.move(offset,voff+0,-.5, self.r_hand_p_s_1+".scalePivot", self.r_hand_p_s_1+".rotatePivot")

        #section 2 construction
        self.r_hand_p_n_2_c = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.6, r=1.0,n='r_hand_p_n_2_c')
        mc.move(offset,voff+3.75+(2*self.segOffset),-.5)
        self.r_hand_p_p_2 = mc.polyCube(sx=2, sy=2, sz=2, h=segmentLength, w=2, d=2)
        mc.move(offset,voff+5.25+(3*self.segOffset),-.5)
        self.r_hand_p_n_3_a = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.6, r=1.0,n='r_hand_p_n_3_a')
        mc.move(offset+.7,voff+6.75+(4*self.segOffset),-.5) #1.875 + .35
        self.r_hand_p_n_3_b = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.6, r=1.0,n='r_hand_p_n_3_b')
        mc.move(offset-.7,voff+6.75+(4*self.segOffset),-.5) #1.875 -.35

        #section 2 unite

        self.r_hand_p_s_2 = mc.polyUnite(self.r_hand_p_n_2_c, self.r_hand_p_p_2, self.r_hand_p_n_3_a,
                                         self.r_hand_p_n_3_b, n='r_hand_p_s_2')[0]
        mc.move(offset,voff+3.75+(2*self.segOffset),-.5, self.r_hand_p_s_2+".scalePivot", self.r_hand_p_s_2+".rotatePivot")

        #section 3 construction
        self.r_hand_p_n_3_c = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.6, r=1.0,n='r_hand_p_n_3_c')[0]
        mc.move(offset,voff+6.75+(4*self.segOffset),-.5)
        self.r_hand_p_p_3 = mc.polyCube(sx=2, sy=2, sz=2, h=segmentLength, w=2, d=2)[0]
        mc.move(offset,voff+8.25+(5*self.segOffset),-.5)
        mc.select(self.r_hand_p_p_3+'.f[4:7]') #f[5] on a one segment
        mc.scale(.8,1,.75)

        #section 3 unite

        self.r_hand_p_s_3 = mc.polyUnite(self.r_hand_p_n_3_c, self.r_hand_p_p_3, n='r_hand_p_s_3')[0]
        mc.move(offset,voff+6.75+(4*self.segOffset),-.5, self.r_hand_p_s_3+".scalePivot", self.r_hand_p_s_3+".rotatePivot")



    def _createJoints(self, segmentLength, offset):
        #bone
        voff = 9.25
        mc.select(cl=True)

        self.j_n_1 = mc.joint( p=(offset,voff,-.5),dof='xz')
        self.j_n_2 = mc.joint( p=(offset,voff+3.75+(2*self.segOffset),-.5),dof='x')
        self.j_n_3 = mc.joint( p=(offset,voff+6.75+(4*self.segOffset),-.5),dof='x')
        self.j_n_4 = mc.joint( p=(offset,voff+9.25+(6*self.segOffset),-.5))

        mc.select(cl=True)

        mc.parent(self.r_hand_p_s_1, self.j_n_1)
        mc.parent(self.r_hand_p_s_2, self.j_n_2)
        mc.parent(self.r_hand_p_s_3, self.j_n_3)


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
        self.n_t = mc.polySphere(r=1.2,n="n_t")
        mc.move(self.sideModifyer*4.5,2,1.5)
        self.b_1 = mc.polyCylinder(r=.75,h=2)
        mc.move(self.sideModifyer*6.5,2,1.5)
        mc.rotate(0,0,90)

        self.s_1 = mc.polyCube(sx=1, sy=3, sz=1, h=5, w=2, d=2)[0]
        mc.move(self.sideModifyer*8.5,3.5,1.5)
        mc.select(self.s_1+'.f[7]')
        mc.move(-1,0,0,r=True)
        mc.select(self.s_1+'.e[26]')
        mc.move(-1,0,0,r=True)
        mc.select(self.s_1+'.e[23]')
        mc.move(.123,0,0,r=True)
        mc.select(self.s_1+'.f[3]')
        mc.move(0,-.5,0,r=True)

        self.n_2_a = mc.polyCylinder(ax=[0,0,1], sx=2, sy=2, sz=2, h=.6, r=1.0,n='n_2_a')
        mc.move(self.sideModifyer*8.5,6.5,1.5+.7) #1.875 + .35
        self.n_2_b = mc.polyCylinder(ax=[0,0,1], sx=2, sy=2, sz=2, h=.6, r=1.0,n='n_2_b')
        mc.move(self.sideModifyer*8.5,6.5,1.5-.7) #1.875 -.35

        self.s_1 = mc.polyUnite(self.n_t,self.s_1, self.n_2_a,self.n_2_b,self.b_1, n='segment_1')

        #section 2 construction
        self.n_2_c = mc.polyCylinder(ax=[0,0,1], sx=2, sy=2, sz=2, h=.6, r=1.0,n='n_2_c')[0]
        mc.move(self.sideModifyer*8.5,6.5,1.5)
        self.p_2 = mc.polyCube(sx=2, sy=2, sz=2, h=4, w=2, d=2)[0]
        mc.move(self.sideModifyer*8.5,9.5,1.5)
        mc.select(self.p_2+'.f[4:7]') #f[5] on a one segment
        mc.scale(.8,1,.75)

        #section 2 unite

        self.s_2 = mc.polyUnite(self.n_2_c, self.p_2, n='p_s_2')[0]
        mc.move(self.sideModifyer*8.5,6.5,1.5, self.s_2+".scalePivot", self.s_2+".rotatePivot")

    def _createJoints(self, side):

        mc.select(cl=True)
        self.j_thumb_1 = mc.joint(p=(self.sideModifyer*4.5,2,1.5))
        self.j_thumb_2 = mc.joint(p=(self.sideModifyer*8.5,6.5,1.5),dof='z')
        self.j_thumb_2 = mc.joint(p=(self.sideModifyer*8.5,11,1.5))

        mc.select(cl=True)

        mc.parent(self.s_1, self.j_thumb_1)
        mc.parent(self.s_2, self.j_thumb_2)
        pass



def main():
    h = Hand("right", Side.right)
    #h.setBallet()
#main()
mc.select(cl=True)

