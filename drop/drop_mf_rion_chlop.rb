include NWScript

begin 
oMurder = GetLastKiller()

rescue Exception => msg   
  puts msg 
end