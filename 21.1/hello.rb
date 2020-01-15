hello1 = Proc.new do |name|
  puts "Hello, #{name}"
end

hello2 = proc do |name|
  puts "Hello, #{name}"
end

hello1.call("World")
hello2.call("Ruby")
