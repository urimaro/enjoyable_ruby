prc1 = Proc.new do |a, b, c|
  p [a, b, c]
end
prc1.call(1, 2)

prc2 = lambda do |a, b, c|
  p [a, b, c]
end
prc2.call(1, 2)
