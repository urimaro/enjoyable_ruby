a = Array.new(100) {|i| i + 1}

sum = a.inject {|result, item| result + item}
puts "sum : #{sum}"
