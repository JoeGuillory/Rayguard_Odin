package main

import "base:intrinsics"
import rl "vendor:raylib"

Player :: struct
{
	score : i32,
	health : f32,
}

create_player :: proc(health : f32) ->Player
{
	return Player{0, health}

}


Game :: struct
{
	should_close : bool,
	player :Player
}


game_start :: proc(game : ^Game)
{
	rl.InitWindow(1280,720, "Rayguard")
	game.should_close = false
}


game_update :: proc(game: ^Game)
{
	if(rl.WindowShouldClose()){
		game.should_close = true
	}
	rl.BeginDrawing()
	rl.ClearBackground(rl.WHITE)

	rl.EndDrawing()
}


game_end :: proc(game: ^Game)
{
	rl.CloseWindow()
}
