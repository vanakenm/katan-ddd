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

## A Tile has representations

* Human readable (to_s)
* Short for file storage (serialize)

# Board

## Board and Tiles

* A Board has Tiles

## Hexagons

* A Board use Cube coordinates
* A Board is saved in even-r coordinates
* A Board is loaded from even-r coordinates