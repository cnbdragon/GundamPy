#hand

r_hand_palm = mc.polyCube(sx=4,sy=4,sz=4,w=5,h=5,n='R_palm')[0]
r_hand_heal = mc.polyCube(w=5,n='R_heal')[0]
mc.move(0,-2,1,r=True)

mc.select(r_hand_heal+'.e[7]')
mc.move(0,1,0,r=True)

r_hand = mc.polyUnite(r_hand_heal, r_hand_palm, n='r_hand')[0]

r_hand_n_1 = mc.polySphere(r=.6,n="r_hand_n_1")
mc.move(-1.875,2,.25)
r_hand_n_2 = mc.polySphere(r=.6,n="r_hand_n_2")
mc.move(-.625,2,.25)
r_hand_n_3 = mc.polySphere(r=.6,n="r_hand_n_3")
mc.move(.625,2,.25)
r_hand_n_4 = mc.polySphere(r=.6,n="r_hand_n_4")
mc.move(1.875,2,.25)

r_hand = mc.polyCBoolOp(r_hand,r_hand_n_1,r_hand_n_2,r_hand_n_3,r_hand_n_4, op=2, n='r_hand')

#right pinky finger
#section 1 cunstruction
r_hand_p_n_1 = mc.polySphere(r=.6,n="r_hand_p_n_1")
mc.move(-1.875,2,.25)
r_hand_p_b_1 = mc.polyCylinder(r=.25,h=.5,n="r_hand_p_b_1")
mc.move(-1.875,2.6,.25)
r_hand_p_p_1 = mc.polyCube(sx=2, sy=2, sz=2)
mc.move(-1.875,3.25,.25)
r_hand_p_n_2_a = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_2_a')
mc.move(-2.225,4.25,.25) #1.875 + .35
r_hand_p_n_2_b = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_2_b')
mc.move(-1.525,4.25,.25) #1.875 -.35

#section 1 unite

r_hand_p_s_1 = mc.polyUnite(r_hand_p_n_1,r_hand_p_b_1,r_hand_p_p_1,r_hand_p_n_2_a,r_hand_p_n_2_b, n='r_hand_p_s_1')[0]
mc.move(-1.875,2,.25, r_hand_p_s_1+".scalePivot", r_hand_p_s_1+".rotatePivot")

#section 2 construction
r_hand_p_n_2_c = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_2_c')
mc.move(-1.875,4.25,.25)
r_hand_p_p_2 = mc.polyCube(sx=2, sy=2, sz=2)
mc.move(-1.875,5.25,.25)
r_hand_p_n_3_a = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_3_a')
mc.move(-2.225,6.25,.25) #1.875 + .35
r_hand_p_n_3_b = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_3_b')
mc.move(-1.525,6.25,.25) #1.875 -.35

#section 2 unite

r_hand_p_s_2 = mc.polyUnite(r_hand_p_n_2_c,r_hand_p_p_2,r_hand_p_n_3_a,r_hand_p_n_3_b, n='r_hand_p_s_2')[0]
mc.move(-1.875,4.25,.25, r_hand_p_s_2+".scalePivot", r_hand_p_s_2+".rotatePivot")

#section 3 construction
r_hand_p_n_3_c = mc.polyCylinder(ax=[1,0,0], sx=2, sy=2, sz=2, h=.3, r=.5,n='r_hand_p_n_3_c')
mc.move(-1.875,6.25,.25)
r_hand_p_p_3 = mc.polyCube(sx=2, sy=2, sz=2)
mc.move(-1.875,7.25,.25)

#section 3 unite

r_hand_p_s_3 = mc.polyUnite(r_hand_p_n_3_c,r_hand_p_p_3, n='r_hand_p_s_3')[0]
mc.move(-1.875,6.25,.25, r_hand_p_s_3+".scalePivot", r_hand_p_s_3+".rotatePivot")


#bone
mc.select(cl=True)

j_r_p_n_1 = mc.joint( p=(-1.875,2,.25))

j_r_p_n_2 = mc.joint( p=(-1.875,4.25,.25),dof='x')

j_r_p_n_3 = mc.joint( p=(-1.875,6.25,.25),dof='x')

j_r_p_n_4 = mc.joint(p=(-1.875,8.25,.25))

mc.select(cl=True)

mc.parent(r_hand_p_s_1,j_r_p_n_1)
mc.parent(r_hand_p_s_2,j_r_p_n_2)
mc.parent(r_hand_p_s_3,j_r_p_n_3)

#right ring finger
r_hand_r_n_ = mc.polySphere(r=.6,n="r_hand_r_n_1")
mc.move(-.625,2,.25)
r_hand_m_n_1 = mc.polySphere(r=.6,n="r_hand_m_n_1")
mc.move(.625,2,.25)
r_hand_i_n_1 = mc.polySphere(r=.6,n="r_hand_i_n_1")
mc.move(1.875,2,.25)




'''
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
'''