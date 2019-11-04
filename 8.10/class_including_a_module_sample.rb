module M
  def methh
    "M#meth"
  end
end

class C
  include M

  def meth
    "C#meth"
  end
end

c = C.new
p c.meth
