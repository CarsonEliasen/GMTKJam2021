// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function consume_item(charcter){
	if (character.consumable_slot != noone) {
		audio_play_sound(soundBuff, 11, false)
		character.hp = character.hp + character.consumable_slot.hp_restore
		character.consumable_slot = noone
	}
}