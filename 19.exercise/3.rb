def convert(str, encoding)
  puts "#{encoding}: #{str.encode(encoding).valid_encoding?}"
rescue => e
  puts "#{e.class} : #{e.message}"
end

def convert_to_windows31j(str)
  convert(str, "Windows-31J")
end

def convert_to_shift_jis(str)
  convert(str, "Shift_JIS")
end

# あ
puts str = "あ"
convert_to_windows31j(str)
convert_to_shift_jis(str)

# 紅
puts str = "紅"
convert_to_windows31j(str)
convert_to_shift_jis(str)

# 髙(はしご高)
puts str = "髙"
convert_to_windows31j(str)
convert_to_shift_jis(str)

# 﨑(立ち﨑)
puts str = "﨑"
convert_to_windows31j(str)
convert_to_shift_jis(str)

# ㈱
puts str = "㈱"
convert_to_windows31j(str)
convert_to_shift_jis(str)

# ⅰ
puts str = "ⅰ"
convert_to_windows31j(str)
convert_to_shift_jis(str)

# ①
puts str = "①"
convert_to_windows31j(str)
convert_to_shift_jis(str)
