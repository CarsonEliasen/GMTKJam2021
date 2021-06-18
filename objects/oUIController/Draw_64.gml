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
		//Initialize Useful Vars
		var barWidth = width * .9
		var barHeight = height * .05
		var startY = ((height-barHeight)/5 * i) + (height-barHeight*5)/5
		var startX = (width-barWidth)/2
		//Draw Charcter HP
		drawHP(member, i, startX, startY, barWidth, barHeight)
		//Draw Slots
		drawSlots(member, i, startX, startY, barWidth, barHeight)
		//Draw Name
		drawStats(member, i, startX, startY, barWidth)
	}
}

// Draw current essence
drawEssence(width, height)