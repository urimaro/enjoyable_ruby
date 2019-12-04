def str2hash(str)
  hash = Hash.new
  array = str.split

  while key = array.shift
    value = array.shift
    hash[key] = value
  end
  hash
end

p str2hash("blue 青 white 白\nred 赤")
