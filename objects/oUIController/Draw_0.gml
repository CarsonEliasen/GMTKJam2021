/*
//Get Zeros
var xZero = oCamera.x-oCamera.camWidth/2
var xMax = oCamera.x-oCamera.camWidth/3
var yZero = oCamera.y-oCamera.camHeight/2
var yMax = oCamera.y+oCamera.camHeight/2
var width = xMax-xZero
var hieght = yMax - yZero

//Draw GUI BG
draw_set_alpha(.5)
draw_set_color(c_dkgray)
draw_rectangle(xZero,
			   yZero,
			   xMax,
			   yMax, false)
draw_set_alpha(1)
draw_set_color(c_white)

//DrawPlayerStats
var party = oPlayer.party
for(var i = 0; i < array_length(party); i++){
	var member = party[i]
	//if(member != -4){
		//Draw Charcter HP
		var barWidth = width * .8
		var barHieght = hieght * .05
		var startY = (hieght * .2) * i
		var startX = xZero + (width-barWidth)/2
		draw_rectangle(startX, startY, startX + barWidth, startY + barHieght, false)
	//}
}