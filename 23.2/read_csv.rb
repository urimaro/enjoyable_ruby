require "csv"

code = ARGV[0]
start_time = Time.now

CSV.open("23.1/KEN_ALL.CSV", "r:Shift_JIS:UTF-8") do |csv|
  csv.each do |record|
    puts record.join(" ") if record[2] == code
  end
end
p Time.now - start_time
