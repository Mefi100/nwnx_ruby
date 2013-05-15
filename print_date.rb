require 'data.rb'
load 'lunar.rb'
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

ksiezyc = "Faza ksi�yca: "+faza(dzien_miesiaca, miesiac, rok)

miesiace = []
miesiace = ["M�odego Stycznia", "Sennego Lutego", "Budz�cego Marca", "Wielobarwnego Kwietnia",
 "Z�otego Maja", "B�yszcz�cego Czerwca", "Promiennego Lipca", "Pracowitego Sierpnia",
 "Srebrzystego Wrze�nia", "Leniwego Pa�dziernika", "Sennego Listopada", "Starego Grudnia"]

data = "Aktualnie jest "+dzien_miesiaca.to_s+" "+miesiace[miesiac-1]+" "+rok.to_s+" r."
oPC = GetEnteringObject()
SendMessageToPC(oPC, data)
SendMessageToPC(oPC, ksiezyc)

