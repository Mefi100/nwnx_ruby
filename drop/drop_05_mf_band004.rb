include NWScript

oMurder = GetLastKiller()
oMaster = GetMaster(oMurder)

if oMaster != 0
    SetLocalObject(oMurder, "killer", oMaster)
else
    SetLocalObject(oMurder, "killer", oMurder)
end

oKiller = GetLocalObject(oMurder, "killer")
oBook = GetItemPossessedBy(oKiller, "mf_faction")

	if GetLocalInt(oBook, "vol_quest_active") == 1) && (GetLocalInt(oBook, "vol_quest")==3
         
            if GetItemPossessedBy(oKiller, "mf_glowa_ban") == 0
                CreateItemOnObject("mf_glowa_ban", oKiller, 1)
                SetLocalInt(oBook,"vol_quest_active",2)
            end

         end
