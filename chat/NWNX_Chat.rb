module NWScript::NWNX_Chat
  
LIST_ITEM_NAME = "dmbPC_"
PC_ID_NAME = "dmbID"
  
CHAT_CHANNEL_TALK        = 1
CHAT_CHANNEL_SHOUT       = 2
CHAT_CHANNEL_WHISPER     = 3
CHAT_CHANNEL_PRIVATE     = 4
CHAT_CHANNEL_SERVER_MSG  = 5
CHAT_CHANNEL_PARTY       = 6
CHAT_CHANNEL_DM_CHANNEL  = 14
CHAT_CHANNEL_DM_TALK     = 17
CHAT_CHANNEL_DM_WHISPER  = 19  

  class Chat_Message
  
    def initialize(mode, recipient, text)
      @mode = mode
      @recipient = recipient
      @text = text
    end
    
    def get_mode
      return @mode
    end
    
    def get_recipient
      return @recipient
    end
    
    def get_text
      return @text
    end    
    
  end
  

      def ChatInit()
      oMod = GetModule()
      
      sMemory=""
        for i in 0..8 # reserve 8*128 bytes
          sMemory += "................................................................................................................................"
        end
        
          SetLocalString(oMod, "NWNX!INIT", "1")
          SetLocalString(oMod, "NWNX!CHAT!SPACER", sMemory)
      end
      
      
      def GetStringFrom( s,  from = 1)
        return s[from .. s.length]
      end
      
      
      def GetSpacer()
        return GetLocalString(GetModule(), "NWNX!CHAT!SPACER")  
      end
      
      
      def PCin(oPC)
        oMod = GetModule()
        SetLocalString(oPC, "NWNX!CHAT!GETID", ObjectToString(oPC)+"        ")
        sID = GetLocalString(oPC, "NWNX!CHAT!GETID")
        nID = sID.to_i
        
        if nID != -1
          SetLocalObject(oMod, dmb_LIST_ITEM_NAME + sID, oPC)
          SetLocalInt(oPC, dmb_PC_ID_NAME, nID)
        end
        
        DeleteLocalString(oPC, "NWNX!CHAT!GETID")
        
      end
      
     def PCout(oPC) 
       if 0 == GetIsObjectValid(oPC)
         return
       end
       
       sID = GetLocalInt(oPC, dmb_PC_ID_NAME).to_s
       DeleteLocalInt(oPC, dmb_PC_ID_NAME)
       DeleteLocalObject(GetModule(), dmb_LIST_ITEM_NAME + sID)
     end 
     
     def ChatGetPC(nID)
       return GetLocalObject(GetModule(), dmb_LIST_ITEM_NAME + nID.to_s)
     end
     
     def SendMessage(oSender, nChannel, sMessage, oRecipient=OBJECT_INVALID)
       if 0 == GetIsObjectValid(oSender)
         return 0
       end
       
       if sMessage.include?("¬")
         return 0
       end
       
       SetLocalString(oSender, "NWNX!CHAT!SPEAK", ObjectToString(oSender)+"¬"+ObjectToString(oRecipient)+"¬"+nChannel.to_s()+"¬"+sMessage)
      
       if "1" == GetLocalString(oSender, "NWNX!CHAT!SPEAK")
         return 1
       else
         return 0
       end
     end
     
     def SuppressMessage()
       SetLocalString(GetModule(), "NWNX!CHAT!SUPRESS", "1")
       DeleteLocalString(GetModule(), "NWNX!CHAT!SUPRESS")
     end
     
     def GetMessageText()
       SetLocalString(GetModule(), "NWNX!CHAT!TEXT", GetSpacer())
       GetLocalString(GetModule(), "NWNX!CHAT!TEXT")
     end
     
     def GetMessage()
       sText = GetMessageText()
       nMode = sText[0 .. 1].to_i
       nTo = sText[2 .. 10].to_i
       sText = sText[11 .. sText.length]
       
       oRecipient = ChatGetPC(nTo)

       return Chat_Message.new(nMode, oRecipient, sText)
     end
         
  
end