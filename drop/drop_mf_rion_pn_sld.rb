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

	if GetLocalInt(oBook, "rion_pd") > 0 
       
            nMissionKills = GetLocalInt(oBook, "mf_misja_kills")
            SetLocalInt(oBook, "mf_misja_kills2", nMissionKills+1)
	end
