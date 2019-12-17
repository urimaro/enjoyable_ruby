def counter(filepath)
  line_num = word_num = char_num = 0

  File.open(filepath) do |file|
    file.each_line do |line|
      line_num += 1
      word_num += line.scan(/[^\s]+/).size
      char_num += line.size
    end
  end

  puts "lines: #{line_num}"
  puts "words: #{word_num}"
  puts "chars: #{char_num}"
end

counter("./17.exercise/NEWS-2.6.0")
