def tail(lines, filename)
  queue = Array.new
  File.open(filename) do |file|
    while line = file.gets
      queue.push(line)
      if queue.size > lines
        queue.shift
      end
    end
  end
  queue.each {|line| print line}
end

tail(ARGV[0].to_i, ARGV[1])
