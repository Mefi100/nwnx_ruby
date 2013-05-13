include NWScript

nRandom = rand(100)+1

 if nRandom <= 4
 CreateItemOnObject("mf_tru_bulaw", $OBJECT_SELF, 1)
 end