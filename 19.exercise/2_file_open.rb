File.open("19.exercise/sjis.txt", "w:Shift_JIS") do |f|
  f.write("こんにちは")
end

File.open("19.exercise/sjis.txt", "r:Shift_JIS") do |f|
  str = f.read
  puts str.encode("UTF-8")
end
