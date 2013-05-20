include NWScript

oPC = GetItemActivator()
oTarget = GetItemActivatedTarget()
oItem = GetItemActivated()

  if oPC == oTarget
    NWScript.AssignCommand(oPC){ ActionStartConversation(oPC, "mf_emote",1,0)}
  else
    if GetObjectType(oTarget) == OBJECT_TYPE_CREATURE
      SetLocalObject(oItem, "cel", oTarget)
      SetLocalObject(oTarget, "gracz", oPC)  
    end
    NWScript.AssignCommand(oPC){ActionStartConversation(oPC, "mf_animacje", 1, 0)}
  end