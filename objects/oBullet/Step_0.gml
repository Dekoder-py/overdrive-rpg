x_speed = 0


x_speed = movement_speed * bul_dir

move_and_collide(x_speed, 0, oSolid)

frame += 1

if (frame > 100) {
	instance_destroy(self)
}