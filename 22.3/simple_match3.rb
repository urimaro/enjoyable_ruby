pattern = Regexp.new(ARGV[0].encode("UTF-8"))
filename = ARGV[1]

count = 0
File.open(filename, "r:UTF-8") do |file|
  file.each_line do |line|
    line.scan(pattern) do |s|
      pre = "\u3000" * 10 + $`
      post = $'
      puts "#{pre[-10, 10]}<<#{s}>>#{post[0, 10]}"
      count += 1
    end
  end
end
puts "count: #{count}"
