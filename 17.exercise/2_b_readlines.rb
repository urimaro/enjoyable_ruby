def leave_first(filename)
  File.open(filename, "r+") do |file|
    lines = file.readlines
    file.rewind
    file.truncate(0)
    file.write(lines.first)
  end
end

leave_first(ARGV[0])
