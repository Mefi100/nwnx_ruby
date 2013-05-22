require 'NWNX_Funcs'
include NWScript
include NWScript::NWNX_Funcs

oFamiliar = $OBJECT_SELF
oPC = GetMaster(oFamiliar)

lv = GetLevelByClass(CLASS_TYPE_WIZARD, oPC) + GetLevelByClass(CLASS_TYPE_SORCERER, oPC)

oc = lv + 5
kp = 10 + (lv/2).to_i
intelekt = 5 + kp

hp = (GetMaxHitPoints(oPC) / 2).to_i
refleks = GetReflexSavingThrow(oPC)
wytrw = GetFortitudeSavingThrow(oPC)
wola = GetWillSavingThrow(oPC)
eff_spell_resist = EffectSpellResistanceIncrease(oc)
eff_spell_resist = SupernaturalEffect(eff_spell_resist)

SetAbilityScore(oFamiliar, ABILITY_INTELLIGENCE, intelekt)
SetACNaturalBase(oFamiliar, kp)
ApplyEffectToObject(DURATION_TYPE_PERMANENT, eff_spell_resist, oFamiliar)
SetSavingThrowBonus(oFamiliar, SAVING_THROW_FORT, wytrw)
SetSavingThrowBonus(oFamiliar, SAVING_THROW_REFLEX, refleks)
SetSavingThrowBonus(oFamiliar, SAVING_THROW_WILL, wola)