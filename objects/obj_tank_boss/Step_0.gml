SKIP_IF_PAUSED

if wait_frames_remaining == 0 {
    do_pathfinding();
    wait_frames_remaining = -1;
}

if wait_frames_remaining > 0 {
    wait_frames_remaining--;
};

if movement_period_frames_remaining == 0 {
    wait_frames_remaining = irandom_range(min_wait_frames, max_wait_frames);
    movement_period_frames_remaining = -1;
};

if movement_period_frames_remaining > 0 { 
    var _redoPathfinding = false;
    
    var _projectedPositionX = x + lengthdir_x(movement_speed, facing_direction);
    var _projectedPositionY = y + lengthdir_y(movement_speed, facing_direction);
    
    if !place_meeting(_projectedPositionX, _projectedPositionY, [obj_tank] ) {
        x = _projectedPositionX;
        y = _projectedPositionY;
    };
    
    while place_meeting(x, y, obj_objective) {
        x -= lengthdir_x(movement_speed, facing_direction);
        y -= lengthdir_y(movement_speed, facing_direction);
    };
      
    while place_meeting(x, y, [obj_collidable, obj_collision_water]) { 
        _redoPathfinding = true;
        x -= lengthdir_x(movement_speed, facing_direction);
        y -= lengthdir_y(movement_speed, facing_direction);
    };
    
    image_speed = 1;
    movement_period_frames_remaining--;
    
    
    if _redoPathfinding {
        movement_period_frames_remaining = 0;
    };
};

if radial_shot_timer_frames % radial_shot_frequency = 0 {
    shoot_ring(radial_shot_density);
}

radial_shot_timer_frames++;



if hitpoints <= 0 {
    instance_destroy(self);
};