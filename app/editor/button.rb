class Editor
  class Button
    attr_sprite

    attr_reader :name, :group, :items, :margin, :menu

    def initialize(name:, menu:, x:, y:, items: [], items_alt: nil)
      @name = name
      @margin = menu.button_margin
      @menu = menu
      @x = x
      @y = y
      @w = menu.size / 2 - margin
      @h = menu.size / 2 - margin

      @items = {main: items, alt: items_alt}
      @index = 0
      @main_active = true
    end

    def background
      {
        x: x,
        y: y,
        w: w,
        h: h,
        r: ::BUTTON_BG_COLOR[0],
        g: ::BUTTON_BG_COLOR[1],
        b: ::BUTTON_BG_COLOR[2],
        a: 255
      }
    end

    def icon(args)
      width, height = args.gtk.calcspritebox(icon_path)

      {
        x: x + w.half,
        y: y + h.half,
        w: width,
        h: height,
        source_w: width,
        source_h: height,
        path: icon_path,
        anchor_x: 0.5,
        anchor_y: 0.5
      }
    end

    def render(args)
      args.outputs.solids << background
      args.outputs.sprites << icon(args)
    end

    def icon_path
      if main_active?
        items[:main][index][:path]
      else
        items[:alt][index][:path]
      end
    end

    private

    attr_reader :index, :main_active

    alias_method :main_active?, :main_active
  end
end
