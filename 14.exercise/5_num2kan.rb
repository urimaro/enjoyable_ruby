def arabic_to_kanji(arabic)
  arabic.tr("1-9", "一二三四五六七八九")
end

def num2kan(num)
  total = ""
  num.reverse.each_char.each_with_index do |c, index|
    case index
    when 1
      total = "十" + total
    when 2
      total = "百" + total
    when 3
      total = "千" + total
    end

    kan = arabic_to_kanji(c)
    if index == 0 || kan != "一"
      total = kan + total
    end
  end
  total
end

num = num2kan("7123")
puts "7123 => #{num}"
