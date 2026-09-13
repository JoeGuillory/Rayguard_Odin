package main

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
