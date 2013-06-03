include NWScript

oWilk = $OBJECT_SELF

eShield = EffectDamageShield(1, DAMAGE_BONUS_1d4, DAMAGE_TYPE_COLD)
eShield = SupernaturalEffect(eShield)
ApplyEffectToObject(DURATION_TYPE_PERMANENT, eShield, oWilk)