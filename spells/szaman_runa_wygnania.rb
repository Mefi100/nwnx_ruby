include NWScript

pc = GetPcSpeaker()
lv = GetLevelByClass(CLASS_TYPE_DRUID, pc)
item_tablet = GetItemPossessedBy(pc, "mf_alchemy_17")
item_dust = GetItemPossessedBy(pc, "mf_alchemy_11")

if OBJECT_INVALID == item_tablet
  SendMessageToPC(pc, "Musisz posiada� tabliczk� runiczn�.")
  exit
end

if OBJECT_INVALID == item_dust
  SendMessageToPC(pc, "Musisz posiada� popi�.")
  exit
end

DestroyObject(item_tablet)
DestroyObject(item_dust)
CreateItemOnObject("mf_sz_runa_w", pc)
