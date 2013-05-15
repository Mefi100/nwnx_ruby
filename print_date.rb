require 'data'
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

miesiace = []
miesiace = ["Młodego Stycznia", "Sennego Lutego", "Budzącego Marca", "Wielobarwnego Kwietnia",
 "Złotego Maja", "Błyszczącego Czerwca", "Promiennego Lipca", "Pracowitego Sierpnia",
 "Srebrzystego Września", "Leniwego Października", "Sennego Listopada", "Starego Grudnia"]

data = "Aktualnie jest "+dzien_miesiaca.to_s+" "+miesiace[miesiac-1]+" "+rok.to_s+" r."
SendMessageToAllDMs(data)
