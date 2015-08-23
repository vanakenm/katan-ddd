require 'bundler/setup'
Bundler.require

class Tile
  TYPES= [:brick, :ore, :lumber, :wool, :grain]

  attr_reader :type, :number

  def initialize(type:, number: nil)
    raise ArgumentError, "Type #{type} should be in #{TYPES}" unless TYPES.include?(type)
    raise ArgumentError, "Number #{number} is not between 2 and 12" if number && !(2..12).include?(number)
    @type = type
    @number = number
  end
end



