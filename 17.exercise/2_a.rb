def reverse(filename)
  File.open(filename, "r+") do |file|
    sio = StringIO.new
    file.reverse_each {|line| sio.puts(line)}

    file.rewind
    sio.rewind

    sio.each {|line| file.write(line)}
  end
end

reverse("17.exercise/NEWS-2.6.0_a")
