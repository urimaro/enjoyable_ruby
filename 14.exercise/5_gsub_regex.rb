def kan2num(kan)
  digit4 = digit3 = digit2 = digit1 = "0"

  # `kan` の漢数字を算用数字に置き換える
  kan.gsub!(/一/, "1")
  kan.gsub!(/二/, "2")
  kan.gsub!(/三/, "3")
  kan.gsub!(/四/, "4")
  kan.gsub!(/五/, "5")
  kan.gsub!(/六/, "6")
  kan.gsub!(/七/, "7")
  kan.gsub!(/八/, "8")
  kan.gsub!(/九/, "9")

  if kan =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?$/
    if $1
      digit4 = $2 || "1"
    end
    if $3
      digit3 = $4 || "1"
    end
    if $5
      digit2 = $6 || "1"
    end
    digit1 = $7 || "0"
  end

  return (digit4 + digit3 + digit2 + digit1).to_i
end

p kan2num("七千百二十三")
p kan2num("七千八百二十三")
p kan2num("千八百二十三")
p kan2num("八百二十三")
p kan2num("百二十三")
p kan2num("二十三")
p kan2num("十三")
p kan2num("三")
