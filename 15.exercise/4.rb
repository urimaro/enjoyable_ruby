def str2hash(str)
  # 空白文字で分割して配列を生成
  key_value_array = str.split(/\s+/)

  # 要素数が偶数でなければ SyntaxError
  raise SyntaxError if key_value_array.size % 2 != 0

  # 要素を2つづ取り出し、 `pair[0]` をキー、 `pair[1]` を値としてハッシュを生成
  key_value_array.each_slice(2).inject(Hash.new) do |result, pair|
    result[pair[0]] = pair[1]
    result
  end
end

p str2hash("blue 青 white 白\nred 赤")
