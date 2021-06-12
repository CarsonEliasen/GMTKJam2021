for (var i = 1; i <= 5; i++) {
	if (keyboard_check_released(ord(string(i)))) {
		if (party[i - 1] != noone) {
			selected_character.is_selected = false
			selected_character = party[i - 1]
			selected_character.is_selected = true
			oCamera.follow = selected_character
		}
	}
}
if (mouse_check_button_released(mb_left)) {
	var clicked_cell = instance_nearest(oCursor.x, oCursor.y, oCell)
	var nearest_stranger = instance_nearest(clicked_cell.x, clicked_cell.y, oStrangerCharacter)
	var nearest_wall = instance_nearest(clicked_cell.x, clicked_cell.y, oWall)
	if (nearest_stranger != noone and nearest_stranger.x == clicked_cell.x and nearest_stranger.y == clicked_cell.y) {
		var stranger = instance_nearest(clicked_cell.x, clicked_cell.y, oStrangerCharacter)
		var stranger_dist_x = stranger.x - selected_character.x
		var stranger_dist_y = stranger.y - selected_character.y
		var cell_size = clicked_cell.sprite_height
		if (stranger_dist_x <= cell_size and stranger_dist_y <= cell_size) {
			for (var i = 1; i <= array_length(party); i++) {
				if (party[i - 1] == noone) {
					var new_character = instance_create_layer(stranger.x, stranger.y, layer_get_id("Characters"), oCharacter)
					new_character.character_id = i
					party[i - 1] = new_character
					instance_destroy(stranger)
					break
				}
			}
		}
	} else if (nearest_wall != noone and nearest_wall.x == clicked_cell.x and nearest_wall.y == clicked_cell.y) {
		
	} 
	else {
		move_character(selected_character, clicked_cell)
	}
}