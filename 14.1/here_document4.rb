10.times do |i|
  print(<<"EOB")
    # インデントも文字列の一部として認識される
    i : #{i}
  # 区切り文字として認識されない
  EOB
EOB
end
