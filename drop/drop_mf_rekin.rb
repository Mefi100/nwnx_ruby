include NWScript

oMurder = GetLastKiller()
oMaster = GetMaster(oMurder)

if oMaster != OBJECT_INVALID
    SetLocalObject(oMurder, "killer", oMaster)
else
    SetLocalObject(oMurder, "killer", oMurder)
end

oKiller = GetLocalObject(oMurder, "killer")
oBook = GetItemPossessedBy(oKiller, "mf_faction");

	if GetLocalInt(oBook, "serra_quest") == 1 
         
            nSharks = GetLocalInt(oBook, "serra_sharks")+1
            SetLocalInt(oBook, "serra_sharks", nSharks)

              if nSharks >= 5 
		 SetLocalInt(oBook, "serra_quest", 2)
	      end

            FloatingTextStringOnCreature("Zdobyte skóry rekina: "+IntToString(nSharks)+"/5",oKiller, FALSE)
         end

          nRandom = random(100)+1

          if nRandom <= 20
              CreateItemOnObject("mf_alchemy_22", OBJECT_SELF, 1)
	  end
