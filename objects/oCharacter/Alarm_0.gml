if (!ds_queue_empty(move_queue)) {
	var step_cell = ds_queue_dequeue(move_queue)
	if (position_meeting(step_cell.x, step_cell.y, oCellOccupier)) {
		move_character(id, move_target_cell)
		step_cell = ds_queue_dequeue(move_queue)
	}
	if (!is_undefined(step_cell)) {
		x = step_cell.x
		y = step_cell.y
		if (step_cell == move_target_cell) {
			move_target_cell = noone
			instance_destroy(move_target)
			move_target = noone
			move_queue = ds_queue_create()
		}
	}
	audio_play_sound(soundStep, 11, false)
}
alarm[0] = 1 * room_speed