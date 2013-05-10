require 'drop_inc'
include NWScript

oMurder = GetLastKiller()
oMaster = GetMaster(oMurder)

if oMaster != OBJECT_INVALID
    SetLocalObject(oMurder, "killer", oMaster)
else
    SetLocalObject(oMurder, "killer", oMurder)

oKiller = GetLocalObject(oMurder, "killer")

      if SoulEater(oKiller, $OBJECT_SELF) == 1

        oGem = GetItemPossessedBy(oKiller, "NW_IT_GEM005")

          if oGem != OBJECT_INVALID

            nRandom = rand(100)+1

            if nRandom <= 60
              DestroyObject(oGem)
              CreateItemOnObject("mf_kl_dusz_2", oKiller, 1)
            end

          end

        end
