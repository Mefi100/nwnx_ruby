module NWScript::NWNX_Funcs
  
  CREATURE_EVENT_HEARTBEAT              = 0
  CREATURE_EVENT_PERCEPTION             = 1
  CREATURE_EVENT_SPELLCAST              = 2
  CREATURE_EVENT_ATTACKED               = 3
  CREATURE_EVENT_DAMAGED                = 4
  CREATURE_EVENT_DISTURBED              = 5
  CREATURE_EVENT_ENDCOMBAT              = 6
  CREATURE_EVENT_CONVERSATION           = 7
  CREATURE_EVENT_SPAWN                  = 8
  CREATURE_EVENT_RESTED                 = 9
  CREATURE_EVENT_DEATH                  = 10
  CREATURE_EVENT_USERDEF                = 11
  CREATURE_EVENT_BLOCKED                = 12
  
# Supported by SetEventHandler() / GetEventHandler
  CREATURE_SCRIPT_ON_HEARTBEAT              = 0
  CREATURE_SCRIPT_ON_NOTICE                 = 1
  CREATURE_SCRIPT_ON_SPELLCASTAT            = 2
  CREATURE_SCRIPT_ON_MELEE_ATTACKED         = 3
  CREATURE_SCRIPT_ON_DAMAGED                = 4
  CREATURE_SCRIPT_ON_DISTURBED              = 5
  CREATURE_SCRIPT_ON_END_COMBATROUND        = 6
  CREATURE_SCRIPT_ON_DIALOGUE               = 7
  CREATURE_SCRIPT_ON_SPAWN_IN               = 8
  CREATURE_SCRIPT_ON_RESTED                 = 9
  CREATURE_SCRIPT_ON_DEATH                  = 10
  CREATURE_SCRIPT_ON_USER_DEFINED_EVENT     = 11
  CREATURE_SCRIPT_ON_BLOCKED_BY_DOOR        = 12
# Trigger
  SCRIPT_TRIGGER_ON_HEARTBEAT          = 0
  SCRIPT_TRIGGER_ON_OBJECT_ENTER       = 1
  SCRIPT_TRIGGER_ON_OBJECT_EXIT        = 2
  SCRIPT_TRIGGER_ON_USER_DEFINED_EVENT = 3
  SCRIPT_TRIGGER_ON_TRAPTRIGGERED      = 4
  SCRIPT_TRIGGER_ON_DISARMED           = 5
  SCRIPT_TRIGGER_ON_CLICKED            = 6
# Area
  SCRIPT_AREA_ON_HEARTBEAT            = 0
  SCRIPT_AREA_ON_USER_DEFINED_EVENT   = 1
  SCRIPT_AREA_ON_ENTER                = 2
  SCRIPT_AREA_ON_EXIT                 = 3
  SCRIPT_AREA_ON_CLIENT_ENTER         = 4
# Door
  SCRIPT_DOOR_ON_OPEN            = 0
  SCRIPT_DOOR_ON_CLOSE           = 1
  SCRIPT_DOOR_ON_DAMAGE          = 2
  SCRIPT_DOOR_ON_DEATH           = 3
  SCRIPT_DOOR_ON_DISARM          = 4
  SCRIPT_DOOR_ON_HEARTBEAT       = 5
  SCRIPT_DOOR_ON_LOCK            = 6
  SCRIPT_DOOR_ON_MELEE_ATTACKED  = 7
  SCRIPT_DOOR_ON_SPELLCASTAT     = 8
  SCRIPT_DOOR_ON_TRAPTRIGGERED   = 9
  SCRIPT_DOOR_ON_UNLOCK          = 10
  SCRIPT_DOOR_ON_USERDEFINED     = 11
  SCRIPT_DOOR_ON_CLICKED         = 12
  SCRIPT_DOOR_ON_DIALOGUE        = 13
  SCRIPT_DOOR_ON_FAIL_TO_OPEN    = 14
# Encounter
  SCRIPT_ENCOUNTER_ON_OBJECT_ENTER        = 0
  SCRIPT_ENCOUNTER_ON_OBJECT_EXIT         = 1
  SCRIPT_ENCOUNTER_ON_HEARTBEAT           = 2
  SCRIPT_ENCOUNTER_ON_ENCOUNTER_EXHAUSTED = 3
  SCRIPT_ENCOUNTER_ON_USER_DEFINED_EVENT  = 4
