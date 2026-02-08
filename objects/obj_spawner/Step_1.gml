image_speed = 0;

SKIP_IF_PAUSED

if is_spawning {
    image_speed = 1;
    
    if frames_until_spawn_finished > 0 {
        frames_until_spawn_finished--;
    }
    else {
        if !place_meeting(x, y, obj_tank) {
            instance_create_depth(x, y, depth, obj_tank_enemy);
            is_spawning = false;
            frames_until_next_spawning = frames_between_spawns;
        };
    };
}
else {
    image_speed = 0.3;
    
    if global.enemy_count > 0 && instance_number(obj_tank_enemy) < global.max_active_enemies {
        if frames_until_next_spawning > 0 {
            frames_until_next_spawning--;
        }
        else {
            is_spawning = true;
            frames_until_spawn_finished = spawning_length_frames;
            global.enemy_count--;
        };
    };    
};
