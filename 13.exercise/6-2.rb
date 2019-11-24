ary = Array.new(100) {|i| i + 1}
result = Array.new
10.times do |i|
  result << ary[10 * i, 10]
end

p result
