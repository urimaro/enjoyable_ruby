def kanji_to_arabic(kanji)
  kanji.tr("一二三四五六七八九", "1-9")
end

def kan2num(kan)
  num = ""
  kan.reverse.each_char do |c|
    if "十百千".include?(c)
      num = "1" + num
    else
      num[0] = kanji_to_arabic(c)
    end
  end
  num
end

num = kan2num("七千百二十三")
puts "七千百二十三 => #{num}"
