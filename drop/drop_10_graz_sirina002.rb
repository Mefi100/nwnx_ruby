include NWScript

nRandom = rand(100)+1

 if nRandom <= 3
 CreateItemOnObject("mf_pukiel_fey", $OBJECT_SELF, 1)
 end