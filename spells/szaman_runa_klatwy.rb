include NWScript

pc = GetPcSpeaker()
lv = GetLevelByClass(CLASS_TYPE_DRUID, pc)
item_tablet = GetItemPossessedBy(pc, "mf_alchemy_17")
item_bone = GetItemPossessedBy(pc, "nw_it_msmlmisc13")
item_emerald = GetItemPossessedBy(pc, "NW_IT_GEM012")

if OBJECT_INVALID == item_tablet
  SendMessageToPC(pc, "Musisz posiada� tabliczk� runiczn�.")
  exit
end

if OBJECT_INVALID == item_bone
  SendMessageToPC(pc, "Musisz posiada� knykie� szkieletu.")
  exit
end

if OBJECT_INVALID == item_emerald
  SendMessageToPC(pc, "Musisz posiada� szmaragd.")
  exit
end

DestroyObject(item_tablet)
DestroyObject(item_bone)
DestroyObject(item_emerald)
CreateItemOnObject("mf_sz_runa_k", pc)