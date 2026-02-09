SKIP_IF_PAUSED

if obj_tank_player.drill_powerup_frames_left > 0 {
    var _originalX = obj_tank_player.x;
    var _originalY = obj_tank_player.y;
    obj_tank_player.x += lengthdir_x(1, obj_tank_player.facing_direction)
    obj_tank_player.y += lengthdir_y(1, obj_tank_player.facing_direction) 
    
    if place_meeting(x, y, obj_tank_player) {
        instance_destroy(self);
        
        if !audio_is_playing(sfx_drill) {
            audio_play_sound(sfx_drill, 1, false);
        };
    };
    
    
    obj_tank_player.x = _originalX;
    obj_tank_player.y = _originalY;
};