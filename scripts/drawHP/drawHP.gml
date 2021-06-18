// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawHP(member, i, startX, startY, barWidth, barHeight){
	var currHP = member.hp / member.strength
	draw_set_color(c_white)
	draw_rectangle(startX, startY, startX + barWidth, startY + barHeight, true)
	draw_rectangle(startX-1, startY-1, startX + barWidth+1, startY + barHeight+1, true)
	draw_rectangle(startX-2, startY-2, startX + barWidth+2, startY + barHeight+2, true)
	draw_rectangle(startX-3, startY-3, startX + barWidth+3, startY + barHeight+3, true)
	draw_set_color(c_green)
	draw_rectangle(startX, startY, startX + barWidth*currHP, startY + barHeight, false)
	draw_set_color(c_white)
}