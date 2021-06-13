event_inherited()
if (doAction or keyboard_check_released(vk_shift)) {
	crafting_craft_consumable(crafter, character, essence)
	essence = oPlayer.xp
}