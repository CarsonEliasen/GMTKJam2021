var drawCol = c_maroon
var append = "|"
if(alarm[0] > alarmTime*room_speed/3*2){
	append = "."
	drawCol = c_red
	
} else if(alarm[0] > alarmTime*room_speed/3){
	append = ":"
	drawCol = c_red
}
drawBlockText("S"+append, drawCol)