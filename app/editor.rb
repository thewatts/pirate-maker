class Editor
  attr_reader :origin

  def initialize
    @origin = Vector.new(0, 0)
    @pan_offset = Vector.new(0, 0)
    @panning = false
  end

  def pan_input(args)
    mouse_position = Vector.new(args.inputs.mouse.x, args.inputs.mouse.y)

    if args.inputs.keyboard.key_held.space && args.inputs.mouse.button_left
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

    args.outputs.labels << [100, 100, "Hello World"]
    args.outputs.solids << [origin.x, origin.y, 10, 10, 255, 0, 0, 255]
  end

  private

  attr_writer :origin
  attr_accessor :panning, :pan_offset

  alias_method :panning?, :panning
end
