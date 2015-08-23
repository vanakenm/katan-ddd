require_relative '../lib/coords/cube'

require 'minitest/autorun'

class CubeTest < MiniTest::Test
  def test_ring
    center = Coords::Cube.new(0, 0, 0)
    ring = Coords::Cube.ring(center, 2)

    assert_equal 12, ring.size
  end

  def test_direction
    center = Coords::Cube.new(0, 0, 0)

    east = center + Coords::Cube::direction(Coords::Cube::E)

    assert_equal Coords::Cube.new(1, -1, 0), east
  end
  
end