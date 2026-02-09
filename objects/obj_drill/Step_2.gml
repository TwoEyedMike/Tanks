SKIP_IF_PAUSED

if place_meeting(x, y, obj_tank_player) {
    instance_destroy();
    obj_tank_player.drill_powerup_frames_left = obj_tank_player.drill_powerup_frame_duration;
};