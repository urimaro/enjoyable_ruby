def prime?(num)
  return num if num < 2
  2.upto(Math.sqrt(num)) do |i|
    return false if num % i == 0
  end
  true
end
