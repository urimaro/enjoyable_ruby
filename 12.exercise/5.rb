def prime?(num)
  2.upto(num - 1) do |i|
    return false if num % i == 0
  end
  true
end
