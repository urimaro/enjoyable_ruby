str = "Ruby is an object oriented programming language"

# `{文字: 文字の数, …}` のハッシュを作る
count = Hash.new(0)
str.each_char do |c|
  count[c] += 1
end

# 出力
count.keys.sort.each do |c|
  printf("'%s': %s\n", c, "*" * count[c])
end
