include NWScript

#def SetTag (oObject, sTag)
#    SetLocalString(oObject, "NWNX!FUNCS!SETTAG", sTag)
#    return GetLocalString(oObject, "NWNX!FUNCS!SETTAG")
#  end

load 'convert.rb'
#oDoki = GetObjectByTag("mf_doki_parouis")
#eEffect = EffectVisualEffect(VFX_DUR_WEB_MASS)
#lPC = GetLocation(oDoki)
#ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eEffect, lPC, 10.0)
#SetTag(oDoki, "doki_nortland")

#NWScript.AssignCommand(oDoki){SpeakString("test!")}

SendMessageToPC($OBJECT_SELF, "Test: "+Time.now.to_s)
