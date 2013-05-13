begin
  puts "test" 
  oMurder = GetLastKiller()
rescue Exception => msg   
  puts msg.message  
end