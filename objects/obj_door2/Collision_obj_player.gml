with (obj_player)
{
    if ((state == 0) && (key_up && (y == (other.y + 50))))
    {
		sprite_index = spr_player_lookdoor
        y = other.target_y
        x = other.target_x
        targetRoom = other.targetRoom
        other.visited = 1
        image_index = 0
        state = 56
        instance_create(x, y, obj_fadeout)
    }
}

