a = Array.new(100) {|i| i + 1}

a2 = a.map {|elem| elem * 2}
a.map! {|elem| elem * 2}

puts "a2 : #{a2}"
puts
puts "a : #{a}"
