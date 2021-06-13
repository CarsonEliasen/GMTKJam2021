// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crafting_craft_spell(crafter, character, xp){
	oPlayer.xp = oPlayer.xp - xp
	var spell = instance_create_layer(character.x, character.y, layer_get_id("Characters"), oSpell)
	spell.spellDamage = ceil(xp / 50)
	spell.spellCD = max(3*room_speed, floor(xp/100 * room_speed))
	character.magic_slot = spell
}