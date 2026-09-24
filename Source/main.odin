package main

main :: proc()
{
	game : Game = {}
	game.player = create_player(100)
	game_start(&game)

	for(!game.should_close)
	{
		game_update(&game)
	}

	game_end(&game)
}
