package main

import rl "vendor:raylib"
import "core:fmt"

Game :: struct
{
	should_close : bool,
	first_level : Level

}

game_init :: proc(game: ^Game)
{
	game.first_level = {}
	player_actor : Actor = {}
	player_actor.name = "Player"
	add_actor(&game.first_level,&player_actor)


	game_start(game)
	for(!rl.WindowShouldClose() && !game.should_close)
	{
		game_update(game)
	}
	game_end(game)
}


game_start :: proc(game : ^Game)
{
	rl.InitWindow(1280,720, "Rayguard")
	game.should_close = false
}


game_update :: proc(game: ^Game)
{
	rl.BeginDrawing()
	rl.ClearBackground(rl.WHITE)





	rl.EndDrawing()
}


game_end :: proc(game: ^Game)
{
	rl.CloseWindow()
}
