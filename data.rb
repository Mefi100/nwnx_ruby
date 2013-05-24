module KK_NWN_Data

  def getNWNDay(day)
    
    daytab = []
   
       if day%10 == 0
       
         daytab[0]=27
         daytab[1]=28
         return daytab
           
       elsif day == 31
   
        daytab[0]=29
        daytab[1]=30
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
  
 def lunar(d,m,r)
  x=((m+9)/12).to_i
  a = 4716 + r + x
  y = 275 * (m / 9)
  v = 7 * (a / 4)
  b = 1729279.5 + 367 + y.to_i + v.to_i + d
  q = (a + 83)/100
  c = q.to_i
  w = 3 * ((c+1)/4)
  e = w.to_i
  jd = b + 38 - e 
  return (jd/29.5305902778)-0.3033
 end

 def faza(d,m,r)
  faza = lunar(d,m,r) - lunar(d,m,r).to_i
  faza = (faza*100).round / 100.0
  
  if faza == 1.0 || faza <= 0.02
    return "Nów" 
    elsif faza > 0.02 && faza < 0.23
        return "zbli¿a siê I kwadra..."
  elsif faza >= 0.23 && faza <= 0.26
    return "I kwadra"
    elsif faza > 0.26 && faza < 0.49
        return "zbli¿a siê pe³nia..."
  elsif faza >= 0.49 && faza <= 0.51
    return "Pe³nia"
    elsif faza >  0.51 && faza <  0.73
        return "zbli¿a siê III kwadra"
  elsif faza >= 0.73 && faza <= 0.77
    return "III kwadra"
  else
    return "zbli¿a siê nów..."
  end 
  
 end
 
def moon4(d,m,r)
 faza = lunar(d,m,r) - lunar(d,m,r).to_i
 faza = (faza*100).round / 100.0
 
 if faza == 1.0 || faza <= 0.02
   1 
 elsif faza >= 0.23 && faza <= 0.26
   2
 elsif faza >= 0.49 && faza <= 0.51
   3
 elsif faza >= 0.73 && faza <= 0.77
   4
 else 
   0
 end 
 
end

end 
   
