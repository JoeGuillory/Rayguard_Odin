package main

import rl "vendor:raylib"

Game :: struct
{
	should_close : bool
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
	rl.ClearBackground(rl.BLUE)




	rl.EndDrawing()
}


game_end :: proc(game: ^Game)
{
	rl.CloseWindow()
}
