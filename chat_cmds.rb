include NWScript

oChatter = GetPCChatSpeaker()
sMessage = GetPCChatMessage()
nDM = GetIsDM(oChatter)

def AssociateTalk(oChatter, ass_type, sMsg)
  oTowarzysz= GetAssociate(ass_type,oChatter)
      if OBJECT_INVALID != oTowarzysz
        AssignCommand(oTowarzysz, SpeakString(sMsg))
      end
end

if sMessage[0, 1] == "#" 
  sMessage = sMessage.split(' ')
  
  sCmd = sMessage[0]
  sMsg = sMessage[1]
  
  if sCmd == "#kk"
    #TO DO: Run Exec CMD for oChatter
    
  elsif sCmd == "#tow"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    oTowarzysz = GetHenchman(oChatter) 
    if OBJECT_INVALID != oTowarzysz
      AssignCommand(oTowarzysz, SpeakString(sMsg))
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
    AssignCommand(oSpeaker, SpeakString(sMsg))
    
  end
  
end