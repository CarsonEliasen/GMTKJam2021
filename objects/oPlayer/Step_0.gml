for (var i = 0; i < 5; i++) {
	if (input.in[IN.one + i]) {
		if (party[i] != noone) {
			selected_character.is_selected = false
			selected_character = party[i]
			selected_character.is_selected = true
			oCamera.x = selected_character.x
			oCamera.y = selected_character.y
			audio_play_sound(soundCharSwitch, 11, false)
		}
	}
}
if (input.in[IN.select] and !position_meeting(oCursor.x, oCursor.y, oFog) and !position_meeting(oCursor.x, oCursor.y, oButtonMaster)) {
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
if (input.in[IN.consume]) {
	if (selected_character.consumable_slot != noone) {
		audio_play_sound(soundBuff, 11, false)
		selected_character.hp = selected_character.hp + selected_character.consumable_slot.hp_restore
		selected_character.consumable_slot = noone
	}
}