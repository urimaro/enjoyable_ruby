counts = Hash.new(0)

File.open(ARGV[0]) do |f|
  f.each_line do |line|
    words = line.split
    words.each do |word|
      counts[word] += 1
    end
  end
end

sorted = counts.sort_by {|c| c[1]}

sorted.each do |word, count|
  puts "#{word}: #{count}"
end
