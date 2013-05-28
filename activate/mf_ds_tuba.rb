require 'drop_inc'
include NWScript

nZwoje_3=rand(3)+2
nZwojeHi=rand(3)+4
nRoll = rand(100)+1

  for i in 0..nZwoje_3 
  sScroll = MfScrolls("A", "3")
  end
      

    if nZwojeHi == 4
    CreateItemOnObject(MfScrolls("A", "4"),oPC)
    elsif nZwojeHi == 5
    CreateItemOnObject(MfScrolls("A", "4"),oPC)
    elsif nZwojeHi == 6
    CreateItemOnObject(MfScrolls("A", "5"),oPC)
    end

    if nRoll > 99
    CreateItemOnObject(MfScrolls("A", "9"),oPC)
    elsif nRoll > 96
    CreateItemOnObject(MfScrolls("A", "8"),oPC)
    elsif nRoll > 91
    CreateItemOnObject(MfScrolls("A", "7"),oPC)
    end