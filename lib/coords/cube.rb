module Coords
  class Cube
    attr_reader :x, :y, :z

    def initialize(x:,y:,z:)
      @x = x
      @y = y
      @z = z
    end
  end
end