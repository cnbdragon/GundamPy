

import nimble
from nimble import cmds as mc
from nimble import cmds as cmds
from nimble import cmds as cmd

whiteAASG = None
redAASG = None
blueAASG = None
redFMSG = None
blueFMSG = None
cPlasticSG = None
greyCPlasticSG = None
blueCPlasticSG = None
chromeSG = None
npchromeSG = None
goldSG = None
shinyGoldSG = None
silverSG = None

def whiteAnodizedAluminum():
    ### white anodized aluminum
    global whiteAASG
    whiteAA = mc.shadingNode('phong',asShader=True, n='whiteAA')
    whiteAASG = mc.sets(r=True, nss=True, em=True, n='whiteAASG')
    mc.connectAttr(whiteAA+'.outColor',whiteAASG+'.surfaceShader')
    mc.setAttr(whiteAA+'.color',0.9,0.9,0.9,type='double3')
    mc.setAttr(whiteAA+'.cosinePower', 2)
    mc.setAttr(whiteAA+'.specularColor', 0.9,0.9,0.9,type='double3')
    mc.setAttr(whiteAA+'.reflectivity', 0.2)

def redAnodizedAluminum():
    ### red anodized aluminum
    global redAASG
    redAA = mc.shadingNode('phong',asShader=True, n='redAA')
    redAASG = mc.sets(r=True, nss=True, em=True, n='redAASG')
    mc.connectAttr(redAA+'.outColor',redAASG+'.surfaceShader')
    mc.setAttr(redAA+'.color',0.5,0.0395,0.0395,type='double3')
    mc.setAttr(redAA+'.cosinePower', 2)
    mc.setAttr(redAA+'.specularColor', 0.5,0.0395,0.0395,type='double3')
    mc.setAttr(redAA+'.reflectivity', 0.2)
    #return redAASG

def blueAnodizedAluminum():
    ### blue Anodized aluminum
    global blueAASG
    blueAA = mc.shadingNode('phong',asShader=True, n='blueAA')
    blueAASG = mc.sets(r=True, nss=True, em=True, n='blueAASG')
    mc.connectAttr(blueAA+'.outColor',blueAASG+'.surfaceShader')
    mc.setAttr(blueAA+'.color',0.0,0.0,0.3,type='double3')
    mc.setAttr(blueAA+'.cosinePower', 2)
    mc.setAttr(blueAA+'.specularColor', 0.0,0.0,0.3,type='double3')
    mc.setAttr(blueAA+'.reflectivity', 0.2)

class anodizedAluminum():
    def __init__(self, name, r,g,b):
        AA = mc.shadingNode('phong',asShader=True, n=name+'_AA')
        self.AASG = mc.sets(r=True, nss=True, em=True, n=name+'_AASG')
        mc.connectAttr(AA+'.outColor',self.AASG+'.surfaceShader')
        mc.setAttr(AA+'.color',r,g,b,type='double3')
        mc.setAttr(AA+'.cosinePower', 2)
        mc.setAttr(AA+'.specularColor', r,g,b,type='double3')
        mc.setAttr(AA+'.reflectivity', 0.2)
'''
def anodizedAluminum(r,g,b,name,obj):
    ### Anodized aluminum
    blueAA = mc.shadingNode('phong',asShader=True, n=name+'_AA')
    blueAASG = mc.sets(r=True, nss=True, em=True, n=name+'_AASG')
    mc.connectAttr(blueAA+'.outColor',blueAASG+'.surfaceShader')
    mc.setAttr(blueAA+'.color',r,g,b,type='double3')
    mc.setAttr(blueAA+'.cosinePower', 2)
    mc.setAttr(blueAA+'.specularColor', 0.0,0.0,0.3,type='double3')
    mc.setAttr(blueAA+'.reflectivity', 0.2)
'''
def redFineMettalic():
    ### red fine metallic
    global redFMSG
    redFM = mc.shadingNode('phong',asShader=True, n='redFM')
    redFMSG = mc.sets(r=True, nss=True, em=True, n='redFMSG')
    mc.connectAttr(redFM+'.outColor',redFMSG+'.surfaceShader')
    mc.setAttr(redFM+'.color',0.5,0.0395,0.0395,type='double3')
    mc.setAttr(redFM+'.cosinePower', 20)
    mc.setAttr(redFM+'.specularColor', 0.5,0.0395,0.0395,type='double3')
    mc.setAttr(redFM+'.reflectivity', 0.8)

