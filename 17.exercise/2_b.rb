def leave_first(filename)
  first = File.open(filename) {|file| file.gets}
  File.open(filename, "w") {|file| file.puts(first)}
end

leave_first("17.exercise/NEWS-2.6.0_b")
