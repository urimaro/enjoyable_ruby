require_relative "jzipcode"

start_time = Time.now
db = File.join(__dir__, "jzipcode.db")
csv = File.join(__dir__, "KEN_ALL.csv")
jzipcode = JZipCode.new(db)
jzipcode.create(csv)

keyword = ARGV[0]
result = jzipcode.find_by_code(keyword)
if result.empty?
  result = jzipcode.find_by_address(keyword)
end
puts result
puts
puts "#{Time.now - start_time}秒"
