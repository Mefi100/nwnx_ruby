include NWScript

pc = $OBJECT_SELF

eff_poison = EffectPoison(POISON_BLACK_LOTUS_EXTRACT)
ApplyEffectToObject(DURATION_TYPE_PERMANENT, eff_poison, pc)

if 0 == GetHasSpellEffect(360, pc)
  eff_str = EffectAbilityIncrease(ABILITY_STRENGTH,2)
  ApplyEffectToObject(DURATION_TYPE_PERMANENT, eff_str, pc)  
end