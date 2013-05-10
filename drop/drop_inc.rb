include NWScript

def RandomGem()
  gem = %w[nw_it_gem009 nw_it_gem005 nw_it_gem008 nw_it_gem012 nw_it_gem010 nw_it_gem013]
  return gem[rand(gem.length)]
end

def SoulEater(oKiller,oKilled)
  if GetTag(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oKiller)) == "soul_eater"
  nRet = 1
  elsif GetTag(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oKiller)) == "soul_eater"
  nRet = 1
  elsif GetLocalInt(oKilled, "pochwycenie_esencji") == 1
  nRet = 1
  else
  nRet = 0
  end
  
  return nRet
end
