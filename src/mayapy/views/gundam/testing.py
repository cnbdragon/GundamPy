###
# compleate riged joint
###


cube = mc.polyCube(sx=2, sy=2, sz=2)
hingCyl1 = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5)
mc.move(0,1,0)
mc.select(cube, add=True)
poly = mc.polyUnite()[0]
mc.move(0,1,0, poly+".scalePivot", poly+".rotatePivot")

cube2 = mc.polyCube(sx=2, sy=2, sz=2)
mc.move(0,2,0)
hingCyl2 = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5)
mc.move(.35,1,0)
hingCyl3 = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5)
mc.move(-.35,1,0)

mc.select(cube, add=True)
poly2 = mc.polyUnite(cube2,hingCyl2,hingCyl3)[0]
mc.move(0,1,0, poly2+".scalePivot", poly2+".rotatePivot")

mc.select(cl=True)
j_r_sholder = mc.joint( p=(0,2.5,0))

j_r_elbow = mc.joint( p=(0,1,0),dof='x')

j_r_wrist = mc.joint( p=(0,-.5,0))

mc.parent(poly2,j_r_sholder)
mc.parent(poly,j_r_elbow)