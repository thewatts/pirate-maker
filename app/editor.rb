class Editor
  attr_reader :origin

  def initialize
    @origin = Vector.new(0, 0)
    @pan_offset = Vector.new(0, 0)
    @panning = false
  end

  def draw_tile_lines(args)
    columns = args.grid.w.idiv(TILE_SIZE)
    rows = args.grid.h.idiv(TILE_SIZE)

    offset_vector = Vector.new(
      origin.x - origin.x.idiv(TILE_SIZE) * TILE_SIZE,
      origin.y - origin.y.idiv(TILE_SIZE) * TILE_SIZE
    )

    (columns + 1).times do |column|
      x = offset_vector.x + column * TILE_SIZE
      args.outputs.lines << [x, 0, x, args.grid.h, *LINE_COLOR, 30]
    end

    (rows + 1).times do |row|
      y = offset_vector.y + row * TILE_SIZE
      args.outputs.lines << [0, y, args.grid.w, y, *LINE_COLOR, 30]
    end
  end

  def pan_input(args)
    if args.inputs.keyboard.key_held.space && !args.inputs.mouse.button_left
      args.gtk.set_cursor "sprites/cursors/hand-small.png", 12, 12
    else
      args.gtk.set_cursor "sprites/cursors/mouse.png"
    end

    if args.inputs.keyboard.key_held.space && args.inputs.mouse.button_left
      args.gtk.set_cursor "sprites/cursors/hand-grab-small.png", 12, 12

      mouse_position = Vector.new(args.inputs.mouse.x, args.inputs.mouse.y)

      if panning?
        self.origin = mouse_position - pan_offset
      else
        self.panning = true
        self.pan_offset = mouse_position - origin
      end
    else
      self.panning = false
    end
  end

  def tick(args)
    pan_input(args)
    draw_tile_lines(args)

    args.outputs.solids << [origin.x, origin.y, 10, 10, 255, 0, 0, 255]
  end

  private

  attr_writer :origin
  attr_accessor :panning, :pan_offset

  alias_method :panning?, :panning
end
