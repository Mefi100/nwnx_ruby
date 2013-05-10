include NWScript

nRandom = rand(100)+1

 if nRandom <= 50
 CreateItemOnObject("mf_alchemy_27", $OBJECT_SELF)
 end

nRandom = rand(100)+1

 if nRandom <= 5
 CreateItemOnObject("mf_craft_skora", $OBJECT_SELF)
 end
