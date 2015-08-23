require_relative '../lib/tile'

require 'minitest/autorun'

class TileTest < MiniTest::Test
  def test_type
    tile = Tile.new(type: :brick)
    assert_equal :brick, tile.type
    assert_nil tile.number
  end

  def test_no_type
    assert_raises(ArgumentError) do 
      tile = Tile.new
    end
  end

  def test_valid_type
    assert_raises(ArgumentError) do 
      tile = Tile.new(type: :sweet)
    end

    tile = Tile.new(type: :lumber)
    assert_equal :lumber, tile.type
  end

  def test_number
    tile = Tile.new(type: :brick, number: 7)
    assert_equal :brick, tile.type
    assert_equal 7, tile.number
  end

  def test_valid_number
    assert_raises(ArgumentError) do 
      tile = Tile.new(type: :brick, number: 13)
    end
  end

  def test_to_s
    tile = Tile.new(type: :brick, number: 11)
    assert_match /11/, tile.to_s
    assert_match /Brick/, tile.to_s
  end

  def test_serialize
    tile = Tile.new(type: :brick, number: 11)
    assert_equal "brick:11", tile.serialize
  end

  def test_deserialize
    tile = Tile.deserialize("brick:11")
    assert_equal :brick, tile.type
    assert_equal 11, tile.number
  end
end