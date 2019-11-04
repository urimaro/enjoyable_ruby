module ClassMethod
  def cmethod
    "class method"
  end
end

module InstanceMethod
  def imethod
    "instance method"
  end
end

class MyClass
  # extendするとクラスメソッドを追加できる
  extend ClassMethod
  # includeするとインスタンスメソッドを追加できる
  include InstanceMethod
end

p MyClass.cmethod
p MyClass.new.imethod
