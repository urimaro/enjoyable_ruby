File.open("11.2/sample.txt") do |file|
  file.each_line do |line|
    print line
  end
end
