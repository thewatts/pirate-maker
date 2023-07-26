class Editor
  class Button
    attr_sprite

    def initialize(x:, y:, w:, h:, r:, g:, b:, a:)
      @x = x
      @y = y
      @w = w
      @h = h

      @r = r
      @g = g
      @b = b
      @a = a
    end
  end
end
