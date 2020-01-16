a = Proc.new do |a = 1, b = 2, c:, d: 4|
  puts "a: #{a}"
  puts "b: #{b}"
  puts "c: #{c}"
  puts "d: #{d}"
end

a.call(10, 20, c: 30, d: 40)
a[{c: 3}]
