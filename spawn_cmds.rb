require 'kolor.rb'
require 'rubygems'
require 'mysql'
include NWScript
include Kolory

file = File.open("/var/scripts/ruby/mysql.cfg", "r")
contents = ""
file.each {|line|
  contents << line
}
config = contents.split


    con = Mysql.new config[1], config[3], config[5], config[7]



oChatter = GetPCChatSpeaker()
sMessage = GetPCChatMessage()
oArea = GetArea(oChatter)
sAreaResRef = GetResRef(oArea)
SetPCChatVolume(TALKVOLUME_SILENT_TALK)

sMessage = sMessage.split(' ')

sCmd = sMessage[1]

if sCmd == "lista"
  rs = con.query('select * from kk_spawn')
  rs.each_hash { |h| 
    sSpawnPoint = "ResRef: "+h['mob_resref']+" Nowe imiê: "+h['new_name']+" Akcja: "+h['action']
    sSpawnPoint += " Czas: "+ h['time'] + " Szansa: "+ h['chance'] + " Aktywne "+h['active']
    SendMessageToPC(oChatter, sSpawnPoint)  
  }
elsif sCmd == "dodaj"
  
  sMobResRef = sMessage[2]
  
  lLoc = GetLocation(oChatter)
  lLoc_x = lLoc.x.to_s
  lLoc_y = lLoc.y.to_s
  lLoc_z = lLoc.z.to_s
  lLoc_o = GetFacingFromLocation(lLoc).to_s
  
    if !sMessage[3].nil?
      chance = sMessage[3]
    else 
      chance = "DEFAULT"
    end
    
    if !sMessage[4].nil?
      time = sMessage[4]
    else 
      time = "DEFAULT"
    end
    
    if !sMessage[5].nil?
      action = sMessage[5]
    else 
      action = "DEFAULT"
    end
    
      
  my_query = "INSERT INTO kk_spawn VALUES (NULL, '"+sAreaResRef+"','"+sMobResRef
  my_query += "',"+lLoc_x+","+lLoc_y+","+lLoc_z+","+lLoc_o+",DEFAULT,"
  my_query += action+","+time+","+chance+", 1)"
  
  rs = con.query(my_query)
elsif sCmd == "+"
  sMobResRef = sMessage[2]
  my_query = "UPDATE kk_spawn SET active=1 WHERE area_resref='"+sAreaResRef+"' AND mob_resref='"+sMobResRef+"'"
  rs = con.query(my_query) 
elsif sCmd == "-"
  sMobResRef = sMessage[2]
  my_query = "UPDATE kk_spawn SET active=0 WHERE area_resref='"+sAreaResRef+"' AND mob_resref='"+sMobResRef+"'"
  rs = con.query(my_query)  
elsif sCmd == "komendy"
  SendMessageToPC(oChatter, ColorString("LISTA KOMEND SYSTEMU SPAWNA:"))
  SendMessageToPC(oChatter, "(W miejscu, gdzie jest {ID} trzeba wstawiæ konkretny numer - parametr komendy)")
  SendMessageToPC(oChatter, ColorString("#spawn + {RESREF MOBA} : aktywuje spawn moba"))  
  SendMessageToPC(oChatter, "#spawn - {RESREF MOBA} : dezaktywuje spawn moba")
  SendMessageToPC(oChatter, ColorString("#spawn dodaj {RESREF MOBA} {SZANSA SPAWNA} {CZAS} {AKCJA} : dodaje spawn moba"))
  SendMessageToPC(oChatter, ColorString("Argumenty SZANSA, CZAS i AKCJA nie s¹ wymagane")) 
  SendMessageToPC(oChatter, ColorString("{SZANSA} to wartoœæ od 1 do 100 "))
  SendMessageToPC(oChatter, ColorString("{CZAS} 111: zawsze, 777: dzieñ, 666: noc, 601: noc (nów), 603: noc (pe³nia)"))
  SendMessageToPC(oChatter, ColorString("{AKCJA} 1: spaceruje, 3: atak na gracza, 4: nic nie robi, 5: czci, 6: siedzi, 7: medytuje "))  
  SendMessageToPC(oChatter, "#spawn lista : lista spawnow (w nowym systemie)")
end

con.close