# Game-of-Life
Game of Life simulation written in Processing

## Introduction

The Game of Life is a cellular automation first invented by John Horton Conway in 1970. The game is a zero-player game, 
meaning that its evolution is determined by its initial state, requiring no further input. 
One interacts with the Game of Life by creating an initial configuration and observing how it evolves.

The rules for this game will be taken from its Wikipedia page:

https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life

## Rules

1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

## Implementation

This simulation is rendered in a very un-optimized manner. Further improvements may come as free time allows.
