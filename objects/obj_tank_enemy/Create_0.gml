//Initialize various gameplay variables
facing_direction = CARDINAL_DIRECTION.RIGHT; //Not using built-in "direction" var as we are not utilizing GM's built-in movement functions
movement_speed = 1; //How many pixels to move per frame while holding a movement input
image_speed = 0; //Image speed 0 unless set to 1 while moving to make tank treads anim work.
hitpoints = 40; 

//AI-Related Variables

//Min and max number of frames the tank can choose to move for in a given "movement period"
min_movement_period_frames = 2;
max_movement_period_frames = 30;

//Min and max number of frames the tank can choose to wait for inbetween "movement periods"
min_wait_frames = 5;
max_wait_frames = 45;

movement_period_frames_remaining = 0;
wait_frames_remaining = 1

PossibleDirectionChoice = function(_direction, _projectedX, _projectedY) constructor {
    direction = _direction;
    x = _projectedX;
    y = _projectedY;
};

do_pathfinding = function() {
    var _possibleDirectionList = ds_list_create();
    var _angleIncrement = 90;
    var _currentAngle = 0;
    
    //Check all 4 possible directions to see if they're valid options. Blocked is invalid, so is directly behind (to prevent back and forth pathfinding)
    repeat(4) {
        var _projectedPositionX = x + lengthdir_x(movement_speed, _currentAngle);
        var _projectedPositionY = y + lengthdir_y(movement_speed, _currentAngle);
        
        if (abs(facing_direction - _currentAngle) != 180) && !place_meeting(_projectedPositionX, _projectedPositionY, [obj_collidable, obj_collision_water, obj_tank_enemy]) {
            ds_list_add(_possibleDirectionList, new PossibleDirectionChoice(_currentAngle, _projectedPositionX, _projectedPositionY));
        };
        
        _currentAngle += _angleIncrement;
    };
    
    //Find which is closer, the player or the objective
    var _targetInstance;
    if distance_to_object(obj_tank_player) < distance_to_object(obj_objective) {
        _targetInstance = obj_tank_player;
    }
    else {
        _targetInstance = obj_objective;
    }

    //Test all possible directions the tank can take and choose the best one.
    if !ds_list_empty(_possibleDirectionList) {
        var _bestDistance = 99999; //Start with this huge distance as a placeholder for the distance comparison to work properly.
        
        for (var _listIndex = 0; _listIndex < ds_list_size(_possibleDirectionList); _listIndex++) {
            var _possibleDirectionChoice = _possibleDirectionList[| _listIndex];
            
            var _currentChoiceDistance = point_distance(_possibleDirectionChoice.x, _possibleDirectionChoice.y, _targetInstance.x, _targetInstance.y);
            if _currentChoiceDistance < _bestDistance {
                _bestDistance = _currentChoiceDistance;
                facing_direction = _possibleDirectionChoice.direction;
            };
        };
    };
    
    movement_period_frames_remaining = irandom_range(min_movement_period_frames, max_movement_period_frames);
};
    