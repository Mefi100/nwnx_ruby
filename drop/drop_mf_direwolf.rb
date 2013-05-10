include NWScript

nRandom = rand(100)+1

 if nRandom <= 20
 CreateItemOnObject("mf_alchemy_25", $OBJECT_SELF)
 end

nRandom = rand(100)+1

 if nRandom <= 30
 CreateItemOnObject("mf_craft_skora", $OBJECT_SELF)
 end
