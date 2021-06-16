// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
	var inputs = array_create(10, 0)
	//released is default for checking if a button was pressed
	//Select
	inputs[0] = mouse_check_button_released(mb_left)
	//Cycle
	inputs[1] = mouse_check_button_released(mb_right)
	//Select Characters
	inputs[2] = keyboard_check_released(ord("1"))
	inputs[3] = keyboard_check_released(ord("2"))
	inputs[4] = keyboard_check_released(ord("3"))
	inputs[5] = keyboard_check_released(ord("4"))
	inputs[6] = keyboard_check_released(ord("5"))
	//Consumable
	inputs[7] = keyboard_check_released(ord("Q"))
	//Spell
	inputs[8] = keyboard_check_released(ord("W"))
	//Key Confirm
	inputs[9] = keyboard_check_released(vk_tab)
	
	return inputs
}