def kanji_to_arabic(kanji)
  kanji.tr("一二三四五六七八九", "1-9")
end

def kan2num(kan)
  kan.reverse.each_char.inject("") do |result, c|
    if "十百千".include?(c)
      "1" + result
    else
      result[0] = kanji_to_arabic(c)
      result
    end
  end
end

num = kan2num("七千百二十三")
puts "七千百二十三 => #{num}"
