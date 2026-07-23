if (instance_exists(global.Camera.target))
{	
	global.Camera.x = lerp(global.Camera.x,global.Camera.target.x,0.1);
    global.Camera.y = lerp(global.Camera.y,global.Camera.target.y,0.1);
}

var cam = global.Camera.id;

camera_set_view_pos(cam,
    global.Camera.x - global.Camera.width * 0.5,
    global.Camera.y - global.Camera.height * 0.5
);