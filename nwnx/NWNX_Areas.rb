module NWScript
module NWNX_Areas
  
  def LoadArea(sResRef)
    oMod = GetModule()
    SetLocalString(oMod, "NWNX!AREAS!CREATE_AREA", sResRef)
    return GetLocalObject(oMod, "NWNX!AREAS!GET_LAST_AREA_ID")
  end
  
  def DestroyArea(oArea)
    oMod = GetModule()
    SetLocalString(oMod, "NWNX!AREAS!DESTROY_AREA", ObjectToString(oArea))
  end
  
  def SetAreaName(oArea, sName)
    SetLocalString(oArea, "NWNX!AREAS!SET_AREA_NAME", sName)
  end
  
end
end