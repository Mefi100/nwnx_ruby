include NWScript

nRandom = rand(100)+1
nIle = rand(3)+1

 if nRandom <= 15
 CreateItemOnObject("nw_it_gem006", $OBJECT_SELF, nIle)
 end

nRandom = rand(100)+1

 if nRandom <= 4
 CreateItemOnObject("mf_chaosik", $OBJECT_SELF, 1)
 end