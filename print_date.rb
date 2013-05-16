require 'data.rb'
include KK_NWN_Data
include NWScript

time = Time.new
dzien = getNWNDay(time.day)
miesiac = getMonth(time.day,time.month) 
rok = getNWNYear(time.month, time.year) 

if time.hour < 9
  dzien_miesiaca = dzien[0]
elsif (time.hour > 8 && time.hour < 17 && dzien[1] != 0)
  dzien_niesiaca = dzien[0]+1
elsif (time.hour > 16 && dzien[1] != 0)
  dzien_miesiaca = dzien[1]
else
dzien_miesiaca = dzien[0]  
end

#ksiezyc = "Faza ksi�yca: "+faza(dzien_miesiaca, miesiac, rok)

miesiace = []
miesiace = ["M�odego Stycznia", "Sennego Lutego", "Budz�cego Marca", "Wielobarwnego Kwietnia",
 "Z�otego Maja", "B�yszcz�cego Czerwca", "Promiennego Lipca", "Pracowitego Sierpnia",
 "Srebrzystego Wrze�nia", "Leniwego Pa�dziernika", "Sennego Listopada", "Starego Grudnia"]
 
 zodiak = []
 zodiak = ["Kruka", "Dzbana", "Goblina", "D�bu", "Damy", "Lorda", "Smoka", "Tygrysa",
   "Rycerza", "Feniksa", "Maga", "Wie�y"]  

data = "Aktualnie jest "+dzien_miesiaca.to_s+" "+miesiace[miesiac-1]+" "+rok.to_s+" r."
znak_zodiaku = "W tym miesi�cu S�o�ce znajduje si� w gwiazdozbiorze "+zodiak[miesiac-1]  
oPC = GetEnteringObject()
SendMessageToPC(oPC, data)
SendMessageToPC(oPC, znak_zodiaku)
#SendMessageToPC(oPC, ksiezyc)

