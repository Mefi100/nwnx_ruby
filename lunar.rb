def lunar(d,m,r)
  x=((m+9)/12).to_i
  a = 4716 + r + x
  y = 275 * (m / 9)
  v = 7 * (a / 4)
  b = 1729279.5 + 367 + y.to_i + v.to_i + d
  q = (a + 83)/100
  c = q.to_i
  w = 3 * ((c+1)/4)
  e = w.to_i
  jd = b + 38 - e 
  return (jd/29.5305902778)-0.3033
end

def faza(d,m,r)
  faza = lunar(d,m,r) - lunar(d,m,r).to_i
  faza = (faza*100).round / 100.0
  
  if faza == 1.0 || faza <= 0.02
    return "Nów" 
  elsif faza >= 0.23 && faza <= 0.26
    return "I kwadra"
  elsif faza >= 0.49 && faza <= 0.51
    return "Pełnia"
  elsif faza >= 0.73 && faza <= 0.77
    return "III kwadra"
  else
    return faza.to_s
  end
  
end

(1..30).each do |i|
  puts faza(i, 2, 1596)
end