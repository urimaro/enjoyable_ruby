wday = {sunday: "日曜日", monday: "月曜日", tuesday: "火曜日", wednesday: "水曜日", thursday: "木曜日", friday: "金曜日", saturday: "土曜日"}

wday.each do |key, value|
  puts "「#{key.to_s}」は#{value}のことです。"
end
