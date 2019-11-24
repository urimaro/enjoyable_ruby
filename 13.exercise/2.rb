a = Array.new(100) {|i| i + 1}

a2 = a.map {|elem| elem * 100}
a.map! {|elem| elem * 100}

puts "a2 : #{a2}"
puts
puts "a : #{a}"
