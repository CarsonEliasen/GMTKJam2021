// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crafting_craft_armor(crafter, character, xp){
	oPlayer.xp = oPlayer.xp - xp
	var armor = instance_create_layer(character.x, character.y, layer_get_id("Characters"), oArmor)
	armor.defense_bonus = xp / 100
	character.armor_slot = armor
}