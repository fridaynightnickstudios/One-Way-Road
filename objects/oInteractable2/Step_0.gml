if (!global.key_equipped) {
	if (keyboard_check_pressed(ord("E")) && (place_meeting(x, y, oVictor))) {
		startDialogue("Example");
	}
} else {
	if (keyboard_check_pressed(ord("E")) && (place_meeting(x, y, oVictor))) {
		room_goto(Track);
	}
}