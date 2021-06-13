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