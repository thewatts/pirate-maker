class Debug
  def tick(args)
    handle_input(args)
    render(args)
  end

  def serialize
    {}
  end

  private

  def handle_input(args)
    args.gtk.reset if args.inputs.keyboard.key_down.r
  end

  def render(args)
    labels = build_labels(args)

    args.outputs.labels << labels
  end

  def build_labels(args)
    [
      "FPS: #{args.gtk.current_framerate.to_sf}"
    ].map.with_index do |text, index|
      top = index * 20 + 10

      [
        20.from_left,
        top.from_top,
        text
      ]
    end
  end
end
