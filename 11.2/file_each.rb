file = File.open("11.2/sample.txt")
file.each_line do |line|
  print line
end
file.close
