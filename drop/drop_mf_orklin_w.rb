include NWScript

nRandom = rand(100)+1

 if nRandom <= 4
 CreateItemOnObject("mf_kruszyciel", $OBJECT_SELF, 1)
 end