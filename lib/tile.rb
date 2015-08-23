require 'bundler/setup'
Bundler.require

class Tile
  TYPES= [:brick, :ore, :lumber, :wool, :grain]

  attr_reader :type

  def initialize(type)
    raise ArgumentError, "Type #{type} should be in #{TYPES}" unless TYPES.include?(type)
    @type = type
  end
end



