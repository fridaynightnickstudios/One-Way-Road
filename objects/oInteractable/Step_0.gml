if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, oVictor)) {
	startDialogue("Equipped Key")
	instance_destroy();
	global.key_equipped = true;
}