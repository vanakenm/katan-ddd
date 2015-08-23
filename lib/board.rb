require_relative 'tile'
require_relative 'coords/cube'

class Board
  def initialize
    @tiles = {}
  end

  def size
    @tiles.size
  end

  def [](coordinates)
    @tiles[coordinates]
  end

  def []=(coordinates, tile)
    @tiles[coordinates] = tile
  end
end