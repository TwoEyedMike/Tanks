image_speed = 0;

SKIP_IF_PAUSED

image_speed = 0.3;

is_destroying_self_after_end_step = false;

x += lengthdir_x(movement_speed, facing_direction);
y += lengthdir_y(movement_speed, facing_direction);

if place_meeting(x, y, obj_collidable) {
    is_destroying_self_after_end_step = true;
};

if place_meeting(x, y, obj_tank_player) {
    if obj_tank_player.shield_powerup_frames_left <= 0 {
        obj_tank_player.hitpoints -= damage;
    };    
    is_destroying_self_after_end_step = true;
};

if is_destroying_self_after_end_step {
    instance_destroy();
};