include NWScript

nRandom = rand(100)+1

 if nRandom <= 25
 CreateItemOnObject("mf_mit_trash", $OBJECT_SELF, 1)
 end