include NWScript

nRandom = rand(100)+1

 if nRandom <= 5
 CreateItemOnObject("mf_klejnot_cien", $OBJECT_SELF, 1)
 end

nRandom = rand(100)+1

 if nRandom == 100
  sItem = mf_br_cienia_00+(rand(6)+1).to_s
 CreateItemOnObject(sItem, $OBJECT_SELF, 1)
 end