def blueFineMetallic():
    ### blue fine metallic
    global blueFMSG
    blueFM = mc.shadingNode('phong',asShader=True, n='blueFM')
    blueFMSG = mc.sets(r=True, nss=True, em=True, n='blueFMSG')
    mc.connectAttr(blueFM+'.outColor',blueFMSG+'.surfaceShader')
    mc.setAttr(blueFM+'.color',0.04,0.04,0.5,type='double3')
    mc.setAttr(blueFM+'.cosinePower', 20)
    mc.setAttr(blueFM+'.specularColor', 0.04,0.04,0.5,type='double3')
    mc.setAttr(blueFM+'.reflectivity', 0.8)

class fineMetallic():
    def __init__(self, name, r,g,b):
        ### blue fine metallic
        FM = mc.shadingNode('phong',asShader=True, n=name+'FM')
        self.FMSG = mc.sets(r=True, nss=True, em=True, n=name+'FMSG')
        mc.connectAttr(FM+'.outColor',self.FMSG+'.surfaceShader')
        mc.setAttr(FM+'.color',r,g,b,type='double3')
        mc.setAttr(FM+'.cosinePower', 20)
        mc.setAttr(FM+'.specularColor', r,g,b,type='double3')
        mc.setAttr(FM+'.reflectivity', 0.8)

def clearPlastic():
    ### clear plastic
    global cPlasticSG
    cPlastic = mc.shadingNode('phong',asShader=True, n='cPlastic')
    cPlasticSG = mc.sets(r=True, nss=True, em=True, n='cPlasticSG')
    mc.connectAttr(cPlastic+'.outColor',cPlasticSG+'.surfaceShader')
    mc.setAttr(cPlastic+'.color',0.0,0.0,0.0,type='double3')
    mc.setAttr(cPlastic+'.cosinePower', 20)
    mc.setAttr(cPlastic+'.specularColor', 2.0,2.0,2.0,type='double3')
    mc.setAttr(cPlastic+'.reflectivity', 0.5)
    mc.setAttr(cPlastic+'.transparency', 0.6, 0.6, 0.6, type='double3')

def greyClearPlastic():
    ### greyclear plastic
    global greyCPlasticSG
    greyCPlastic = mc.shadingNode('phong',asShader=True, n='greyCPlastic')
    greyCPlasticSG = mc.sets(r=True, nss=True, em=True, n='greyCPlasticSG')
    mc.connectAttr(greyCPlastic+'.outColor',greyCPlasticSG+'.surfaceShader')
    mc.setAttr(greyCPlastic+'.color',0.0,0.0,0.0,type='double3')
    mc.setAttr(greyCPlastic+'.cosinePower', 20)
    mc.setAttr(greyCPlastic+'.specularColor', 2.0,2.0,2.0,type='double3')
    mc.setAttr(greyCPlastic+'.reflectivity', 0.5)
    mc.setAttr(greyCPlastic+'.transparency', 0.6, 0.6, 0.6, type='double3')

def blueClearPlastic():
    ### blue clear plastic
    global blueCPlasticSG
    blueCPlastic = mc.shadingNode('phong',asShader=True, n='blueCPlastic')
    blueCPlasticSG = mc.sets(r=True, nss=True, em=True, n='blueCPlasticSG')
    mc.connectAttr(blueCPlastic+'.outColor',blueCPlasticSG+'.surfaceShader')
    mc.setAttr(blueCPlastic+'.color',0.0,0.0,0.3,type='double3')
    mc.setAttr(blueCPlastic+'.cosinePower', 20)
    mc.setAttr(blueCPlastic+'.specularColor', 2.0,2.0,2.0,type='double3')
    mc.setAttr(blueCPlastic+'.reflectivity', 0.5)
    mc.setAttr(blueCPlastic+'.transparency', 0.6, 0.6, 0.6, type='double3')


