// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crafting_craft_weapon(crafter, character, xp){
	oPlayer.xp = oPlayer.xp - xp
	var weapon = instance_create_layer(character.x, character.y, layer_get_id("Characters"), oWeapon)
	weapon.damage_bonus = 1
	character.weapon_slot = weapon
}