# rubocop:disable Style/RedundantFileExtensionInRequire
require_relative "button.rb"
require "app/settings.rb"

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

    def data
      EDITOR_DATA.select { |id, values|
        !!values[:menu]
      }.each_with_object({}) { |(id, values), hash|
        menu_id = values[:menu]
        path = values[:menu_surf]

        hash[menu_id] ||= []
        hash[menu_id] << {id: id, path: path}
      }
    end

    def tile_button
      Button.new(
        menu: self,
        x: left + button_margin / 2,
        y: bottom + button_margin / 2 + size / 2,
        items: data.fetch("terrain")
      )
    end

    def coin_button
      Button.new(
        menu: self,
        x: left + size / 2 + button_margin / 2,
        y: bottom + button_margin / 2 + size / 2,
        items: data.fetch("coin")
      )
    end

    def palm_button
      Button.new(
        menu: self,
        x: left + button_margin / 2,
        y: bottom + button_margin / 2,
        items: data.fetch("palm fg"),
        items_alt: data.fetch("palm bg")
      )
    end

    def enemy_button
      Button.new(
        menu: self,
        x: left + size / 2 + button_margin / 2,
        y: bottom + button_margin / 2,
        items: data.fetch("enemy")
      )
    end

    def render(args)
      tile_button.render(args)
      coin_button.render(args)
      palm_button.render(args)
      enemy_button.render(args)
    end
  end
end
# rubocop:enable Style/RedundantFileExtensionInRequire
