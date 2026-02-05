image_speed = 0;

SKIP_IF_PAUSED

if is_spawning {
    image_speed = 1;
    
    if frames_until_spawn_finished > 0 {
        frames_until_spawn_finished--;
    }
    else {
        instance_create_depth(x, y, depth, obj_tank_enemy);
        is_spawning = false;
        frames_until_next_spawning = frames_between_spawns;
    };
}
else {
    image_speed = 0.3;
    
    if frames_until_next_spawning > 0 {
        frames_until_next_spawning--;
    }
    else {
        is_spawning = true;
        frames_until_spawn_finished = spawning_length_frames;
    };
};
