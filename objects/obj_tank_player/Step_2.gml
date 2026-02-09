SKIP_IF_PAUSED

if hitpoints <= 0 {
        
    hitpoints = 0;
    visible = false;
    var _facingDirectionToPass = facing_direction;
    if !instance_exists(obj_tank_player_destroyed) {
        instance_create_depth(x, y, depth, obj_tank_player_destroyed, {facing_direction : _facingDirectionToPass });
    };
};

if raft_powerup_frames_left > 0 {
    raft_powerup_frames_left--
    if place_meeting(x, y, obj_collision_water) && raft_powerup_frames_left == 0 {
        raft_powerup_frames_left = 1;
    };
};

shield_powerup_frames_left = max(shield_powerup_frames_left-1, 0)

drill_powerup_frames_left = max(drill_powerup_frames_left-1, 0)
