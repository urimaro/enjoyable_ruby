a = Array.new(100) {|i| i + 1}

a3 = a.find_all {|elem| elem % 3 == 0}
a.reject! {|elem| elem % 3 != 0}

puts "a3 : #{a3}"
puts
puts "a : #{a}"
