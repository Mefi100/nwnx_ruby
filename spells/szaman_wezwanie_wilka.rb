require 'Mf_Tools'
include NWScript
include Mf_Tools

pc = GetPcSpeaker()
lv = GetLevelByClass(CLASS_TYPE_DRUID, pc)
loc = GetLocation(pc)
duration = t_to_sec(lv)
book = GetItemPossessedBy(pc, "mf_faction")

if 1 == GetLocalInt(book, "szaman_wilk")
  SendMessageToPC("Nie mo¿esz dziœ ju¿ przywo³aæ Legendarnego Wilka!")
  exit
end

eff_summon = EffectSummonCreature("mf_szaman_wilk", VFX_FNF_SUMMON_MONSTER_3)

ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eff_summon, loc, duration)
SetLocalInt(book, "szaman_wilk", 1)