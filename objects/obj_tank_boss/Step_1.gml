

image_speed = 0;

SKIP_IF_PAUSED

is_colliding_with_tank = false;

var _arrayIndex;
for (_arrayIndex = 0; _arrayIndex < array_length(spawn_thresholds); _arrayIndex++) {
    var _threshold = spawn_thresholds[_arrayIndex];
    
    if hitpoints <= _threshold.hitpoints && !_threshold.is_spawned {
        _threshold.is_spawned = true;
        global.enemy_count = enemy_spawn_amount;
    };
};