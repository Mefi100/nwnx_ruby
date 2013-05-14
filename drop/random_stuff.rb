require 'drop_inc'

nRoll = rand(100)+1

puts RandomGemLow();

    if nRoll < 50
      sItem = RandomGemLow()
      d4_x2 = rand(7)+2
      CreateItemOnObject(sItem, $OBJECT_SELF, d4_x2)
    elsif nRoll < 60
      sItem = AlchemyMisc()
      CreateItemOnObject(sItem, $OBJECT_SELF, 1)
    elsif nRoll < 75
      d3 = rand(3)+1
      CreateItemOnObject("nw_it_medkit001", $OBJECT_SELF, d3);
    elsif nRoll < 90
      d3 = rand(3)+1
      sItem = RandomPotion()
      CreateItemOnObject(sItem, $OBJECT_SELF, d3)
    elsif nRoll < 92
      sItem = RandomSpecialItem()
      CreateItemOnObject(sItem, $OBJECT_SELF, 1)
    else
      sItem = "nw_it_picks00"+(rand(2)+1).to_s
      CreateItemOnObject(sItem, $OBJECT_SELF, 1)
    end