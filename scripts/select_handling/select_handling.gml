function select_handling(){
	var clicked_cell = instance_nearest(oCursor.x, oCursor.y, oCell)
	var nearest_stranger = instance_nearest(clicked_cell.x, clicked_cell.y, oStrangerCharacter)
	var nearest_monster = instance_nearest(clicked_cell.x, clicked_cell.y, oParentMonster)
	if(nearest_monster == oGhost){
		nearest_monster = noone	
	}
	if (position_meeting(clicked_cell.x, clicked_cell.y, oWall)) {
		audio_play_sound(soundClick1, 11, false)
	} else if (nearest_stranger != noone and clicked_cell.x == nearest_stranger.x and clicked_cell.y == nearest_stranger.y) {
		show_debug_message("clicked on a stranger")
		selected_character.recruit_target = nearest_stranger
		selected_character.attack_target = noone
	} 
	else if (nearest_monster != noone and clicked_cell.x == nearest_monster.x and clicked_cell.y == nearest_monster.y) {
		show_debug_message("clicked on a monster")
		selected_character.attack_target = nearest_monster
		selected_character.recruit_target = noone
	}
	else {
		selected_character.attack_target = noone
		selected_character.recruit_target = noone
		move_character(selected_character, clicked_cell)
	}
}