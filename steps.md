# Tile

## A Tile has a type 

* At this time, can be a symbol
* We don't need to change type, so let's pass it to the constructor

## A Tile has a valid type (brick, ore, lumber, wool, grain)

* Throw an ArgumentError if the provided type is not correct

## A Tile has a number

* An integer between 2 and 12
* Also set from the start
* Maybe a good time to use keyword attributes