module KK_NWN_Data

  def getNWNDay(day)
    
    daytab = []
   
       if day%10 == 0
       
         daytab[0]=27
         daytab[1]=0
         return daytab
           
       elsif day == 31
   
        daytab[0]=28
        daytab[1]=0
        return daytab 
          
       else
       
           pom = ((day%10)-1)*3
       end

       daytab[0] = pom+1
       daytab[1] = pom+3

       return daytab
  end
       
  def getMonth(day,month)
   
       x = (month-1)%4;
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

 
 # def getNWNDate(day,month,year)
 # return getNWNDay(day).to_s + " " + getMonth(day,month).to_s + " " + getNWNYear(month,year).to_s + "r."
 # end

end 
   