gpu_set_tex_filter(false)
pal_swap_set(S_EnemyPal1,0+BrightSprites*4,0)
draw_sprite(S_HP,0,CAM_X+8+hpdrawx,CAM_Y+8)



if instance_exists(O_Player) {
		if O_Player.hit {
		if O_Player.hittimer > 73 {
		if O_Player.hittimer >= 90 {pal_swap_set(S_EnemyPalHit,7,0)}
		if O_Player.hittimer < 86 {pal_swap_set(S_EnemyPalHit,6,0)}
		if O_Player.hittimer < 83 {pal_swap_set(S_EnemyPalHit,5,0)}
		if O_Player.hittimer < 80 {pal_swap_set(S_EnemyPalHit,4,0)}
		if O_Player.hittimer < 77 {pal_swap_set(S_EnemyPalHit,3,0)}
		if O_Player.hittimer < 74 {pal_swap_set(S_EnemyPalHit,2,0)}
		}
		if O_Player.hittimer <= 70 {pal_swap_set(S_EnemyPal1,0,0)}
		if O_Player.hittimer > 70 {
		hpdrawx = irandom_range(-2,2)
		}
		} else {
		hpdrawx = 0;	
		}
		draw_sprite(S_HP,O_Player.hp,CAM_X+8+hpdrawx,CAM_Y+8)
	}
	pal_swap_reset();
	
	gpu_set_tex_filter(true)