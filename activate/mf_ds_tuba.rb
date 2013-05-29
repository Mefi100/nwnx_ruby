require 'drop_inc'
include NWScript

oPC = $OBJECT_SELF
nZwoje_3=rand(3)+1
nZwojeHi=rand(3)+4
nRoll = rand(100)+1

  for i in 0..nZwoje_3 
    sScroll = MfScrolls("A", "3")
    CreateItemOnObject(sScroll, oPC, 1)
  end
      

    if nZwojeHi == 4
      sScroll = MfScrolls("A", "4")
    elsif nZwojeHi == 5
      sScroll = MfScrolls("A", "5")
    elsif nZwojeHi == 6
      sScroll = MfScrolls("A", "6")
    end
    
  CreateItemOnObject(sScroll, oPC, 1)

    if nRoll > 99
      sScroll = MfScrolls("A", "9")
      CreateItemOnObject(sScroll, oPC, 1)
    elsif nRoll > 96
      sScroll = MfScrolls("A", "8")
      CreateItemOnObject(sScroll, oPC, 1)
    elsif nRoll > 91
      sScroll = MfScrolls("A", "7")
      CreateItemOnObject(sScroll, oPC, 1)
    end