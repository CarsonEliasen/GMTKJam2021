// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_tutorial_text(){
	//Key
	draw_set_halign(fa_left)
	var xWrite = room_width/15
	var yWrite = room_height/6
	var vSpace = 20
	draw_text(xWrite, yWrite + vSpace*0, "Cell Key:")
	draw_set_color(c_lime)
	draw_text(xWrite, yWrite + vSpace*1,  "1-5    - Your Characters")
	draw_set_color(c_yellow)
	draw_text(xWrite, yWrite + vSpace*2,  "!      - Stranger, can join your party (max 5)")
	draw_set_color(c_orange)
	draw_text(xWrite, yWrite + vSpace*3,  "[]     - Portal, get party here to advance to next level")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*4,  ": :    - Alchemy Station, can spend esscence here to craft potions")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*5,  "/ /    - Altar, can spend esscence here to craft permanent buff")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*6,  "( )    - Armory, can spend esscence here to craft armor")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*7,  "| |    - Forge, can spend esscence here to craft weapons")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*8,  "{ }    - Spell desk, can spend esscence here to craft spells")
	draw_set_color(c_white)
	draw_text(xWrite, yWrite + vSpace*9,  "#      - Wall")
	draw_set_color(c_red)
	draw_text(xWrite, yWrite + vSpace*10, "O      - Orc, average enemy")
	draw_set_color(c_red)
	draw_text(xWrite, yWrite + vSpace*11, "T      - Troll, low damage but high health")
	draw_set_color(c_red)
	draw_text(xWrite, yWrite + vSpace*12, "S      - Skeleton, high damage but low health")
	draw_set_color(c_red)
	draw_text(xWrite, yWrite + vSpace*13, "G      - Ghost, invulnerable but slow")
	
	//Controls
	draw_set_halign(fa_left)
	var xWrite = room_width/2 + 50
	var yWrite = room_height/6
	var vSpace = 20
	draw_set_color(c_white)
	draw_text(xWrite, yWrite + vSpace*0, "Controls:")
	draw_set_color(c_lime)
	draw_text(xWrite, yWrite + vSpace*1, "Left Click - Move selelcted character and interact/attack")
	draw_set_color(c_lime)
	draw_text(xWrite, yWrite + vSpace*2, "1-5 - Select respective party member")
	draw_set_color(c_orange)
	draw_text(xWrite, yWrite + vSpace*3, "Tab - If all party members are at the portal, advance to next level")
	draw_text(xWrite + vSpace * 2, yWrite + vSpace*4, "Note: one party member must be on top of the portal")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*5, "Q - Selected character uses their consumable item")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*6, "W - Selected character uses their spell")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*7, "A,S - Crafting station essence use")
	draw_set_color(c_aqua)
	draw_text(xWrite, yWrite + vSpace*8, "Shift - Submit craft")
	
	draw_set_color(c_white)
	draw_text(xWrite+40, yWrite + vSpace*10, "Mechanics:")
	draw_set_color(c_red)
	draw_text(xWrite+40, yWrite + vSpace*11, "A character's strength affects how much health they have")
	draw_set_color(c_lime)
	draw_text(xWrite+40, yWrite + vSpace*12, "A character's agillity affects how fast they can act")
	draw_set_color(c_aqua)
	draw_text(xWrite+40, yWrite + vSpace*13, "A character's intelligence affects how fast they can cast spells")
}