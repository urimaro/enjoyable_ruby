words = "Ruby is an object oriented programming language"
chars = words.each_char.sort
chars.uniq.each do |c|
  asterisks = "*" * chars.count(c)
  puts "'#{c}': #{asterisks}"
end
