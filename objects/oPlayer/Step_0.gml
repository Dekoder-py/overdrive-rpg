x_speed = 0
y_speed = 0

if (keyboard_check(ord("D"))) {
	x_speed = movement_speed
}

if (keyboard_check(ord("A"))) { 
    x_speed = -movement_speed 
} 


if (keyboard_check(ord("W"))) { 
    y_speed = -movement_speed 
} 


if (keyboard_check(ord("S"))) { 
    y_speed = movement_speed 
}

// Flip Heidi based on direction
if(x_speed < 0) { // if moving left

    image_xscale = -1 
	bul_dir =  -1

} else if (x_speed > 0) { // when moving right

    image_xscale = 1 // flip sprite
	bul_dir = 1

}

// move
move_and_collide(x_speed, y_speed, oSolid)

// Shoot
if (keyboard_check(ord(" "))) {
	if (frame > 30) {
		instance_create_layer(x, y, layer, oBullet)
		frame = 0
	}
}

if (!instance_exists(oSlime)) {
	show_message("You win! Time to go back...")
	room_restart()
}

frame += 1