def accumlator
  total = 0
  Proc.new do |arg|
    total += arg
  end
end

acc = accumlator
p acc.call(1)
p acc.call(2)
p acc.call(3)
p acc.call(4)
