def sum_array(array1, array2)
  result = []
  array1.zip(array2) do |a, b|
    result << a + b
  end
  result
end

p sum_array([1, 2, 3], [4, 6, 8])
