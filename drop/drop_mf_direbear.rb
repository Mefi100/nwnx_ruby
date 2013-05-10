include NWScript

nRandom = rand(100)+1

 if nRandom <= 40
 CreateItemOnObject("mf_craft_skora", $OBJECT_SELF)
 end
