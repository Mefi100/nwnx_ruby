require 'drop_inc'

oMurder = GetLastKiller()
oMaster = GetMaster(oMurder)

if oMaster != OBJECT_INVALID
    SetLocalObject(oMurder, "killer", oMaster)
else
    SetLocalObject(oMurder, "killer", oMurder)
end

oKiller = GetLocalObject(oMurder, "killer")

      if SoulEater(oKiller, $OBJECT_SELF) == 1

        oGem = GetItemPossessedBy(oKiller, "NW_IT_GEM005")

          if oGem != OBJECT_INVALID

            nRandom = rand(100)+1

            if nRandom <= 50
              DestroyObject(oGem)
              CreateItemOnObject("mf_kl_dusz_4", oKiller, 1)
            end

          end

        end

        nRandom = rand(100)+1

          if nRandom <= 5
              sGem = RandomGem()
              CreateItemOnObject(sGem, $OBJECT_SELF, 1)
          end
