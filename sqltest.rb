require 'rubygems'
require 'mysql'

file = File.open("mysql.cfg", "r")
contents = ""
file.each {|line|
  contents << line
}
config = contents.split

begin
    con = Mysql.new config[1], config[3], config[5], "nwn"

rs = con.query('select * from kk_spawn')
rs.each_hash { |h| puts h['new_name']}
    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end
