include NWScript

def RandomGem()
  gem = %w[nw_it_gem009 nw_it_gem005 nw_it_gem008 nw_it_gem012 nw_it_gem010 nw_it_gem013]
  return gem[rand(gem.length)]
end