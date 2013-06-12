require 'Mf_Tools'
include NWScript
include Mf_Tools

pc = GetPcSpeaker()
lv = GetLevelByClass(CLASS_TYPE_DRUID, pc)
duration = t_to_sec(lv)
book = GetItemPossessedBy(pc, "mf_faction")
weapon = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND,pc)

if 1 == GetLocalInt(book, "szaman_s_sierp")
  SendMessageToPC("Nie mo¿esz dziœ ju¿ u¿yæ tej umiejêtnoœci!")
  exit
end

if GetBaseItemType(weapon) ==  BASE_ITEM_SICKLE 
  ip_dmgbonus = ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_POSITIVE, IP_CONST_DAMAGEBONUS_1)
  AddItemProperty(DURATION_TYPE_TEMPORARY, ip_dmgbonus, weapon, duration)
  ip_attackbonus = ItemPropertyAttackBonus(4)
  AddItemProperty(DURATION_TYPE_TEMPORARY, ip_attackbonus, weapon, duration)
  SetLocalInt(book, "szaman_s_sierp", 1)
else
  SendMessageToPC("Aby aktywowaæ t¹ umiejêtnoœæ musisz u¿ywaæ sierpa.")  
end