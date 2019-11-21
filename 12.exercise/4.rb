def dice
  Random.rand(6) + 1
end

def dice10
  total = 0
  10.times do
    total += dice
  end
  total
end
