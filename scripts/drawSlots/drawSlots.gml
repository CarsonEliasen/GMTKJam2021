// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawSlots(member, i, startX, startY, barWidth, barHeight){
	draw_set_font(fSmall)
	var slotWidth = barWidth/4
	draw_set_color(c_black)
	draw_set_alpha(.5)
	draw_rectangle(startX, startY + barHeight+4, startX + slotWidth, startY + barHeight + barHeight/2+4, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_rectangle(startX, startY + barHeight+4, startX + slotWidth, startY + barHeight + barHeight/2+4, true)
	if(instance_exists(member.consumable_slot)){
		draw_text(startX + slotWidth/2, startY + barHeight+4+barHeight/4, "C:" + string(round(member.consumable_slot.hp_restore)))
	}
	draw_set_color(c_black)
	draw_set_alpha(.5)
	draw_rectangle(startX + slotWidth+1, startY + barHeight+4, startX + slotWidth*2, startY + barHeight + barHeight/2+4, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	if(instance_exists(member.magic_slot)){
		var cd_progress = (member.magic_slot.spellCD - member.currSpellCD)/member.magic_slot.spellCD
		if (cd_progress < 1) {
			draw_set_alpha(cd_progress / 2)
		}
		else {
			draw_set_alpha(1)
		}
		draw_text(startX + slotWidth/2 * 3, startY + barHeight+4+barHeight/4, "S:" + string(member.magic_slot.spellDamage))
		draw_set_alpha(1)
	}
	draw_rectangle(startX + slotWidth+1, startY + barHeight+4, startX + slotWidth*2, startY + barHeight + barHeight/2+4, true)
	draw_set_color(c_black)
	draw_set_alpha(.5)
	draw_rectangle(startX + slotWidth*2+1, startY + barHeight+4, startX + slotWidth*3, startY + barHeight + barHeight/2+4, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	if(instance_exists(member.weapon_slot)){
		draw_text(startX + slotWidth/2 * 5, startY + barHeight+4+barHeight/4, "W:" + string(round(member.weapon_slot.damage_bonus)))
	}
	draw_rectangle(startX + slotWidth*2+1, startY + barHeight+4, startX + slotWidth*3, startY + barHeight + barHeight/2+4, true)
	draw_set_color(c_black)
	draw_set_alpha(.5)
	draw_rectangle(startX + slotWidth*3+1, startY + barHeight+4, startX + slotWidth*4, startY + barHeight + barHeight/2+4, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	if(instance_exists(member.armor_slot)){
		draw_text(startX + slotWidth/2 * 7, startY + barHeight+4+barHeight/4, "A:" + string(round(member.armor_slot.defense_bonus)))
	}
	draw_rectangle(startX + slotWidth*3+1, startY + barHeight+4, startX + slotWidth*4, startY + barHeight + barHeight/2+4, true)
	draw_set_font(fDef)
}