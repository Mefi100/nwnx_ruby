ARGV.each do |source_file|
  puts "#{File.basename(source_file)} encoded with #{File.open(source_file).read.encoding}"
end