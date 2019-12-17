def leave_last(filename)
  File.open(filename, "r+") do |file|
    lines = file.readlines
    file.rewind
    file.truncate(0)
    file.write(lines.last)
  end
end

leave_last(ARGV[0])
