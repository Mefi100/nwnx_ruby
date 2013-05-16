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
  
  if sMessage[0] == "#kk"
    #TO DO: Run Exec CMD for oChatter
    
  elsif sMessage[0] == "#tow"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    oTowarzysz = GetHenchman(oChatter) 
    if OBJECT_INVALID != oTowarzysz
      AssignCommand(oTowarzysz, SpeakString(sMessage[1]))
    end   
    
  elsif sMessage[0] == "#prz"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    AssociateTalk(oChatter, ASSOCIATE_TYPE_SUMMONED, sMessage[1]) 

  elsif sMessage[0] == "#dom"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    AssociateTalk(oChatter, ASSOCIATE_TYPE_DOMINATED, sMessage[1])
    
  elsif sMessage[0] == "#chow"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    AssociateTalk(oChatter, ASSOCIATE_TYPE_FAMILIAR, sMessage[1])
    
  elsif sMessage[0] == "#zw"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    AssociateTalk(oChatter, ASSOCIATE_TYPE_ANIMALCOMPANION, sMessage[1])
    
  elsif sMessage[0] == "#opisz"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    SetLocalString(oChatter, "opisz", sMessage[1])
    
  elsif sMessage[0] == "#napisz"
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    SetLocalString(oChatter, "napisz", sMessage[1])
    
  elsif sMessage[0] == "#nazwij" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    oItem =  GetItemPossessedBy(oChatter, "mf_berlo_bajerow")
    SetLocalString(oItem, "nazwij", sMessage[1])   
    
  elsif sMessage[0] == "#mob" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    lLoc = GetLocation(oChatter)
    CreateObject(OBJECT_TYPE_CREATURE, sMessage[1], lLoc)
    
elsif sMessage[0] == "#item" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    lLoc = GetLocation(oChatter)
    CreateObject(OBJECT_TYPE_CREATURE, sMessage[1], lLoc)
    
elsif sMessage[0] == "#obiekt" && nDM == 1
    SetPCChatVolume(TALKVOLUME_SILENT_TALK)
    lLoc = GetLocation(oChatter)
    CreateObject(OBJECT_TYPE_PLACEABLE, sMessage[1], lLoc)
    
  end
  
end