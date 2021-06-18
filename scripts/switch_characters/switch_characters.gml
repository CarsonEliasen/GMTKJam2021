// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function switch_characters(PlayerObject){
	for (var i = 0; i < 5; i++) {
		if (input.in[IN.one + i]) {
			if (PlayerObject.party[i] != noone) {
				PlayerObject.selected_character.is_selected = false
				PlayerObject.selected_character = party[i]
				PlayerObject.selected_character.is_selected = true
				oCamera.x = PlayerObject.selected_character.x
				oCamera.y = PlayerObject.selected_character.y
				audio_play_sound(soundCharSwitch, 11, false)
			}
		}
	}
}