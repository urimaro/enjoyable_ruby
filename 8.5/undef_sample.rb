class C1
  def hello
    "Hello"
  end

  def bye
    "Bye"
  end
end

class C2 < C1
  undef bye
end

obj = C2.new
p obj.hello
p obj.bye
