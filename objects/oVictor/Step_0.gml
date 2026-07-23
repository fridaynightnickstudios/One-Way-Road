if (instance_exists(oTextbox)) {
	sprite_index = idle_sprites[dir div 90]
	exit;
}

var _inputLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _inputRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _inputUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _inputDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _inputX = _inputRight - _inputLeft;
var _inputY = _inputDown - _inputUp;
var _inputSprint = keyboard_check(vk_shift);

if (!_inputSprint) {
	spd = walkSpeed;
} else {
	spd = runSpeed;
}

var _moving  = (_inputX != 0 or _inputY != 0)
if _moving
{
  dir = point_direction(0,0, _inputX, _inputY)
  sprite_index = walk_sprites[dir div 90 ]
} else sprite_index = idle_sprites[dir div 90 ]

move_x = lengthdir_x(spd, dir) * _moving;
move_y = lengthdir_y(spd, dir) * _moving;

move_and_collide(move_x, move_y, collision_list)