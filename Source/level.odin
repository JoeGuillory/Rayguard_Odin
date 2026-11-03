package main


Level :: struct
{
	actors : [dynamic]Actor
}


add_actor :: proc(level : ^Level, actor : ^Actor)
{
	append_elem(&level.actors, actor^)
}

remove_actor ::proc(level: ^Level, actor: ^Actor)
{

}
