//Width
var width = window_get_width()/6
var height = window_get_height()

// Draw BG
draw_set_alpha(.5)
draw_set_color(c_dkgray)
draw_rectangle(0,
			   0,
			   width,
			   height, false)
draw_set_alpha(1)
draw_set_color(c_white)


// Draw Character Stats
var party = oPlayer.party
for(var i = 0; i < array_length(party); i++){
	var member = party[i]
	if(member != -4){
		//Draw Charcter HP
		//var currHP = hp/hpMax
		var currHP = member.hp / member.strength
		var barWidth = width * .9
		var barHieght = height * .05
		var startY = ((height-barHieght)/5 * i) + (height-barHieght*5)/5
		var startX = (width-barWidth)/2
		draw_set_color(c_white)
		draw_rectangle(startX, startY, startX + barWidth, startY + barHieght, true)
		draw_rectangle(startX-1, startY-1, startX + barWidth+1, startY + barHieght+1, true)
		draw_rectangle(startX-2, startY-2, startX + barWidth+2, startY + barHieght+2, true)
		draw_rectangle(startX-3, startY-3, startX + barWidth+3, startY + barHieght+3, true)
		draw_set_color(c_green)
		draw_rectangle(startX, startY, startX + barWidth*currHP, startY + barHieght, false)
		draw_set_color(c_white)
		
		//Draw Slots
		draw_set_font(fSmall)
		var slotWidth = barWidth/4
		draw_set_color(c_black)
		draw_set_alpha(.5)
		draw_rectangle(startX, startY + barHieght+4, startX + slotWidth, startY + barHieght + barHieght/2+4, false)
		draw_set_color(c_white)
		draw_set_alpha(1)
		draw_rectangle(startX, startY + barHieght+4, startX + slotWidth, startY + barHieght + barHieght/2+4, true)
		if(instance_exists(member.consumable_slot)){
			draw_text(startX + slotWidth/2, startY + barHieght+4+barHieght/4, "C:" + string(round(member.consumable_slot.hp_restore)))
		}
		draw_set_color(c_black)
		draw_set_alpha(.5)
		draw_rectangle(startX + slotWidth+1, startY + barHieght+4, startX + slotWidth*2, startY + barHieght + barHieght/2+4, false)
		draw_set_color(c_white)
		draw_set_alpha(1)
		if(instance_exists(member.magic_slot)){
			draw_text(startX + slotWidth/2 * 3, startY + barHieght+4+barHieght/4, "S:" + string(member.magic_slot))
		}
		draw_rectangle(startX + slotWidth+1, startY + barHieght+4, startX + slotWidth*2, startY + barHieght + barHieght/2+4, true)
		draw_set_color(c_black)
		draw_set_alpha(.5)
		draw_rectangle(startX + slotWidth*2+1, startY + barHieght+4, startX + slotWidth*3, startY + barHieght + barHieght/2+4, false)
		draw_set_color(c_white)
		draw_set_alpha(1)
		if(instance_exists(member.weapon_slot)){
			draw_text(startX + slotWidth/2 * 5, startY + barHieght+4+barHieght/4, "W:" + string(round(member.weapon_slot.damage_bonus)))
		}
		draw_rectangle(startX + slotWidth*2+1, startY + barHieght+4, startX + slotWidth*3, startY + barHieght + barHieght/2+4, true)
		draw_set_color(c_black)
		draw_set_alpha(.5)
		draw_rectangle(startX + slotWidth*3+1, startY + barHieght+4, startX + slotWidth*4, startY + barHieght + barHieght/2+4, false)
		draw_set_color(c_white)
		draw_set_alpha(1)
		if(instance_exists(member.armor_slot)){
			draw_text(startX + slotWidth/2 * 7, startY + barHieght+4+barHieght/4, "A:" + string(round(member.armor_slot.defense_bonus)))
		}
		draw_rectangle(startX + slotWidth*3+1, startY + barHieght+4, startX + slotWidth*4, startY + barHieght + barHieght/2+4, true)
		draw_set_font(fDef)
		//Draw Name
		drawStats(member, i, startX, startY, barWidth)
	}
}

// Draw current XP
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_fuchsia)
draw_rectangle(0, 0, width, height * 0.1, true)
draw_set_color(c_white)
draw_text(width / 2, height * 0.1 / 2, string(oPlayer.xp))