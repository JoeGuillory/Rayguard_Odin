package main

main :: proc()
{
	game : Game = {}
	game.player = {0,100}
	game_start(&game)

	for(!game.should_close)
	{
		game_update(&game)
	}

	game_end(&game)
}
