package main

import rl "vendor:raylib"

Actor :: struct
{
	name : string,
	position : rl.Vector3,
	rotation : rl.Quaternion,
	scale : rl.Vector3
}
