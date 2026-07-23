// Camera Configuration

global.Camera = {
    width  : 1920,
    height : 1080,
    scale  : 1,
    zoom   : 1.0,

    x      : 0,
    y      : 0,

    target : noone
};

// Create view camera
global.Camera.id = camera_create_view(
    0, 0,
    global.Camera.width,
    global.Camera.height,
    0,
    global.Camera.target,
    -1,
    -1,
    global.Camera.width,
    global.Camera.height
);

view_enabled = true;
view_visible[0] = true;
view_camera[0] = global.Camera.id;

// surface scale
surface_resize(
    application_surface,
    global.Camera.width  * global.Camera.scale,
    global.Camera.height * global.Camera.scale
);