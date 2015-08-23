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
* Short for easy file storage (serialize or to_json)

# Board

## Board and Tiles

* A Cube coordinates has 3 axis (x,y,z) with a sum of 0
* A Tile can be set and retrieved on a Board given a Cube coordinates

## Board setup

* Setup spiral board
* Bag of tiles
* Numbers

# Interlude: Showcase

* Web
* Desktop (fx or qt or gtk3)