class clearPlasticRGB():
    def __init__(self,name,r,g,b):
        ### blue clear plastic
        blueCPlastic = mc.shadingNode('phong',asShader=True, n='blueCPlastic')
        self.PlasticSG = mc.sets(r=True, nss=True, em=True, n='blueCPlasticSG')
        mc.connectAttr(blueCPlastic+'.outColor',self.PlasticSG+'.surfaceShader')
        mc.setAttr(blueCPlastic+'.color',r,g,b,type='double3')
        mc.setAttr(blueCPlastic+'.cosinePower', 20)
        mc.setAttr(blueCPlastic+'.specularColor', 2.0,2.0,2.0,type='double3')
        mc.setAttr(blueCPlastic+'.reflectivity', 0.5)
        mc.setAttr(blueCPlastic+'.transparency', 0.6, 0.6, 0.6, type='double3')

def chrome():
    ### blue clear plastic
    global chromeSG
    chrome = mc.shadingNode('phong',asShader=True, n='chrome')
    chromeSG = mc.sets(r=True, nss=True, em=True, n='chromeSG')
    mc.connectAttr(chrome+'.outColor',chromeSG+'.surfaceShader')
    mc.setAttr(chrome+'.color',0.0,0.0,0.0,type='double3')
    mc.setAttr(chrome+'.transparency', 0.0, 0.0, 0.0, type='double3')
    mc.setAttr(chrome+'.ambientColor', 1.0, 1.0, 1.0, type='double3')
    mc.setAttr(chrome+'.incandescence', 0.122, 0.122, 0.122, type='double3')
    mc.setAttr(chrome+'.cosinePower', 20)
    mc.setAttr(chrome+'.specularColor', 2.0,2.0,2.0,type='double3')
    mc.setAttr(chrome+'.reflectivity', 2.0)

def npchrome():
    ### blue clear plastic
    global npchromeSG
    npchrome = mc.shadingNode('phong',asShader=True, n='npchrome')
    npchromeSG = mc.sets(r=True, nss=True, em=True, n='npchromeSG')
    mc.connectAttr(npchrome+'.outColor',npchromeSG+'.surfaceShader')
    mc.setAttr(npchrome+'.color',0.0,0.0,0.0,type='double3')
    mc.setAttr(npchrome+'.transparency', 0.0, 0.0, 0.0, type='double3')
    mc.setAttr(npchrome+'.ambientColor', 1.0, 1.0, 1.0, type='double3')
    mc.setAttr(npchrome+'.incandescence', 0.122, 0.122, 0.122, type='double3')
    mc.setAttr(npchrome+'.cosinePower', 20)
    mc.setAttr(npchrome+'.specularColor', 2.0,2.0,2.0,type='double3')
    mc.setAttr(npchrome+'.reflectivity', 2.0)
    #create water texture and link it
    texture = mc.shadingNode('water', at=True, n='chromeTex' )
    chromePlaceTex = mc.shadingNode('place2dTexture', au=True, n='chromePlaceTex')
    mc.connectAttr(chromePlaceTex+'.outUV', texture+'.uv')
    mc.connectAttr(chromePlaceTex+'.outUvFilterSize', texture+'.uvFilterSize')
    mc.defaultNavigation(ce=True, d=npchrome+'.normalCamera', s=texture)
    mc.setAttr(texture+'.alphaIsLuminance',True)
    #mc.connectAttr(texture+'.outAlpha', 'bump2d2.bumpValue', f=True )
    #mc.connectAttr('bump2d2.outNormal', npchrome+'.bumpValue', f=True )
    #set texture settings
    mc.setAttr(texture+'.numberOfWaves',32)
    mc.setAttr(texture+'.waveTime',1.0)
    mc.setAttr(texture+'.waveFrequency',5.25)

def gold():
    ### gold
    global goldSG
    chrome = mc.shadingNode('blinn',asShader=True, n='gold')
    goldSG = mc.sets(r=True, nss=True, em=True, n='goldSG')
    mc.connectAttr(chrome+'.outColor',goldSG+'.surfaceShader')
    mc.setAttr(chrome+'.color',0.0,0.0,0.0,type='double3')
    mc.setAttr(chrome+'.transparency', 0.0, 0.0, 0.0, type='double3')
    mc.setAttr(chrome+'.ambientColor', 0.75, 0.5, 0.12, type='double3')
    mc.setAttr(chrome+'.incandescence', 0.122, 0.122, 0.122, type='double3')
    #mc.setAttr(chrome+'.cosinePower', 20)
    mc.setAttr(chrome+'.specularColor', 0.75,0.50,0.12,type='double3')
    mc.setAttr(chrome+'.reflectivity', 2.0)

