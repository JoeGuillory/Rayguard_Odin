package main


import "core:time"
import "core:fmt"

main :: proc()
{
	game : Game = {}
	game.player = create_player(100)

	current_time := time.tick_now()

	fmt.print(current_time)
	game_start(&game)

	for(!game.should_close)
	{
		game_update(&game)
	}

	game_end(&game)
}
