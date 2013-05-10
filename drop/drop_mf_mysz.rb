include NWScript

nRandom = rand(100)+1

 if nRandom <= 50
 CreateItemOnObject("mf_alchemy_30", $OBJECT_SELF)
 end
