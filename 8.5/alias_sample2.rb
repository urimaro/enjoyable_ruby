class C1
  def hello
    "Hello"
  end
end

class C2 < C1
  def hello
    "#{old_hello}, again"
  end

  alias old_hello hello
end

obj = C2.new
p obj.old_hello
p obj.hello
