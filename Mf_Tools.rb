module Mf_Tools
  def r_to_sec(time)
    6.0 * time.to_f
  end
  
  def t_to_sec(time)
    60.0 * time.to_f
  end
  
  def h_to_sec(time)
    120.0 * time.to_f
  end
end