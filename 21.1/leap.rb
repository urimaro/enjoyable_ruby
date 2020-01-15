leap = Proc.new do |year|
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

p leap.call(2000)
p leap[2013]
p leap[2016]
p leap[2020]
