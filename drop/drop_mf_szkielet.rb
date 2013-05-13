include NWScript

nRandom = rand(100)+1

 if nRandom <= 5
 CreateItemOnObject("nw_it_msmlmisc13", $OBJECT_SELF, 1)
 end