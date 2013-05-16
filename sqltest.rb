require 'rubygems'
require 'mysql'

file = File.open("mysql.cfg", "r")
contents = ""
file.each {|line|
  contents << line
}
config = contents.split

begin
    con = Mysql.new config[1], config[3], config[5]

    con.list_dbs.each do |db|
        puts db
    end
    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end