# Module
  SCRIPT_MODULE_ON_HEARTBEAT              = 0
  SCRIPT_MODULE_ON_USER_DEFINED_EVENT     = 1
  SCRIPT_MODULE_ON_MODULE_LOAD            = 2
  SCRIPT_MODULE_ON_MODULE_START           = 3
  SCRIPT_MODULE_ON_CLIENT_ENTER           = 4
  SCRIPT_MODULE_ON_CLIENT_EXIT            = 5
  SCRIPT_MODULE_ON_ACTIVATE_ITEM          = 6
  SCRIPT_MODULE_ON_ACQUIRE_ITEM           = 7
  SCRIPT_MODULE_ON_LOSE_ITEM              = 8
  SCRIPT_MODULE_ON_PLAYER_DEATH           = 9
  SCRIPT_MODULE_ON_PLAYER_DYING           = 10
  SCRIPT_MODULE_ON_RESPAWN_BUTTON_PRESSED = 11
  SCRIPT_MODULE_ON_PLAYER_REST            = 12
  SCRIPT_MODULE_ON_PLAYER_LEVEL_UP        = 13
  SCRIPT_MODULE_ON_PLAYER_CANCEL_CUTSCENE = 14
  SCRIPT_MODULE_ON_EQUIP_ITEM             = 15
  SCRIPT_MODULE_ON_UNEQUIP_ITEM           = 16
# Placeable
  SCRIPT_PLACEABLE_ON_CLOSED              = 0
  SCRIPT_PLACEABLE_ON_DAMAGED             = 1
  SCRIPT_PLACEABLE_ON_DEATH               = 2
  SCRIPT_PLACEABLE_ON_DISARM              = 3
  SCRIPT_PLACEABLE_ON_HEARTBEAT           = 4
  SCRIPT_PLACEABLE_ON_INVENTORYDISTURBED  = 5
  SCRIPT_PLACEABLE_ON_LOCK                = 6
  SCRIPT_PLACEABLE_ON_MELEEATTACKED       = 7
  SCRIPT_PLACEABLE_ON_OPEN                = 8
  SCRIPT_PLACEABLE_ON_SPELLCASTAT         = 9
  SCRIPT_PLACEABLE_ON_TRAPTRIGGERED       = 10
  SCRIPT_PLACEABLE_ON_UNLOCK              = 11
  SCRIPT_PLACEABLE_ON_USED                = 12
  SCRIPT_PLACEABLE_ON_USER_DEFINED_EVENT  = 13
  SCRIPT_PLACEABLE_ON_DIALOGUE            = 14
# AOE
  SCRIPT_AOE_ON_HEARTBEAT            = 0
  SCRIPT_AOE_ON_USER_DEFINED_EVENT   = 1
  SCRIPT_AOE_ON_OBJECT_ENTER         = 2
  SCRIPT_AOE_ON_OBJECT_EXIT          = 3
