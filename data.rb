module KK_NWN_Data

  def getNWNDay(day)
   
       if day%10 == 0
       
           return "27"
           
       elsif day == 31
   
           return "30"
           
       else
       
           pom = ((day%10)-1)*3;
       end

       poczatek = (pom+1).to_s
       koniec = (pom+3).to_s

       return poczatek + " - " + koniec
  end
       
  def getMonth(day,month)
   
       x = month%4;
       z = ((day-1)/10)+1;
       
       if z == 4 
         z = 3
       end
         
       y = 3*x + z

       return y
  end
   
  def getNWNYear(month, year)

    baza = 1480 + ((year - 2008) * 3)

    if (month >= 4 &&  month < 8)
      
        baza  +=1
          
    elsif month >= 8
      
        baza += 2
    end
    
    return baza+100
  end

 
  def getNWNDate(day,month,year)
  return getNWNDay(day) + " " + getMonth(day,month) + " " + getNWNYear(month,year) + "r."
  end

end 
   