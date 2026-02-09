is_destroying_self_after_end_step = false;

x += lengthdir_x(movement_speed, facing_direction);
y += lengthdir_y(movement_speed, facing_direction);

if place_meeting(x, y, obj_collidable) {
    is_destroying_self_after_end_step = true;
};


if is_destroying_self_after_end_step {
    instance_destroy();
};