def shinyGold():
    ### gold
    global shinyGoldSG
    chrome = mc.shadingNode('blinn',asShader=True, n='shinyGold')
    shinyGoldSG = mc.sets(r=True, nss=True, em=True, n='ShinyGoldSG')
    mc.connectAttr(chrome+'.outColor',shinyGoldSG+'.surfaceShader')
    mc.setAttr(chrome+'.color',0.75, 0.5, 0.12,type='double3')
    mc.setAttr(chrome+'.transparency', 0.0, 0.0, 0.0, type='double3')
    mc.setAttr(chrome+'.ambientColor', 0.75, 0.5, 0.12, type='double3')
    mc.setAttr(chrome+'.incandescence', 0.122, 0.122, 0.122, type='double3')
    #mc.setAttr(chrome+'.cosinePower', 20)
    mc.setAttr(chrome+'.specularColor', 0.75,0.50,0.12,type='double3')
    mc.setAttr(chrome+'.reflectivity', 2.0)

def silver():
    ### silver
    global silverSG
    chrome = mc.shadingNode('blinn',asShader=True, n='silver')
    silverSG = mc.sets(r=True, nss=True, em=True, n='silverSG')
    mc.connectAttr(chrome+'.outColor',silverSG+'.surfaceShader')
    mc.setAttr(chrome+'.color',0.0, 0.0, 0.0,type='double3')
    mc.setAttr(chrome+'.transparency', 0.0, 0.0, 0.0, type='double3')
    mc.setAttr(chrome+'.ambientColor', 0.0, 0.0, 0.0, type='double3')
    mc.setAttr(chrome+'.incandescence', 0.122, 0.122, 0.122, type='double3')
    #mc.setAttr(chrome+'.cosinePower', 20)
    mc.setAttr(chrome+'.specularColor', 1.0,1.0,1.0,type='double3')
    mc.setAttr(chrome+'.reflectivity', 2.0)


'''
#build all of the default shaders
redAnodizedAluminum()
blueAnodizedAluminum()
redFineMettalic()
blueFineMetallic()
clearPlastic()
greyClearPlastic()
blueClearPlastic()
chrome()
npchrome()
gold()
shinyGold()
silver()
'''

'''
redAASphere = mc.polySphere(r=5,n='redAASphere')[0]
blueAASphere = mc.polySphere(r=5,n='blueAASphere')[0]
redFMSphere = mc.polySphere(r=5,n='redFMSphere')[0]
blueFMSphere = mc.polySphere(r=5,n='blueFMSphere')[0]
clearSphere = mc.polySphere(r=5,n='clearSphere')[0]
blueClearSphere = mc.polySphere(r=5,n='blueClearSphere')[0]
greyClearSphere = mc.polySphere(r=5,n='greyClearSphere')[0]
chromeSphere = mc.polySphere(r=5,n='chromeSphere')[0]
npchromeSphere = mc.polySphere(r=5,n='npchromeSphere')[0]

floor = mc.polyPlane(w=300,h=50)
mc.move(0,-5,0)

mc.select(cl=True)
mc.select(redAASphere)
mc.sets(e=True, forceElement = redAASG)

mc.select(cl=True)
mc.select(blueAASphere)
mc.move(15,0,0)
mc.sets(e=True, forceElement = blueAASG)

mc.select(cl=True)
mc.select(redFMSphere)
mc.move(30,0,0)
mc.sets(e=True, forceElement = redFMSG)

mc.select(cl=True)
mc.select(blueFMSphere)
mc.move(45,0,0)
mc.sets(e=True, forceElement = blueFMSG)

mc.select(cl=True)
mc.select(clearSphere)
mc.move(60,0,0)
mc.sets(e=True, forceElement = cPlasticSG)

mc.select(cl=True)
mc.select(chromeSphere)
mc.move(-15,0,0)
mc.sets(e=True, forceElement = chromeSG)

mc.select(cl=True)
mc.select(npchromeSphere)
mc.move(-30,0,0)
mc.sets(e=True, forceElement = npchromeSG)
'''