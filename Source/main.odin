package main

import "core:fmt"
import rl "vendor:raylib"

main :: proc()
{
	game : Game = {}

	game_start(&game)

	for(!game.should_close)
	{
		game_update(&game)
	}

	game_end(&game)
}
