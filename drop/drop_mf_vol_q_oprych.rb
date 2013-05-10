include NWScript

oMurder = GetLastKiller()
oMaster = GetMaster(oMurder)

if oMaster != OBJECT_INVALID
    SetLocalObject(oMurder, "killer", oMaster)
else
    SetLocalObject(oMurder, "killer", oMurder)
end

oKiller = GetLocalObject(oMurder, "killer")
oBook = GetItemPossessedBy(oKiller, "mf_faction")

  if (GetLocalInt(oBook, "vol_quest_active") == 1) && (GetLocalInt(oBook, "vol_quest")==1)
                
	SetLocalInt(oBook,"vol_quest_active",2)
  end
