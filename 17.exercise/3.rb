def tail(number, filename)
  lines = File.readlines(filename)
  lines[-number..].each {|line| puts line}
end

tail(10, "17.exercise/NEWS-2.6.0")
