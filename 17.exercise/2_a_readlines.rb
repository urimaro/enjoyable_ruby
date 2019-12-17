def reverse(filename)
  File.open(filename, "r+") do |file|
    lines = file.readlines
    file.rewind
    file.truncate(0)
    file.write(lines.reverse.join)
  end
end

reverse(ARGV[0])
