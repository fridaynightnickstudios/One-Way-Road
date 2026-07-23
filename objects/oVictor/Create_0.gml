runSpeed = 8;
walkSpeed = 5;
spd = 7;

enum DIR
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR.RIGHT] = sVictorIdleRight;
idle_sprites[DIR.UP] = sVictorIdleUp;
idle_sprites[DIR.LEFT] = sVictorIdleLeft;
idle_sprites[DIR.DOWN] = sVictorIdleDown;

walk_sprites = [];
walk_sprites[DIR.RIGHT] = sVictorWalkingRight;
walk_sprites[DIR.UP] = sVictorWalkingUp;
walk_sprites[DIR.LEFT] = sVictorWalkingLeft;
walk_sprites[DIR.DOWN] = sVictorWalkingDown;

move_x = 0;
move_y = 0;

dir = 0;

global.Camera.target = self
collision_list = [oCollision, oCollisionVisible]