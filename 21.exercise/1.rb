def my_collect(obj, &block)
  result = []
  if block
    obj.each do |i|
      result << block.call(i)
    end
  else
    result = obj
  end
  return result
end

ary = my_collect([1, 2, 3, 4, 5]) do |i|
  i * 2
end
p ary
