class Editor
  attr_reader :outputs

  def initialize(args)
    @outputs = args.outputs
  end

  def tick
    outputs.labels << [100, 100, "Hello World"]
  end
end
