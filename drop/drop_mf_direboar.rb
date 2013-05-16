include NWScript

nRandom = rand(100)+1

 if nRandom <= 33 
 CreateItemOnObject("mf_alchemy_28", $OBJECT_SELF, 1)
 end

nRandom = rand(100)+1

 if nRandom <= 20
 CreateItemOnObject("mf_craft_skora", $OBJECT_SELF, 1)
 end 