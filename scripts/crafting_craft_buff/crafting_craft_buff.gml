// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crafting_craft_buff(crafter, character, xp){
	oPlayer.xp = oPlayer.xp - xp
	var agility_bonus = random(10)
	var intelligence_bonus = random(10)
	var strength_bonus = random(10)
	var bonus_total = agility_bonus + intelligence_bonus + strength_bonus
	agility_bonus /= bonus_total
	intelligence_bonus /= bonus_total
	strength_bonus /= bonus_total
	agility_bonus *= xp / 200
	intelligence_bonus *= xp / 200
	strength_bonus *= xp / 200
	var buff = instance_create_layer(character.x, character.y, layer_get_id("Characters"), oBuff)
	buff.agility_bonus = agility_bonus
	buff.intelligence_bonus = intelligence_bonus
	buff.strength_bonus = strength_bonus
	character.buff_slot = buff
}