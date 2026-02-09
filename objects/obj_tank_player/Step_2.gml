SKIP_IF_PAUSED

if hitpoints <= 0 {
    hitpoints = 0;
    visible = false;
    var _facingDirectionToPass = facing_direction;
    instance_create_depth(x, y, depth, obj_tank_player_destroyed, {facing_direction : _facingDirectionToPass });
};