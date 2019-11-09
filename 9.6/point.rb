class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def inspect
    "(#{x}, #{y})"
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  def +@
    # 自分の複製を返す
    dup
  end

  def -@
    # x、yのそれぞれの正負を逆にする
    self.class.new(-x, -y)
  end

  def ~@
    # 90度反転させた座標を返す
    self.class.new(-y, x)
  end

  def [](index)
    case index
    when 0
      x
    when 1
      y
    else
      raise ArgumentError, "out of range `#{index}`"
    end
  end

  def []=(index, val)
    case index
    when 0
      self.x = val
    when 1
      self.y = val
    else
      raise ArgumentError, "out of range `#{index}`"
    end
  end
end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)

p point0
p point1
p point0 + point1
p point0 - point1

point = Point.new(3, 6)
p +point
p -point
p ~point

point = Point.new(3, 6)
p point[0]
p point[1] = 2
puts "# point.[]=(1, 2)"
p point.[]=(1, 2)
p point[1]
p point[2]
