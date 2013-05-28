def MfScrolls(sTyp, sLv)
  file = File.open("/var/scripts/ruby/mysql.cfg", "r")
  contents = ""
  file.each {|line|
    contents << line
  }
  config = contents.split
  con = Mysql.new config[1], config[3], config[5], config[7]
  query = "SELECT resref FROM kk_zwoje WHERE lv="+sLv+" AND typ='"+sTyp+"' ORDER BY RAND() LIMIT 1"
  rs = con.query(query)
  record = rs.fetch_hash
  resref = record['resref']
  con.close
end

nZwoje_3=rand(3)+2
nZwojeHi=rand(3)+4
nRoll = rand(100)+1

  for i in 0..nZwoje_3 
    puts MfScrolls("A", "3")
  end

