for (var i = 1; i <= 5; i++) {
	if (keyboard_check_released(ord(string(i)))) {
		if (party[i - 1] != noone) {
			selected_character = party[i - 1]
			oCamera.follow = selected_character
		}
	}
}

if (mouse_check_button_released(mb_left)) {
	selected_character.move_to_cell = instance_nearest(oCursor.x, oCursor.y, oCell)
}
if (selected_character.move_to_cell != noone) {
	if (selected_character.move_to_cell != instance_nearest(x, y, oCell)) {
		move_character(selected_character)
	}
}