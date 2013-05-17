require 'kolor.rb'
include NWScript
include Kolory

oChatter = GetPCChatSpeaker()
sMessage = GetPCChatMessage()
nDM = GetIsDM(oChatter)

def ExecCommand(oChatter, sMessage)
  sMsg = sMessage[1]
  
  #wykonywanie akcji towarzyszem
  if sMsg == "tow"
    oTowarzysz = GetHenchman(oChatter)
    sMessage[1] = sMessage[2]
    ExecCommand(oTowarzysz, sMessage)
  elsif sMsg == "prz"
    oTowarzysz= GetAssociate(ASSOCIATE_TYPE_SUMMONED,oChatter)
    sMessage[1] = sMessage[2]
    ExecCommand(oTowarzysz, sMessage)
  elsif sMsg == "dom"
    oTowarzysz= GetAssociate(ASSOCIATE_TYPE_DOMINATED,oChatter)
    sMessage[1] = sMessage[2]
    ExecCommand(oTowarzysz, sMessage) 
  elsif sMsg == "chow"
    oTowarzysz= GetAssociate(ASSOCIATE_TYPE_FAMILIAR,oChatter)
    sMessage[1] = sMessage[2]
    ExecCommand(oTowarzysz, sMessage)
  elsif sMsg == "zw"
    oTowarzysz= GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION,oChatter)
    sMessage[1] = sMessage[2]
    ExecCommand(oTowarzysz, sMessage)
    
  #rzuty na cechy  
  elsif sMsg == "str"
    nMod = GetAbilityModifier(ABILITY_STRENGTH, oChatter)
    nRoll = random(10)+1
    sSpeak = Kolor("BLEKITNY")+"Test Si³y: " + nRoll.to_s+ " + " + nMod.to_s
    + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "dex"
    nMod = GetAbilityModifier(ABILITY_DEXTERITY, oChatter)
    nRoll = random(10)+1
    sSpeak = Kolor("BLEKITNY")+"Test Zrêcznoœci: " + nRoll.to_s+ " + " + nMod.to_s
    + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "con"
    nMod = GetAbilityModifier(ABILITY_CONSTITUTION, oChatter)
    nRoll = random(10)+1
    sSpeak = Kolor("BLEKITNY")+"Test Kondycji: " + nRoll.to_s+ " + " + nMod.to_s
    + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "int"
    nMod = GetAbilityModifier(ABILITY_INTELLIGENCE, oChatter)
    nRoll = random(10)+1
    sSpeak = Kolor("BLEKITNY")+"Test Inteligencji: " + nRoll.to_s+ " + " + nMod.to_s
    + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wis"
    nMod = GetAbilityModifier(ABILITY_WISDOM, oChatter)
    nRoll = random(10)+1
    sSpeak = Kolor("BLEKITNY")+"Test M¹droœci: " + nRoll.to_s+ " + " + nMod.to_s
    + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "cha"
    nMod = GetAbilityModifier(ABILITY_CHARISMA, oChatter)
    nRoll = random(10)+1
    sSpeak = Kolor("BLEKITNY")+"Test Charyzmy: " + nRoll.to_s+ " + " + nMod.to_s
    + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
    
  #rzuty na umiejetnosci  
  elsif sMsg == "akt"
    nMod = GetSkillRank(SKILL_PERFORM, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Aktorstwo: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "zro"
    nMod = GetSkillRank(SKILL_ANIMAL_EMPATHY, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Zrozumienie Zwierz¹t: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wyc"
    nMod = GetSkillRank(SKILL_APPRAISE, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wycena: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "ble"
    nMod = GetSkillRank(SKILL_BLUFF, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Blef: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "kon"
    nMod = GetSkillRank(SKILL_CONCENTRATION, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Koncentracja: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "tpa"
    nMod = GetSkillRank(SKILL_CRAFT_ARMOR, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Tworzenie Pancerza: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "tpu"
    nMod = GetSkillRank(SKILL_CRAFT_TRAP, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Tworzenie Pu³apki: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "tbr"
    nMod = GetSkillRank(SKILL_CRAFT_WEAPON, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Tworzenie Broni: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "roz"
    nMod = GetSkillRank(SKILL_DISABLE_TRAP, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Rozbrajanie Pu³apek: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "dys"
    nMod = GetSkillRank(SKILL_DISCIPLINE, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Dyscyplina: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "lecz"
    nMod = GetSkillRank(SKILL_HEAL, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Leczenie: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "ukr"
    nMod = GetSkillRank(SKILL_HIDE, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Ukrywanie: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "zas"
    nMod = GetSkillRank(SKILL_INTIMIDATE, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Zastraszanie: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "nas"
    nMod = GetSkillRank(SKILL_LISTEN, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Nas³uchiwanie: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wba"
    nMod = GetLevelByClass(CLASS_TYPE_BARD, oChatter) 
    nMod += GetAbilityModifier(ABILITY_INTELLIGENCE, oChatter)
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza bardów: " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "war"
    nMod = GetSkillRank(29, oChatter)
      if 1 == GetHasFeat(2192, oChatter)
        nMod += 3 
      end
      
      if 1 == GetHasFeat(2200, oChatter)
        nMod += 10 
      end
      
      if GetRacialType(oChatter) == RACIAL_TYPE_DWARF
        nMod += 2 
      end
      
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza (Architektura): " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wge"
    nMod = GetSkillRank(30, oChatter)
      if 1 == GetHasFeat(2193, oChatter)
        nMod += 3 
      end
      
      if 1 == GetHasFeat(2201, oChatter)
        nMod += 10 
      end
      
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza (Geografia): " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "whi"
    nMod = GetSkillRank(31, oChatter)
      if 1 == GetHasFeat(2194, oChatter)
        nMod += 3 
      end
      
      if 1 == GetHasFeat(2202, oChatter)
        nMod += 10 
      end
      
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza (Historia): " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wna"
    nMod = GetSkillRank(32, oChatter)
      if 1 == GetHasFeat(2195, oChatter)
        nMod += 3 
      end
      
      if 1 == GetHasFeat(2203, oChatter)
        nMod += 10 
      end
      
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza (Natura): " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}   
  elsif sMsg == "wpl"
    nMod = GetSkillRank(36, oChatter)
      if 1 == GetHasFeat(2196, oChatter)
        nMod += 3 
      end
      
      if 1 == GetHasFeat(2204, oChatter)
        nMod += 10 
      end
      
    nRoll = random(20)+1
    sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza (Plany): " + nRoll.to_s+ " + "
      + nMod.to_s + " = " + (nMod+nRoll).to_s
    NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wpl"
  nMod = GetSkillRank(35, oChatter)
    if 1 == GetHasFeat(2199, oChatter)
      nMod += 3 
    end
    
    if 1 == GetHasFeat(381, oChatter)
      nMod += 10 
    end
    
    if 1 == GetHasFeat(2207, oChatter)
      nMod += 10 
    end
    
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza (Tajemna): " + nRoll.to_s+ " + "
    + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wre"
  nMod = GetSkillRank(34, oChatter)
    if 1 == GetHasFeat(2197, oChatter)
      nMod += 3 
    end
    
    if 1 == GetHasFeat(2205, oChatter)
      nMod += 10 
    end
    
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza (Religia): " + nRoll.to_s+ " + "
    + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wsz"
  nMod = GetSkillRank(32, oChatter)
    if 1 == GetHasFeat(2198, oChatter)
      nMod += 3 
    end
    
    if 1 == GetHasFeat(2206, oChatter)
      nMod += 10 
    end
    
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wiedza (W³adcy i szlachta): " + nRoll.to_s+ " + "
    + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "cich"
  nMod = GetSkillRank(SKILL_MOVE_SILENTLY, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Cichy Chód: " + nRoll.to_s+ " + "
    + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "otw"
  nMod = GetSkillRank(SKILL_OPEN_LOCK, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Otwieranie Zamków: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "par"
  nMod = GetSkillRank(SKILL_PARRY, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Parowanie: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "dyp"
  nMod = GetSkillRank(SKILL_PERSUADE, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Dyplomacja: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "kra"
  nMod = GetSkillRank(SKILL_PICK_POCKET, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Kradzie¿ Kieszonkowa: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "jez"
  nMod = GetSkillRank(SKILL_RIDE, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - JeŸdziectwo: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "prze"
  nMod = GetSkillRank(SKILL_SEARCH, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Przeszukiwanie: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)} 
  elsif sMsg == "zpu"
  nMod = GetSkillRank(SKILL_SET_TRAP, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Zastawianie Pu³apkek: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "czar"
  nMod = GetSkillRank(SKILL_SPELLCRAFT, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Czaroznastwo: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "spo"
  nMod = GetSkillRank(SKILL_SPOT, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Spostrzegawczoœæ: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "pro"
  nMod = GetSkillRank(SKILL_TAUNT, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Prowokacja: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "upa"
  nMod = GetSkillRank(SKILL_TUMBLE, oChatter)
  nRoll = random(20)+1
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Upadanie: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
  elsif sMsg == "wpo"
  nMod = GetSkillRank(28, oChatter)
  nRoll = random(20)+1
  
    if 1 == GetHasFeat(2208, oChatter)
      nMod += 3 
    end
    
    if 1 == GetHasFeat(2209, oChatter)
      nMod += 10 
    end
  
  sSpeak = Kolor("BLEKITNY")+"Test Umiejêtnoœci - Wyczucie Pobudek: " + nRoll.to_s+ " + "
  + nMod.to_s + " = " + (nMod+nRoll).to_s
  NWScript.AssignCommand(oChatter){SpeakString(sSpeak)}
      
  end
  
  
end

def AssociateTalk(oChatter, ass_type, sMsg)
  oTowarzysz= GetAssociate(ass_type,oChatter)
      if OBJECT_INVALID != oTowarzysz
      NWScript.AssignCommand(oTowarzysz){SpeakString(sMsg)}
      end
end

if sMessage[0, 1] == "#" 
  sMessage = sMessage.split(' ')
  
  sCmd = sMessage[0]
  sMsg = sMessage[1]
  
  if sCmd == "#kk"
    ExecCommand(oChatter, sMessage)
    
  elsif sCmd == "#tow"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    oTowarzysz = GetHenchman(oChatter) 
    if OBJECT_INVALID != oTowarzysz
    NWScript.AssignCommand(oTowarzysz){SpeakString(sMsg)}
    end   
    
  elsif sCmd == "#prz"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    AssociateTalk(oChatter, ASSOCIATE_TYPE_SUMMONED, sMsg) 

  elsif sCmd == "#dom"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    AssociateTalk(oChatter, ASSOCIATE_TYPE_DOMINATED, sMsg)
    
  elsif sCmd == "#chow"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    AssociateTalk(oChatter, ASSOCIATE_TYPE_FAMILIAR, sMsg)
    
  elsif sCmd == "#zw"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    AssociateTalk(oChatter, ASSOCIATE_TYPE_ANIMALCOMPANION, sMsg)
    
  elsif sCmd == "#opisz"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    SetLocalString(oChatter, "opisz", sMsg)
    
  elsif sCmd == "#napisz"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    SetLocalString(oChatter, "napisz", sMsg)
    
  elsif sCmd == "#nazwij" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    oItem =  GetItemPossessedBy(oChatter, "mf_berlo_bajerow")
    SetLocalString(oItem, "nazwij", sMsg)   
    
  elsif sCmd == "#mob" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    lLoc = GetLocation(oChatter)
    CreateObject(OBJECT_TYPE_CREATURE, sMsg, lLoc)
    
  elsif sCmd == "#item" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    CreateItemOnObject(sMsg, oChatter, 1)
    
  elsif sCmd == "#obiekt" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    lLoc = GetLocation(oChatter)
    CreateObject(OBJECT_TYPE_PLACEABLE, sMsg, lLoc)
    
  elsif sCmd[0 .. 2] == "#bn" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    oSpeaker = GetLocalObject(oChatter, "dm_speaker_"+sCmd[3 .. 3])
    NWScript.AssignCommand(oSpeaker){SpeakString(sMsg)}
      
  elsif sCmd == "#dm_obiekt_id" && nDM == 1
    nID=sMsg.to_i
    SetLocalInt(oChatter, "dm_obiekt_id", nID)
    
  elsif sCmd == "#dm_obiekt_app" && nDM == 1
    nID=sMsg.to_i
    SetLocalInt(oChatter, "dm_obiekt_app", nID)
    
  elsif sCmd == "#dm_opis_id" && nDM == 1
    nID=sMsg.to_i
    SetLocalInt(oChatter, "dm_opis_id", nID)
    
  elsif sCmd == "#dm_lokacja" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    #TO DO
    SendMessageToPC(oChatter, "Wczytywanie lokacji "+sMsg+"...")
    
  elsif sCmd == "#dm_komendy" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    SendMessageToPC(oChatter, Kolor("BIALY")+"LISTA KOMEND MG:")
    SendMessageToPC(oChatter, "(W miejscu, gdzie jest {ID} trzeba wstawi� konkretny numer - parametr komendy)")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#dm_obiekt_id {ID} - [DM TOOL #1] nadanie z panelu tekstu wy�wietlanego przez obiekt")
    SendMessageToPC(oChatter, "#dm_obiekt_app {ID} - [DM TOOL #1] nadanie obiektowi wygl�du (wymaga zresetowania lokacji)")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#bn{ID} - [DM TOOL #4] m�wienie oznaczonym NPC")
    SendMessageToPC(oChatter, "#opisz - [DM TOOL #6] zmiana imienia NPC/nazwy przedmiotu")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#napisz - [DM TOOL #6] zmiana opisu NPC/przedmiotu")
    SendMessageToPC(oChatter, "#dm_opis_id {ID} - [DM TOOL #6] wczytanie opisu z panelu")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#item {RESREF} - stworzenie przedmiotu o podanym resrefie")
    SendMessageToPC(oChatter, "#mob {RESREF} - stworzenie moba o podanym resrefie")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#dm_lokacja {RESREF} - stworzenie lokacji podanym resrefie")
                
  end
  
end