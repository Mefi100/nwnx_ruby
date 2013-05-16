require 'kolor.rb'
include NWScript
include Kolory

oChatter = GetPCChatSpeaker()
sMessage = GetPCChatMessage()
nDM = GetIsDM(oChatter)

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
    #TO DO: Run Exec CMD for oChatter
    
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
    SendMessageToPC(oChatter, "(W miejscu, gdzie jest {ID} trzeba wstawić konkretny numer - parametr komendy)")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#dm_obiekt_id {ID} - [DM TOOL #1] nadanie z panelu tekstu wyświetlanego przez obiekt")
    SendMessageToPC(oChatter, "#dm_obiekt_app {ID} - [DM TOOL #1] nadanie obiektowi wyglądu (wymaga zresetowania lokacji)")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#bn{ID} - [DM TOOL #4] mówienie oznaczonym NPC")
    SendMessageToPC(oChatter, "#opisz - [DM TOOL #6] zmiana imienia NPC/nazwy przedmiotu")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#napisz - [DM TOOL #6] zmiana opisu NPC/przedmiotu")
    SendMessageToPC(oChatter, "#dm_opis_id {ID} - [DM TOOL #6] wczytanie opisu z panelu")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#item {RESREF} - stworzenie przedmiotu o podanym resrefie")
    SendMessageToPC(oChatter, "#mob {RESREF} - stworzenie moba o podanym resrefie")
    SendMessageToPC(oChatter, Kolor("BIALY")+"#dm_lokacja {RESREF} - stworzenie lokacji podanym resrefie")
                
  end
  
end