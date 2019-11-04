module M1
  def meth
    "M1#meth"
  end
end

module M2
  def meth
    "M2#meth"
  end
end

class C
  prepend M1
  prepend M2

  def meth
    "C#meth"
  end
end

c = C.new
p c.meth
p C.ancestors
