from nimble import cmds as mc
import mayapy.view.gundam.hand_v1 as hand_v1

def createRag(wrist):
    d= mc.select(wrist)
    mayabullet.Ragdoll.CreateRagdoll().executeCommandCB()
def main_run():
    createRag ( hand_v1.Hand("right", hand_v1.right)[0])