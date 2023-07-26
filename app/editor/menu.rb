# rubocop:disable Style/RedundantFileExtensionInRequire
require_relative "button.rb"

class Editor
  class Menu
    attr_rect

    attr_reader :size, :margin, :button_margin

    def initialize
      @size = 180
      @margin = 6
      @button_margin = 5
    end

    def x
      margin.from_right - size
    end

    def y
      margin.from_bottom
    end

    def background
      {
        x: x,
        y: y,
        w: size,
        h: size,
        r: 255,
        g: 0,
        b: 0,
        a: 255
      }
    end

    def tile_button
      Button.new(
        x: left + button_margin / 2,
        y: bottom + button_margin / 2 + size / 2,
        w: size / 2 - button_margin,
        h: size / 2 - button_margin,
        r: 0,
        g: 0,
        b: 255,
        a: 255
      )
    end

    def coin_button
      Button.new(
        x: left + size / 2 + button_margin / 2,
        y: bottom + button_margin / 2 + size / 2,
        w: size / 2 - button_margin,
        h: size / 2 - button_margin,
        r: 0,
        g: 255,
        b: 0,
        a: 255
      )
    end

    def palm_button
      Button.new(
        x: left + button_margin / 2,
        y: bottom + button_margin / 2,
        w: size / 2 - button_margin,
        h: size / 2 - button_margin,
        r: 255,
        g: 255,
        b: 0,
        a: 255
      )
    end

    def enemy_button
      Button.new(
        x: left + size / 2 + button_margin / 2,
        y: bottom + button_margin / 2,
        w: size / 2 - button_margin,
        h: size / 2 - button_margin,
        r: 255,
        g: 255,
        b: 255,
        a: 255
      )
    end

    def render(args)
      args.outputs.solids << background
      args.outputs.solids << tile_button
      args.outputs.solids << coin_button
      args.outputs.solids << palm_button
      args.outputs.solids << enemy_button
    end

    private

    def base_button
      {
        x: left,
        y: bottom + size / 2,
        w: size / 2,
        h: size / 2,
        r: 0,
        g: 255,
        b: 0,
        a: 255
      }

      # Rectangle.new(x: left, y: bottom + size / 2, w: size / 2, h: size / 2, color: [0, 255, 0, 255])
    end
  end
end
# rubocop:enable Style/RedundantFileExtensionInRequire
