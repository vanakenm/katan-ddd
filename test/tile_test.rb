require_relative '../lib/tile'

require 'minitest/autorun'

class TileTest < MiniTest::Test
  def test_has_a_type
    tile = Tile.new(:brick)
    assert_equal :brick, tile.type
  end

  def test_has_valid_type
    assert_raises(ArgumentError) do 
      tile = Tile.new(:sweet)
    end
  end
end