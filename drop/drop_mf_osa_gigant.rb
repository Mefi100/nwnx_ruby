include NWScript

nRandom = rand(100)+1

 if nRandom <= 20
 CreateItemOnObject("mf_jad_osy", $OBJECT_SELF, 1)
 end