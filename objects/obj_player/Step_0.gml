with (obj_player)
{
    switch state
    {
        case 0:
            scr_player_normal()
            break
        case 1:
            scr_player_gottreasure()
            break
        case 2:
            scr_player_knightpep()
            break
        case 3:
            scr_player_knightpepattack()
            break
        case 4:
            scr_player_meteorpep()
            break
        case 5:
            scr_player_bombpep()
            break
        case 6:
            scr_player_grabbing()
            break
        case 7:
            scr_player_chainsawpogo()
            break
        case 8:
            scr_player_shotgunjump()
            break
        case 9:
            scr_player_stunned()
            break
        case 10:
            scr_player_highjump()
            break
        case 11:
            scr_player_chainsaw()
            break
        case 12:
            scr_player_facestomp()
            break
        case 13:
            scr_player_mach4()
            break
        case 14:
            scr_player_timesup()
            break
        case 15:
            scr_player_machroll()
            break
        case 17:
            scr_player_pistol()
            break
        case 16:
            scr_player_shotgun()
            break
        case 18:
            scr_player_machfreefall()
            break
        case 19:
            scr_player_throw()
            break
        case 21:
            scr_player_superslam()
            break
        case 20:
            scr_player_slam()
            break
        case 22:
            scr_player_skateboard()
            break
        case 23:
            scr_player_grind()
            break
        case 24:
            scr_player_grab()
            break
        case 25:
            scr_player_punch()
            break
        case 26:
            scr_player_backkick()
            break
        case 27:
            scr_player_uppunch()
            break
        case 28:
            scr_player_shoulder()
            break
        case 29:
            scr_player_backbreaker()
            break
        case 30:
            scr_player_bossdefeat()
            break
        case 32:
            scr_player_bossintro()
            break
        case 40:
            scr_player_smirk()
            break
        case 71:
            scr_player_stairs()
            break
        case 31:
            scr_player_pizzathrow()
            break
        case 33:
            scr_player_gameover()
            break
        case 70:
            scr_player_Sjumpland()
            break
        case 69:
            scr_player_freefallprep()
            break
        case 67:
            scr_player_runonball()
            break
        case 66:
            scr_player_boulder()
            break
        case 34:
            scr_player_keyget()
            break
        case 35:
            scr_player_tackle()
            break
        case 38:
            scr_player_slipnslide()
            break
        case 37:
            scr_player_ladder()
            break
        case 36:
            scr_player_jump()
            break
        case 42:
            scr_player_victory()
            break
        case 39:
            scr_player_comingoutdoor()
            break
        case 41:
            scr_player_Sjump()
            break
        case 43:
            scr_player_Sjumpprep()
            break
        case 44:
            scr_player_crouch()
            break
        case 45:
            scr_player_crouchjump()
            break
        case 46:
            scr_player_crouchslide()
            break
        case 47:
            scr_player_mach1()
            break
        case 48:
            scr_player_mach2()
            break
        case 68:
            scr_player_mach3()
            break
        case 49:
            scr_player_machslide()
            break
        case 50:
            scr_player_bump()
            break
        case 51:
            scr_player_hurt()
            break
        case 52:
            scr_player_freefall()
            break
        case 55:
            scr_player_freefallland()
            break
        case 53:
            scr_player_hang()
            break
        case 56:
            scr_player_door()
            break
        case 62:
            scr_player_barrelnormal()
            break
        case 61:
            scr_player_barrelfall()
            break
        case 60:
            scr_player_barrelmach1()
            break
        case 59:
            scr_player_barrelmach2()
            break
        case 58:
            scr_player_barrelfloat()
            break
        case 57:
            scr_player_barrelcrouch()
            break
        case 63:
            scr_player_barrelslipnslide()
            break
        case 64:
            scr_player_barrelroll()
            break
        case 65:
            scr_player_current()
            break
		case 100:
			scr_player_titlescreen()
			break
		case 101:
			scr_player_fireass()
			break
		case 102:
			scr_player_frozen()
			break
		case 103:
			scr_player_handstandjump()
			break
		case 104:
			scr_player_poundprep() // lol
			break
		case 105:
			scr_player_tunnel()
			break
    }
    
    if (state != 41)
        audio_stop_sound(sfx_plane)
    if (state != 41)
        audio_stop_sound(sfx_plane)
	if state != 15
	{
		audio_stop_sound(sfx_sageroll)
		audio_stop_sound(sfx_golfroll)
	}
	if state != 68
	{
	audio_stop_sound(sfx_golfmach3)
	audio_stop_sound(sfx_sagemach3)
	}
	if state != 48
	{
	audio_stop_sound(sfx_golfmach2)
	audio_stop_sound(sfx_sagemach2)
	}
	if state != 47
	{
	audio_stop_sound(sfx_golfmach1)
	audio_stop_sound(sfx_sagemach1)
	}
    if ((state != 0) && (state != 6))
        audio_stop_sound(sfx_footsteps)
    if ((sprite_index == spr_player_idlevomit) && ((image_index > 28) && (image_index < 43)))
        instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit)
    if ((sprite_index == spr_player_idlevomitblood) && ((image_index > 28) && (image_index < 43)))
    {
        with (instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit))
            sprite_index = spr_vomit2
    }
    if (input_buffer_jump < 8)
        input_buffer_jump++
    if ((key_particles == 1) && (global.key_inv == 1))
        instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
    if (state != 36)
        turn = 0
    if ((inv_frames == 0) && (hurted == 0))
        image_alpha = 1
    if ((state == 48) || ((state == 12) || ((state == 18) || ((state == 12) || ((state == 15) || ((state == 19) || ((state == 68) || ((state == 21) || ((state == 20) || ((state == 28) || ((state == 25) || ((state == 26) || ((state == 27) || ((state == 28) || ((state == 29) || ((state == 52) || (state == 41)))))))))))))))))
        attacking = 1
    else
        attacking = 0
    if ((state == 68) || ((state == 13) || ((state == 52) || ((state == 20) || ((state == 21) || ((state == 41) || ((state == 15) || ((state == 18) || (state == 29)))))))))
        instakillmove = 1
    else
        instakillmove = 0
    if ((flash == 1) && (alarm[0] <= 0))
        alarm[0] = (0.15 * room_speed)
    if (state != 0)
    {
        idle = 0
        dashdust = 0
    }
    if ((state != 47) && (state != 36))
        momemtum = 0
    if (movespeed < 8)
        dashdust = 0
    if ((state != 24) && ((state != 19) && ((state != 28) && ((state != 25) && ((state != 26) && ((state != 27) && (state != 20)))))))
        throwforce = 0
    if (state != 12)
        facestompAnim = 0
    if ((state != 17) && ((state != 16) && (state != 8)))
        shoot = 1
    if (state != 20)
        slamming = 0
    if ((state != 52) && ((state != 12) && ((state != 21) && (state != 55))))
        superslam = 0
    if (state != 48)
        machpunchAnim = 0
    if (state != 48)
        machfreefall = 0
    if (state != 36)
        ladderbuffer = 0
    if (state != 36)
        stompAnim = 0
    if (((state == 68) || ((state == 15) || ((state == 21) || ((state == 41) || (state == 18))))) && (!instance_exists(obj_mach3effect)))
    {
        toomuchalarm1 = 6
        instance_create(x, y, obj_mach3effect)
    }
    if (toomuchalarm1 > 0)
    {
        toomuchalarm1 -= 1
        if ((toomuchalarm1 <= 0) && ((state == 68) || ((state == 15) || ((state == 41) || (state == 18)))))
        {
            instance_create(x, y, obj_mach3effect)
            toomuchalarm1 = 6
        }
    }
    if ((state != 52) && (state != 21))
        obj_camera.zoom = 0
    if ((state != 50) && ((state != 44) && ((state != 15) && ((state != 51) && ((state != 46) && (state != 45))))))
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
    if (state != 51)
        hurtsound = 0
	if (global.cheesefollow = 1) && (global.sausagefollow = 1) && (global.shroomfollow = 1) && (global.tomatofollow = 1) && (global.pineapplefollow = 1)
		global.pizza = 1
	if (global.cheesefollow = 1)
	{
		if !instance_exists(obj_pizzakincheese)
			instance_create(x, y, obj_pizzakincheese)
	}
	if global.sausagefollow = 1
	{
		if !instance_exists(obj_pizzakinsausage)
			instance_create(x, y, obj_pizzakinsausage)
	}
	if global.tomatofollow = 1
	{
		if !instance_exists(obj_pizzakintomato)
			instance_create(x, y, obj_pizzakintomato)
	}
	if global.shroomfollow = 1
	{
		if !instance_exists(obj_pizzakinshroom)
			instance_create(x, y, obj_pizzakinshroom)
	}
	if global.pineapplefollow = 1
	{
		if !instance_exists(obj_pizzakinpineapple)
			instance_create(x, y, obj_pizzakinpineapple)
	}
	if place_meeting(x, y, obj_water2)
	{
		bubble++
		grav = 0.35
		if bubble = 30
		{
			instance_create(x, y, obj_bubble)
			bubble = 0
		}
	}
	else
	{
		grav = 0.5
	}
	if global.combo > 0
	{
		combotimer = 90
	}
	if combotimer > 0
		combotimer--
	if combotimer = 0
		global.combo = 0
	if place_meeting(x, y + 1, obj_collisionparent) && bossfallout = 1
	{
		state = 51
		bossfallout = 0
	}
}


