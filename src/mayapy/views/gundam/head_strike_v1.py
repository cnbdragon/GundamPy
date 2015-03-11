

from nimble import cmds as mc

class Head():
    def __init__(self, name,):
        self.name = name
        #self.side = side
        #self.foot = Foot(name, side)

        self._createGeometry(name)
        self._createJoints(name)


        self._deleteHistory()
        pass

    def _createGeometry(self, name):
        self.head = mc.polySphere(r=11.5, n=name+'_head')
        pass

    def _createJoints(self, name):
        #bone
        mc.select(cl=True)

        #make some joints?
        ##self.j_root = mc.joint(p=(0,0,0), n=name+'_j_root')
        ##self.j_neck = mc.joint(p=(0,67,0), n=name+'_j_neck')

        #parent some joints
        #mc.parent(self.torso,self.j_root)
        #mc.parent(self.clavical,self.j_neck)
        pass

    def _deleteHistory(self):
        #mc.select(self.j_root)
        #mc.delete(ch=True)
        pass

