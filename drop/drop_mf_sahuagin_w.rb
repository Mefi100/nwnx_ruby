include NWScript

nRandom = rand(100)+1
nIle = rand(5)+2

 if nRandom <= 33
 CreateItemOnObject("mf_perelka", $OBJECT_SELF, nIle)
 end

nRandom = rand(100)+1

 if nRandom <= 5
 CreateItemOnObject("mf_wladca_g", $OBJECT_SELF, 1)
 end