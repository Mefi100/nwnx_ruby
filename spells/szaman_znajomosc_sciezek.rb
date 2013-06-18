require 'Mf_Tools'
include NWScript
include Mf_Tools

pc = GetPcSpeaker()
lv = GetLevelByClass(CLASS_TYPE_DRUID, pc)
duration = t_to_sec(lv)
area = GetArea(pc)
book = GetItemPossessedBy(pc, "mf_faction")

if 1 == GetLocalInt(book, "szaman_znajomosc")
  SendMessageToPC("Nie mo�esz dzi� ju� u�y� tej umiej�tno�ci!")
  exit
end

if GetIsAreaNatural(area) == AREA_NATURAL
  eff_speed = EffectMovementSpeedIncrease(20)
  ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eff_speed, pc, duration)  
else
  SendMessageToPC("Mo�esz u�ywa� tej zdolno�ci tylko w naturalnym otoczeniu!")
end
SetLocalInt(book, "szaman_znajomosc", 1)