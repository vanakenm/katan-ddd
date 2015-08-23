require_relative '../lib/board'

require 'minitest/autorun'

class BoardTest < MiniTest::Test
  def test_empty_board
    board = Board.new
    assert_equal 0, board.size
  end
  def test_set_tile
    board = Board.new
    coords = Coords::Cube.new(x: 0, y: -1, z: 1)
    board[coords] = Tile.new(type: :lumber, number: 3)

    assert_equal 3, board[coords].number
    assert_equal :lumber, board[coords].type
    assert_equal 1, board.size
  end
end