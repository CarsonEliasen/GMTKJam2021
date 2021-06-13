// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_attack(character){
	show_debug_message("attack")
	audio_play_sound(soundAttackF, 11, false)
	character.attack_target.hp -= damage
	if (character.attack_target.hp <= 0) {
		character.attack_target = noone
	}
}