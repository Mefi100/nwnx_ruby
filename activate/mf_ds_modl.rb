require 'drop_inc'
include NWScript

oPC = GetItemActivator()
nZwoje_3=rand(3)+1
nZwojeHi=rand(3)+4
nRoll = rand(100)+1

  for i in 0..nZwoje_3 
    sScroll = MfScrolls("D", "3")
    CreateItemOnObject(sScroll, oPC, 1)
  end
      

    if nZwojeHi == 4
      sScroll = MfScrolls("D", "4")
    elsif nZwojeHi == 5
      sScroll = MfScrolls("D", "5")
    elsif nZwojeHi == 6
      sScroll = MfScrolls("D", "6")
    end
    
  CreateItemOnObject(sScroll, oPC, 1)

    if nRoll > 99
      sScroll = MfScrolls("D", "9")
      CreateItemOnObject(sScroll, oPC, 1)
    elsif nRoll > 96
      sScroll = MfScrolls("D", "8")
      CreateItemOnObject(sScroll, oPC, 1)
    elsif nRoll > 91
      sScroll = MfScrolls("D", "7")
      CreateItemOnObject(sScroll, oPC, 1)
    end