require 'rubygems'
require 'mysql'
include NWScript

def RandomGem()
  tab = %w[nw_it_gem009 nw_it_gem005 nw_it_gem008 nw_it_gem012 nw_it_gem010 nw_it_gem013]
  return tab[rand(tab.length)]
end

def RandomGemLow()
  tab = %w[nw_it_gem001 nw_it_gem002 nw_it_gem004 nw_it_gem003 nw_it_gem007 nw_it_gem011
  nw_it_gem014 nw_it_gem015]
  return tab[rand(tab.length)]
end

def AlchemyMisc()
  tab = %w[mf_alchemy_61 mf_alchemy_30 mf_alchemy_31 mf_alchemy_33 mf_alchemy_27 mf_alchemy_18
  mf_alchemy_32 mf_ada_sztaba mf_fiolka_rtec mf_jedwab mf_karkaris mf_mith_sztaba mf_sukno
  mf_stal_sztaba mf_skora_wiw mf_uncja_mith mf_uncja_zlota mf_uncja_srebra  mf_wegiel
  mf_worek_maki mf_craft_skora mf_skora_gar mf_jad_skorp mf_klejnot_cien mf_jad_purpro 
  mf_jad_wywer mf_jad_pel_scw mf_oko_meduzy mf_j_slaad mf_mecha_007]
  return tab[rand(tab.length)]
end

def RandomPotion()
  tab = %w[nw_it_mpotion001 nw_it_mpotion002 x2_it_mpotion001 nw_it_mpotion005 nw_it_mpotion009
  nw_it_mpotion011 nw_it_mpotion016 nw_it_mpotion020 mf_potion005 mf_potion006 mf_potion007
  mf_potion008 mf_potion009 mf_potion009 mf_miks_szyb]
  return tab[rand(tab.length)]
end

def RandomSpecialItem()
  tab = %w[mf_ds_tuba mf_ds_modl mf_treasure]
  return tab[rand(tab.length)]
end

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

