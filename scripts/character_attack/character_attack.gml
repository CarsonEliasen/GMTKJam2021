// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_attack(character){
	show_debug_message("attack")
	audio_play_sound(soundAttackF, 11, false)
	character.attack_target.hp -= damage
	if (character.attack_target.hp <= 0) {
		character.attack_target = noone
		move_target_cell = noone
		instance_destroy(move_target)
		move_target = noone
		move_queue = ds_queue_create()
	}
}