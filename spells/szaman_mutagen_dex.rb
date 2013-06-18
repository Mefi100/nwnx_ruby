include NWScript

pc = $OBJECT_SELF

eff_poison = EffectPoison(POISON_CHAOS_MIST)
ApplyEffectToObject(DURATION_TYPE_PERMANENT, eff_poison, pc)

if 0 == GetHasSpellEffect(359, pc)
  eff_str = EffectAbilityIncrease(ABILITY_DEXTERITY,2)
  ApplyEffectToObject(DURATION_TYPE_PERMANENT, eff_str, pc)  
end