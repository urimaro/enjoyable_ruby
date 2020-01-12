require 'time'

p Time.strptime("令和2年1月11日", "令和%Y年%m月%d日") do |y|
    p y
    y + 2018
end
p Time.strptime("平成30年1月11日", "平成%Y年%m月%d日") { |y|
    p y
    y + 1988
}

p Time.strptime("1/11/2020", "%m/%d/%Y")
p Time.strptime("11/1/2020", "%d/%m/%Y")
