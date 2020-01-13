require "time"

def jparsedate(str)
  if /午前/ =~ str
    return Time.strptime(str, "%Y年%m月%d日午前%H時%M分%S秒")
  elsif /午後/ =~ str
    str = str.sub(/午後(\d\d*)/) do |matched|
            $1.to_i + 12
          end
    return Time.strptime(str, "%Y年%m月%d日%H時%M分%S秒")
  else
    raise "午前、午後が曖昧です"
  end
end

p jparsedate("2018年12月25日午後8時17分50秒")
p jparsedate("2018年12月25日午前8時17分50秒")
p jparsedate("2018年12月25日8時17分50秒")
