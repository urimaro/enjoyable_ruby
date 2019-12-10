def word_capitalize(str)
  str.gsub(/[A-Za-z]+/) do |word|
    word.capitalize
  end
end

p word_capitalize("in-reply-to")
p word_capitalize("X-MAILER")
