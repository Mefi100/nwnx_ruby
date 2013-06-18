require 'rubygems'
require 'mysql'
include NWScript

file = File.open("/var/scripts/ruby/mysql.cfg", "r")
contents = ""
file.each {|line|
  contents << line
}
config = contents.split

begin
    con = Mysql.new config[1], config[3], config[5], config[7]
    
x = 0
oCWP = GetObjectByTag("RS_CREATURE",x)
oMyArea = GetArea($OBJECT_SELF)

  while (1 == GetIsObjectValid(oCWP)) 
            oArea = GetArea(oCWP)          
           
            if (oArea == oMyArea)
		
              sAreaResRef = GetResRef(oArea)
              sMobResRef =  GetName(oCWP) 
              lLoc = GetLocation(oCWP)
              lLoc_x = lLoc.x.to_s
              lLoc_y = lLoc.y.to_s
              lLoc_z = lLoc.z.to_s
              lLoc_o = GetFacingFromLocation(lLoc).to_s
              new_name = GetLocalString(oCWP, "New Name of Creature")
              action = GetLocalInt(oCWP, "Action").to_s
              time = GetLocalInt(oCWP, "Time of Day").to_s
              chance = "100"
              max = GetLocalInt(oCWP, "Number of Creatures Min") - 1
              #SendMessageToPC($OBJECT_SELF, GetName(oCWP) + " :: " + new_name + " " + time + " " + action)
              my_query = "INSERT INTO kk_spawn VALUES (NULL, '"+sAreaResRef+"','"+sMobResRef
              my_query += "',"+lLoc_x+","+lLoc_y+","+lLoc_z+","+lLoc_o+",'"+new_name+"',"
              my_query += action+","+time+","+chance+", 0)" 
              
              for i in 0..max   
              rs = con.query(my_query)
              end
                
            end
            
            x = x + 1
            
            oCWP = GetObjectByTag("RS_CREATURE",x)
  end


    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end
