module DropMonsters

def RandomGem()
  tab = %w[nw_it_gem009 nw_it_gem005 nw_it_gem008 nw_it_gem012 nw_it_gem010 nw_it_gem013]
  return tab[rand(tab.length)]
end

  def drop_05_graz_wilk
    nRandom = rand(100)+1
  
    if nRandom <= 10
    NWSCript.CreateItemOnObject("mf_alchemy_25", $OBJECT_SELF, 1)
    end
  
    nRandom = rand(100)+1
  
    if nRandom <= 15
    NWSCript.CreateItemOnObject("mf_craft_skora", $OBJECT_SELF, 1)
    end
  end

  def drop_05_mf_driada
    nRandom = rand(100)+1
  
    if nRandom <= 6
    NWSCript.CreateItemOnObject("mf_pukiel_fey", $OBJECT_SELF, 1)
    end
  end

  def drop_05_mf_nimfa
    nRandom = rand(100)+1
  
    if nRandom <= 9
    NWSCript.CreateItemOnObject("mf_pukiel_fey", $OBJECT_SELF, 1)
    end
  end

  def drop_05_mf_troll
    nRandom = rand(100)+1
  
    if nRandom <= 20
    NWSCript.CreateItemOnObject("mf_alchemy_36", $OBJECT_SELF, 1)
    end
  end

  def drop_10_graz_sirina002
    nRandom = rand(100)+1
  
    if nRandom <= 3
    NWSCript.CreateItemOnObject("mf_pukiel_fey", $OBJECT_SELF, 1)
    end
  end

  def drop_boar001
    nRandom = rand(100)+1
  
    if nRandom <= 25 
    NWSCript.CreateItemOnObject("mf_alchemy_28", $OBJECT_SELF, 1)
    end
  
    nRandom = rand(100)+1
  
    if nRandom <= 10
    NWSCript.CreateItemOnObject("mf_craft_skora", $OBJECT_SELF, 1)
    end 
  end

  def drop_mf_adama_golem
    nRandom = rand(100)+1
  
    if nRandom <= 25
    NWSCript.CreateItemOnObject("mf_ada_trash", $OBJECT_SELF, 1)
    end
  end

  def drop_barb_king
    nRandom = rand(100)+1
  
    if nRandom <= 5
    NWSCript.CreateItemOnObject("mf_top_wodza_b2", $OBJECT_SELF, 1)
    end
  
    nRandom = rand(100)+1
  
    if nRandom == 100
    NWSCript.CreateItemOnObject("mf_zbroja_kr_bar", $OBJECT_SELF, 1)
    end
  end
  
  def drop_mf_direbear
    nRandom = rand(100)+1
    
     if nRandom <= 40
     NWSCript.CreateItemOnObject("mf_craft_skora", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_direboar
    nRandom = rand(100)+1
    
     if nRandom <= 33 
     NWSCript.CreateItemOnObject("mf_alchemy_28", $OBJECT_SELF, 1)
     end
    
    nRandom = rand(100)+1
    
     if nRandom <= 20
     NWSCript.CreateItemOnObject("mf_craft_skora", $OBJECT_SELF, 1)
     end 
  end
  
  def drop_mf_direwolf
    nRandom = rand(100)+1
    
     if nRandom <= 20
     NWSCript.CreateItemOnObject("mf_alchemy_25", $OBJECT_SELF, 1)
     end
    
    nRandom = rand(100)+1
    
     if nRandom <= 30
     NWSCript.CreateItemOnObject("mf_craft_skora", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_duch_pirata2
    nRandom = rand(100)+1
    
     if nRandom <= 4
     NWSCript.CreateItemOnObject("mf_sejm_pot_kap", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_golem_mit
    nRandom = rand(100)+1
    
     if nRandom <= 25
     NWSCript.CreateItemOnObject("mf_mit_trash", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_mysz
    nRandom = rand(100)+1
    
     if nRandom <= 50
     NWSCript.CreateItemOnObject("mf_alchemy_30", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_osa_gigant
    nRandom = rand(100)+1
    
     if nRandom <= 20
     NWSCript.CreateItemOnObject("mf_jad_osy", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_pantera_p
    nRandom = rand(100)+1
    
     if nRandom <= 50
     NWSCript.CreateItemOnObject("mf_alchemy_27", $OBJECT_SELF, 1)
     end
    
    nRandom = rand(100)+1
    
     if nRandom <= 5
     NWSCript.CreateItemOnObject("mf_craft_skora", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_shade
    nRandom = rand(100)+1
    
     if nRandom <= 5
     NWSCript.CreateItemOnObject("mf_klejnot_cien", $OBJECT_SELF, 1)
     end
    
    nRandom = rand(100)+1
    
     if nRandom == 100
      sItem = mf_br_cienia_00+(rand(6)+1).to_s
     NWSCript.CreateItemOnObject(sItem, $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_sowa
    nRandom = rand(100)+1
    
     if nRandom <= 50
     NWSCript.CreateItemOnObject("mf_alchemy_31", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_spider_01
    nRandom = rand(100)+1
    
     if nRandom <= 25
     NWSCript.CreateItemOnObject("mf_jad_paj_w", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_spider_02
    nRandom = rand(100)+1
    
     if nRandom <= 20
     NWSCript.CreateItemOnObject("mf_jad_paj_o", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_szkielet
    nRandom = rand(100)+1
    
     if nRandom <= 5
     NWSCript.CreateItemOnObject("nw_it_msmlmisc13", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_wymazany
    nRandom = rand(100)+1
    
     if nRandom <= 4
     NWSCript.CreateItemOnObject("mf_tru_bulaw", $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_xorn
    nRandom = rand(100)+1
    
     if nRandom <= 15
      sGem = RandomGem()
      NWSCript.CreateItemOnObject(sGem, $OBJECT_SELF, 1)
     end
  end
  
  def drop_mf_z_min_
    nRandom = rand(100)+1
    
     if nRandom <= 5
     sGem = RandomGem()
     NWSCript.CreateItemOnObject(sGem, $OBJECT_SELF, 1)
     end
  end

 end