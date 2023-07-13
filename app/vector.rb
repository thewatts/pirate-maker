class Vector
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  def to_s
    "(#{x}, #{y})"
  end

  def length
    Math.sqrt(x**2 + y**2)
  end

  def update(other)
    self.x = other.x
    self.y = other.y
  end
end
