include NWScript

nRandom = rand(100)+1

 if nRandom <= 5
 CreateItemOnObject("mf_top_wodza_b2", $OBJECT_SELF, 1)
 end

nRandom = rand(100)+1

 if nRandom == 100
 CreateItemOnObject("mf_zbroja_kr_bar", $OBJECT_SELF, 1)
 end