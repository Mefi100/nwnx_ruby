include NWScript

nRandom = rand(100)+1

 if nRandom <= 50
 CreateItemOnObject("mf_alchemy_31", $OBJECT_SELF, 1)
 end