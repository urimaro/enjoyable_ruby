def leave_last(filename)
  last = File.readlines(filename).last
  File.open(filename, "w") {|file| file.puts(last)}
end

leave_last("17.exercise/NEWS-2.6.0_c")
