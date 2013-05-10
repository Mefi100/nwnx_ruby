require 'data'
include KK_NWN_Data

time = Time.new
puts getNWNDate(time.day(), time.month(), time.year()) 