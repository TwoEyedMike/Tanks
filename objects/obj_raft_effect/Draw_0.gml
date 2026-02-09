if obj_tank_player.visible {
    
    
    var _angle = draw_angle;
    var _angleIncrement = 360 / draw_count;
    var _alpha;
    
    if obj_tank_player.raft_powerup_frames_left = 0 {
        exit;
    }
    if obj_tank_player.raft_powerup_frames_left <= obj_tank_player.raft_powerup_frame_duration/4 {
        _alpha = 0.5;
    }
    if obj_tank_player.raft_powerup_frames_left > obj_tank_player.raft_powerup_frame_duration/4 {
        _alpha = 1;
    };
    
    repeat(draw_count) {
        var _x = obj_tank_player.x + lengthdir_x(distance, _angle)
        var _y = obj_tank_player.y + lengthdir_y(distance, _angle)    
        
        draw_sprite_ext(sprite_index, image_index, _x, _y, 1, 1, 0, c_white, _alpha);
        _angle += _angleIncrement;
    };

};