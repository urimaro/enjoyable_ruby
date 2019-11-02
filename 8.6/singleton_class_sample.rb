str1 = "Ruby"
str2 = "Ruby"

class << str1
  def hello
    "Hello, #{self}i!"
  end
end

p str1.hello
p str2.hello
