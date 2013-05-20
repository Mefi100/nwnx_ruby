require 'rubygems'
require 'mysql'

file = File.open("mysql.cfg", "r")
contents = ""
file.each {|line|
  contents << line
}
config = contents.split

begin
    con = Mysql.new config[1], config[3], config[5], config[7]

rs = con.query('select * from kk_spawn')
rs.each_hash { |h|
  
  mob_resref = h['mob_resref']
  new_name = h['new_name']
  action = h['action']  
  chance = h['chance']  
  spawn_x = h['spawn_x'].to_f
  spawn_y = h['spawn_y'].to_f
  spawn_z = h['spawn_z'].to_f
  spawn_o = h['spawn_o'].to_f 
    
  puts (spawn_x + spawn_y).to_s }
    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end
