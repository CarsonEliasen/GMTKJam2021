// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawStats(member, i, startX, startY, barWidth){
	var name = string(i+1)
	name += ":"
	draw_set_color(c_black)
	draw_set_alpha(.75)
	if(oPlayer.selected_character == member){
		draw_set_color(c_purple)	
	}
	draw_rectangle(startX-3, startY-string_height(name)*1.25 - 3, startX + barWidth+3, startY-4, false)
	draw_set_alpha(1)
	draw_set_color(c_black)
	draw_rectangle(startX-3, startY-string_height(name)*1.25 - 3, startX + barWidth+3, startY-4, true)
	draw_rectangle(startX-4, startY-string_height(name)*1.25 - 4, startX + barWidth+4, startY-5, true)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_text(startX, startY-16, name)
	var str = string(member.base_strength)
	var agl = string(member.base_agility)
	var int = string(member.base_intelligence)
	if(instance_exists(member.buff_slot)){
		str += "+" + string(round(member.buff_slot.strength_bonus))
		agl += "+" + string(round(member.buff_slot.agility_bonus))
		int += "+" + string(round(member.buff_slot.intelligence_bonus))
	}
	draw_set_color(c_red)
	draw_text(startX+string_width(name)*2, startY-16, str)
	draw_set_color(c_lime)
	draw_text(startX+string_width(name)*4, startY-16, agl)
	draw_set_color(c_aqua)
	draw_text(startX+string_width(name)*6, startY-16, int)
}