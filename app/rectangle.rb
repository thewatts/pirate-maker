class Editor
  class Button
    attr_rect

    attr_accessor :x, :y, :w, :h, :color

    def initialize(x:, y:, w:, h:, color: [255, 255, 255, 255])
      @x = x
      @y = y
      @w = w
      @h = h

      @color = color
    end

    def inflate(x:, y:)
      self.x -= x
      self.y -= y
      self.w += x * 2
      self.h += y * 2
    end

    def to_h
      {
        x: x,
        y: y,
        w: w,
        h: h,
        r: color[0],
        g: color[1],
        b: color[2],
        a: color[3]
      }
    end
  end
end
