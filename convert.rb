require 'rubygems'
require 'mysql'
include NWScript

file = File.open("mysql.cfg", "r")
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

  while(OBJECT_INVALID != GetIsObjectValid(oCWP))
            oArea = GetArea(oCWP)          
            
            if (oArea == oMyArea)
              sAreaResRef = "'"+GetResRef(oArea)+"'"
              sMobResRef =  "'"+GetName(oCWP)+"'" 
              lLoc = GetLocation(oCWP)
              lLoc_x = lLoc.get_x().to_s
              lLoc_y = lLoc.get_y().to_s
              lLoc_z = lLoc.get_z().to_s
              lLoc_o = lLoc.get_facing().to_s
              new_name = GetLocalString(oCWP, "New Name of Creature")
              action = GetLocalInt(oCWP, "Action").to_s
              time = GetLocalInt(oCWP, "Time of Day").to_s
              chance = GetLocalInt(oCWP, "Percent Chance To Spawn").to_s
              min = GetLocalInt(oCWP, "Number of Creatures Max").to_s
              max = GetLocalInt(oCWP, "Number of Creatures Min").to_s
              puts sAreaResRef+" :: "+sMobResRef+" :: "+lLoc_x+"/"+lLoc_y+"/"+lLoc_z+" ::"
                +new_name+" : "+action+" : "+time+" : "+chance+" "+min+" - "+max
              #rs = con.query('INSERT INTO kk_spawn VALUES (NULL, )')  
            end
            
            x=x+1
            
            oCWP = GetObjectByTag("RS_CREATURE",x)
  end


    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end
