require "date"

def title
  today = Date.today
  "    #{today.strftime("%B %Y")}"
end

def data
  today = Date.today
  year = today.year
  month = today.month

  first = Date.new(year, month, 1)
  last = Date.new(year, month, -1)

  data = (1..last.day).to_a
  first.wday.times do |index|
    data.unshift("")
  end
  (6 - last.wday).times do |index|
    data.push("")
  end

  data
end

def show_calendar
  puts title
  puts "Su Mo Tu We Th Fr Sa"

  data.each_with_index do |day, index|
    print " " unless index % 7 == 0
    printf("%2s", day)
    print "\n" if index % 7 == 6
  end
end

show_calendar
