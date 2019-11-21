def cels_to_fahr(degree)
  degree * 9.0 / 5.0 + 32.0
end

puts "0°C  => #{cels_to_fahr(0)}°F"
puts "25.0°C  => #{cels_to_fahr(25.0)}°F"
puts "100°C  => #{cels_to_fahr(100)}°F"
