include NWScript

nRandom = rand(100)+1

 if nRandom <= 10
 CreateItemOnObject("mf_alchemy_25", $OBJECT_SELF)
 end

nRandom = rand(100)+1

 if nRandom <= 15
 CreateItemOnObject("mf_craft_skora", $OBJECT_SELF)
 end
