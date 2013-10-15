include NWScript

nRandom = rand(100)+1
nIle = rand(3)+1

 if nRandom <= 5
 CreateItemOnObject("mf_jad_wywer", $OBJECT_SELF, nIle)
 end

nRandom = rand(100)+1

 if nRandom <= 2
 CreateItemOnObject("mf_skora_wiw", $OBJECT_SELF, 1)
 end