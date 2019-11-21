def cels_to_fahr(degree)
  degree * 9.0 / 5.0 + 32.0
end

def fahr_to_cels(degree)
  (degree - 32.0) * 5.0 / 9.0
end

puts "摂氏 : 華氏"
(1..100).each do |i|
  puts "#{i} : #{cels_to_fahr(i)}"
end
