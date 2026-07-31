confirm_key = ord("E");
up_key = vk_up;
down_key = vk_down;
max_input_delay = 5;
input_delay = max_input_delay;

margin = 16;
padding = 8;
width = display_get_width() - margin * 2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - margin;

text_font = OneWayRoad2;
text_color = c_white;
text_speed = 0.5;
text_x = padding;
text_y = padding * 3;
text_width = width - padding * 2;

portrait_x = padding;
portrait_y = padding;

speaker_x = padding;
speaker_y = 0;
speaker_font = OneWayRoad2;
speaker_color = c_white;

option_x = padding;
option_y = padding * -6;
option_spacing = 50;
option_selection_indent = 24;
option_width = 300;
option_height = 40;
option_text_x = 10;
option_text_color = c_white;

actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;

portrait_sprite = -1;
portrait_width = sprite_get_width(sVictorTalking);
portrait_height = sprite_get_height(sVictorTalking);
portrait_side = PORTRAIT_SIDE.LEFT;

enum PORTRAIT_SIDE {
	LEFT,
	RIGHT
}

speaker_name = "";
speaker_width = sprite_get_width(sName);
speaker_height = sprite_get_height(sName);

options = [];
current_option = 0;
option_count = 0;

setTopic = function(topic) {
	actions = global.topics[$ topic];
	current_action = -1;
	
	next();
}

next = function() {
	current_action++;
	if (current_action >= array_length(actions)) {
		instance_destroy();
	}
	else {
		actions[current_action].act(id);
	}
}

setText = function(newText) {
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}