# Store
  SCRIPT_STORE_ON_OPEN              = 0
  SCRIPT_STORE_ON_CLOSE             = 1
  
  MOVEMENT_RATE_PC                      = 0
  MOVEMENT_RATE_IMMOBILE                = 1
  MOVEMENT_RATE_VERY_SLOW               = 2
  MOVEMENT_RATE_SLOW                    = 3
  MOVEMENT_RATE_NORMAL                  = 4
  MOVEMENT_RATE_FAST                    = 5
  MOVEMENT_RATE_VERY_FAST               = 6
  MOVEMENT_RATE_DEFAULT                 = 7
  MOVEMENT_RATE_DM_FAST                 = 8
  
  VARIABLE_TYPE_                        = 1
  VARIABLE_TYPE_FLOAT                   = 2
  VARIABLE_TYPE_STRING                  = 3
  VARIABLE_TYPE_OBJECT                  = 4
  VARIABLE_TYPE_LOCATION                = 5
  
  QUICKBAR_TYPE_ITEM                    = 1
  QUICKBAR_TYPE_SPELL                   = 2
  QUICKBAR_TYPE_FEAT                    = 4
  
  Struct.new("MemorizedSpellSlot", :id, :ready, :meta, :domain)
  Struct.new("SpecialAbilitySlot", :id, :ready, :level)
  Struct.new("QuickBarSlot", :slot, :type, :class, :id, :meta)
  Struct.new("LocalVariable", :type, :pos, :name, :obj)
  Struct.new("CreatureAbilities", :a_str, :a_dex, :a_con, :a_int, :a_wis, :a_cha)
  Struct.new("CreatureSkills", :sk_aniemp, :sk_conc, :sk_distrap, :sk_disc, :sk_heal, :sk_hide, :sk_listen,
  :sk_lore, :sk_movesil, :sk_openlock, :sk_parry, :sk_perform, :sk_persuade, :sk_ppocket,
  :sk_search, :sk_settrap, :sk_spcraft, :sk_spot, :sk_taunt, :sk_umd, :sk_appraise, :sk_tumble,
  :sk_ctrap, :sk_bluff, :sk_intim, :sk_carmor, :sk_cweapon, :sk_ride)
  Struct.new("Timeval", :sec, :usec)
  
  def NWNXFuncsZero(oObject, sFunc)
    SetLocalString(oObject, sFunc, "          ")
    return  GetLocalString(oObject, sFunc).to_i
  end
  
  def NWNXFuncsOne(oObject, sFunc, nVal1)
    SetLocalString(oObject, sFunc, nVal1.to_s + "          ")
    return  GetLocalString(oObject, sFunc).to_i 
  end
  
  def NWNXFuncsTwo (oObject, sFunc, nVal1, nVal2)
    SetLocalString(oObject, sFunc, nVal1.to_s + " " + nVal2.to_s + "          ")
    return  GetLocalString(oObject, sFunc).to_i
  end
  
  def NWNXFuncsThree (oObject, sFunc, nVal1, nVal2, nVal3)
    SetLocalString(oObject, sFunc, nVal1.to_s + " " + nVal2.to_s +
          " " + nVal3.to_s + "          ")
    return  GetLocalString(oObject, sFunc).to_i
  end
  
  def USleep (usec)
    NWNXFuncsOne(GetModule(), "NWNX!FUNCS!USLEEP", usec)
  end
  
  def GetTimeOfDay  
        sFunc = "NWNX!FUNCS!GETTIMEOFDAY"
        SetLocalString(GetModule(), sFunc, "                                         ")
        
        time = GetLocalString(GetModule(), sFunc)
        
        if time.include?(".")
            sec = (time[ 0 .. time.index('.')]-1).to_i
            usec = (time[time.index('.')] .. 32).to_i
         ret = Struct::Timeval.new(sec, usec)  
        end
        
        return ret
  end
  
  def SetAbilityScore (oCreature, nAbility, nValue)
    return NWNXFuncsTwo(oCreature, "NWNX!FUNCS!SETABILITYSCORE", nAbility, nValue)
  end
  
  def ModifyAbilityScore (oCreature, nAbility, nValue)
    return NWNXFuncsTwo(oCreature, "NWNX!FUNCS!MODIFYABILITYSCORE", nAbility, nValue)
  end
  
  def SetSkillRank (oCreature, nSkill, nValue)
    return NWNXFuncsTwo(oCreature, "NWNX!FUNCS!SETSKILLRANK", nSkill, nValue)
  end
  
  def ModifySkillRank (oCreature, nSkill, nValue)
    return NWNXFuncsTwo(oCreature, "NWNX!FUNCS!MODIFYSKILLRANK", nSkill, nValue)
  end
  
  def ModifySkillRankByLevel (oCreature, nLevel, nSkill, nValue)
    return NWNXFuncsThree(oCreature, "NWNX!FUNCS!MODIFYSKILLRANKBYLEVEL", nLevel, nSkill, nValue)
  end
  
  def GetACNaturalBase (oCreature)
    return NWNXFuncsZero(oCreature, "NWNX!FUNCS!GETACNATURALBASE")
  end
  
  def SetACNaturalBase (oCreature, nAC)
    return NWNXFuncsOne(oCreature, "NWNX!FUNCS!SETACNATURALBASE", nAC)
  end
  
end