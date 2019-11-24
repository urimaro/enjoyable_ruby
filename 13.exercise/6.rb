ary = Array.new(100) {|i| i + 1}
result = Array.new
10.times do |i|
  result << ary[(0 + 10 * i)..(9 + 10 * i)]
end

p result
