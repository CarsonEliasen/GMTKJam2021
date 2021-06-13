var cell_size = sprite_get_height(sCell)
// move towards recruit target / interact with it
if (recruit_target != noone) {
	var dist_x = abs(x - recruit_target.x)
	var dist_y = abs(y - recruit_target.y)
	if (dist_x <= cell_size and dist_y <= cell_size) {
		character_recruit(id, recruit_target)
	} else {
		var recruit_target_cell = instance_nearest(recruit_target.x, recruit_target.y, oCell)
		if (recruit_target_cell != move_target_cell) {
			move_character(id, recruit_target_cell)
		}
	}
}
// move towards attack target / interact with it
if (attack_target != noone) {
	var dist_x = abs(x - attack_target.x)
	var dist_y = abs(y - attack_target.y)
	if (dist_x <= cell_size and dist_y <= cell_size) {
		character_attack(id, attack_target)
	} else {
		var attack_target_cell = instance_nearest(attack_target.x, attack_target.y, oCell)
		if (attack_target_cell != move_target_cell) {
			move_character(id, attack_target_cell)
		}
	}
}
// perform movement
if (!ds_queue_empty(move_queue)) {
	var step_cell = ds_queue_dequeue(move_queue)
	if(instance_exists(oCellOccupier)){
		var nearest_occ = instance_nearest(step_cell.x, step_cell.y, oCellOccupier)
	}
	if (step_cell == move_target_cell) {
		move_target_cell = noone
		instance_destroy(move_target)
		move_target = noone
		move_queue = ds_queue_create()
    audio_play_sound(soundArrived, 11, false)
	}
	if (nearest_occ.x == step_cell.x and nearest_occ.y == step_cell.y) {
		
	} else {
    if (oPlayer.selected_character == id) {
			audio_play_sound(soundStep, 11, false)
		}
		x = step_cell.x
		y = step_cell.y
	}
}
alarm[0] = 0.5 * room_speed