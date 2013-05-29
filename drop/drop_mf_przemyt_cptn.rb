include NWScript

nRandom = rand(100)+1
nIle = rand(3)+2

 if nRandom <= 33
 CreateItemOnObject("nw_it_gem006", $OBJECT_SELF, nIle)
 end

nRandom = rand(100)+1

 if nRandom <= 5
 CreateItemOnObject("mf_chaosik", $OBJECT_SELF, 1)
 end