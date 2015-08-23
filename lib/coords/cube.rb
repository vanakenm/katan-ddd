module Coords
  class Cube
    
    attr_reader :x, :y, :z

    def initialize(x, y, z)
      @x = x
      @y = y
      @z = z
    end

    E = 0
    NE = 1
    NW = 2
    W = 3
    SW = 4
    SE = 5

    DIRECTIONS = [
      Cube.new(1, -1, 0), Cube.new(1, 0, -1), Cube.new(0, 1, -1),
      Cube.new(-1, 1, 0), Cube.new(-1, 0, 1), Cube.new(0, -1, 1)
    ]

    def to_cube(dx, dy, dz)
      Cube.new(x + dx, y + dy, z + dz)
    end

    def self.direction(direction)
      DIRECTIONS[direction]
    end

    def neighbor(direction)
      self + Cube::direction(direction)
    end

    def +(cube)
      Cube.new(x + cube.x, y + cube.y, z + cube.z)
    end

    def scale(cube, radius)
      Cube.new(x + (cube.x * radius), y + (cube.y * radius), z + (cube.z * radius))
    end

    def to_s
      "#{x}, #{y}, #{z}"
    end

    def self.ring(center, radius)
      results = []
      cube = center + center.scale(direction(SW), radius)

      6.times do |i|  
        radius.times do |j|
          results << cube
          cube = cube.neighbor(i)
        end
      end

      results
    end

    def ==(cube)
      x == cube.x && y == cube.y && z == cube.z
    end
  end
end