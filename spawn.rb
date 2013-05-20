require 'rubygems'
require 'mysql'
include NWScript

file = File.open("mysql.cfg", "r")
contents = ""
file.each {|line|
  contents << line
}
config = contents.split

def GetGameTime()
  oMod = GetModule()
  nZegar = GetLocalInt(oMod, "godzina")
  nMoon = GetLocalInt(oMod, "moon")
  
  if(nZegar > 5 && nZegar < 18)
    return ' AND (time=111 OR time=777)'
  elsif ((nZegar >= 0 && nZegar < 6) || (nZegar > 17)) && (nMoon == 1) #now
    return ' AND (time=111 OR time=666 OR time=601)'
  elsif ((nZegar >= 0 && nZegar < 6) || (nZegar > 17)) && (nMoon == 3) #pelnia
    return ' AND (time=111 OR time=666 OR time=603)'
  elsif ((nZegar >= 0 && nZegar < 6) || (nZegar > 17))
    return ' AND (time=111 OR time=666)'
  end
  
end

begin
    con = Mysql.new config[1], config[3], config[5], config[7]
    
sAreaResRef = "'"+GetResRef($OBJECT_SELF)+"'"
sTime = GetGameTime()  
    
query = 'SELECT * FROM kk_spawn WHERE area_resref='+sAreaResRef+sTime+' AND active=1'

rs = con.query(query)
rs.each_hash { |h|
  
  mob_resref = h['mob_resref']
  new_name = h['new_name']
  action = h['action'].to_i  
  chance = h['chance'].to_i  
  spawn_x = h['spawn_x'].to_f
  spawn_y = h['spawn_y'].to_f
  spawn_z = h['spawn_z'].to_f
  spawn_o = h['spawn_o'].to_f 
    
  v_location = Vector(spawn_x, spawn_y, spawn_z)  
  l_location = Location($OBJECT_SELF, v_location, spawn_o)
  fRandomDelay = (rand(100)+1)/100.0
  
  if chance >= (random(100)+1) 
    NWScript.DelayCommand(fRandomDelay){
    oCreature = CreateObject(OBJECT_TYPE_CREATURE, mob_resref, l_location)
    SetLocalInt(oCreature, "spawned", 1)
    
      if new_name != ''
        SetName(oCreature, new_name)
      end
      
      case action
      when 1
        NWScript.AssignCommand(oCreature){ActionRandomWalk()}
      when 2
        NWScript.AssignCommand(oCreature){WalkWayPoints()}
      when 3
        oPC = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC, oCreature)
        NWScript.AssignCommand(oCreature){ActionAttack(oPC)}
      when 4
        DeleteLocalInt(oCreature, "X2_L_SPAWN_USE_AMBIENT") 
      when 5
        NWScript.AssignCommand(oCreature){ActionPlayAnimation(ANIMATION_LOOPING_WORSHIP, 1.0, 3600.0)} 
      when 6
        NWScript.AssignCommand(oCreature){ActionPlayAnimation(ANIMATION_LOOPING_SIT_CROSS, 1.0, 3600.0)} 
      when 7
        NWScript.AssignCommand(oCreature){ActionPlayAnimation(ANIMATION_LOOPING_MEDITATE, 1.0, 3600.0)}
      when 9
        sChair = GetLocalString(oCreature, "chair")
        oChair = GetNearestObjectByTag(sChair)
        NWScript.AssignCommand(oCreature){ActionSit(oChair)} 
      end
      
    }
  end
  
  }
    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end
