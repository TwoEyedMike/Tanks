damage = 10;

movement_speed = 4;

/*Bullet should not need to set its own direction, as it is only created by a tank that passes its current direction into this bullet
but not having variable definitions in the create event makes Game Maker unhappy when error-checking, so we'll make it happy*/
if !variable_instance_exists(self, "facing_direction") {
    facing_direction = 0;
};

is_destroying_self_after_end_step = false;