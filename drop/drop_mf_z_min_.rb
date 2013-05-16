require 'drop_inc'
include NWScript

nRandom = rand(100)+1

 if nRandom <= 5
 sGem = RandomGem()
 CreateItemOnObject(sGem, $OBJECT_SELF, 1)
 end