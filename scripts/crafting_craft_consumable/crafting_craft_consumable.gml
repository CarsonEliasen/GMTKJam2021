// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crafting_craft_consumable(crafter, character, xp) {
	oPlayer.xp = oPlayer.xp - xp
	var consumable = instance_create_layer(character.x, character.y, layer_get_id("Characters"), oConsumable)
	consumable.hp_restore = xp / 50
	character.consumable_slot = consumable
}