include NWScript

begin 
oMurder = GetLastKiller()

rescue Exception => msg   
  puts msg.message 
  puts msg.backtrace.inspect 
end