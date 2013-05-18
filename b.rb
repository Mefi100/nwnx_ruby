require "benchmark"
 
time = Benchmark.realtime do
  load 'sqltest.rb'
end
puts "Time elapsed #{time*1000} milliseconds"
