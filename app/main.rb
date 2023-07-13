# rubocop:disable Style/RedundantFileExtensionInRequire
require "app/settings.rb"
require "app/debug.rb"
require "app/editor.rb"

def tick(args)
  args.state.debug ||= Debug.new
  args.state.debug.tick(args)

  args.state.editor ||= Editor.new(args)
  args.state.editor.tick
end
# rubocop:enable Style/RedundantFileExtensionInRequire
