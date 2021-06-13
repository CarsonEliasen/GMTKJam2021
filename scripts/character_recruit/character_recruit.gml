// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_recruit(character){
	show_debug_message("recruit")
	for (var i = 1; i <= array_length(oPlayer.party); i++) {
		if (oPlayer.party[i - 1] == noone) {
			var new_character = instance_create_layer(
				character.recruit_target.x,
				character.recruit_target.y,
				layer_get_id("Characters"),
				oCharacter
			)
			new_character.character_id = i
			oPlayer.party[i - 1] = new_character
			instance_destroy(character.recruit_target)
			character.recruit_target = noone
			break
		}
	}
}