words = %w(Ruby is an object oriented programming language)
sorted_words = words.sort_by {|item| item.downcase}
p sorted_words
