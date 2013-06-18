require 'Mf_Tools'
include NWScript
include Mf_Tools

pc = GetPcSpeaker()
lv = GetLevelByClass(CLASS_TYPE_DRUID, pc)
loc = GetLocation(pc)
duration = h_to_sec(24)
book = GetItemPossessedBy(pc, "mf_faction")

if 1 == GetLocalInt(book, "szaman_lisciec")
  SendMessageToPC("Nie mo¿esz dziœ ju¿ przywo³aæ liœæca!")
  exit
end

case lv
   when 5..10 then resref = "mf_sz_lis_01"
   when 11..15 then resref = "mf_sz_lis_02"
   when 15..20 then resref = "mf_sz_lis_03"
   else resref = "mf_sz_lis_04"
end


eff_summon = EffectSummonCreature(resref, VFX_FNF_SUMMON_MONSTER_3)

ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eff_summon, loc, duration)
SetLocalInt(book, "szaman_lisciec", 1)
