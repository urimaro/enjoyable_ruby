a = Array.new(100) {|i| i + 1}

a.each_with_index {|elem, i| puts "a[#{i}] : #{elem}"}
