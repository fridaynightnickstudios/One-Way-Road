if (application_surface != -1)
{
	//add any shader here

    draw_surface_stretched(
        application_surface,
        0, 0,
        display_get_gui_width(),
        display_get_gui_height()
    );

    shader_reset();
}

