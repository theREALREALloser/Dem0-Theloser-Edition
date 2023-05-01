with (obj_player)
{
    if ((state != 51) && ((state != 64) && ((state != 50) && ((hurted == 0) && (barrel == 0)))))
    {
		if global.machsound = 1
        scr_sound(va_hurt1, va_hurt2, va_hurt3)
		else
		scr_sound(sfx_newhurt)
        instance_create(x, y, obj_spikehurteffect)
        state = 51
        obj_player.image_index = 0
        obj_player.flash = 1
        if (x != other.x)
            obj_player.hsp = (sign((x - other.x)) * 5)
        else
            hsp = 5
        if (!place_meeting(x, (y + 1), obj_wall))
        {
            hurtbounce = 1
            vsp = -5
        }
    }
    else if ((barrel == 1) && (state != 64))
    {
        barrel = 0
        state = 51
        obj_player.image_index = 0
        obj_player.flash = 1
        obj_player.hsp = (sign((x - other.x)) * 5)
        if (!place_meeting(x, (y + 1), obj_wall))
        {
            hurtbounce = 1
            vsp = -5
        }
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    }
    else if ((state == 2) || (state == 3))
    {
        scr_sound(sfx_metaldestroy)
        with (instance_create(x, y, obj_knightdebris))
            image_index = 0
        with (instance_create(x, y, obj_knightdebris))
            image_index = 1
        with (instance_create(x, y, obj_knightdebris))
            image_index = 2
        with (instance_create(x, y, obj_knightdebris))
            image_index = 3
        with (instance_create(x, y, obj_knightdebris))
            image_index = 4
        with (instance_create(x, y, obj_knightdebris))
            image_index = 5
        if (x != other.x)
            obj_player.hsp = (sign((x - other.x)) * 5)
        else
            obj_player.hsp = 5
        vsp = -3
        image_index = 0
        obj_player.image_index = 0
        obj_player.flash = 1
        state = 50
    }
}
