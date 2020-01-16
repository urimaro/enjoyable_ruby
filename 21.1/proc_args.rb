double = Proc.new do |*args|
  p args.class
  args.map {|i| i * 2}
end

p double.call(1, 2, 3)
p double[2, 3, 4]
