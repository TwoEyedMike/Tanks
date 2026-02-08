SKIP_IF_PAUSED

var _inputNetHorizontal = 0;
var _inputNetVertical = 0;

var _holdingUpInput = keyboard_check(vk_up);
var _holdingDownInput = keyboard_check(vk_down);

_inputNetVertical = _holdingDownInput - _holdingUpInput;

//Only run horizontal input check if not holding a vertical input, as vertical input takes priority in this game's 4-way movement system.
if _inputNetVertical == 0 { 
    var _holdingLeftInput = keyboard_check(vk_left);
    var _holdingRightInput = keyboard_check(vk_right);
    
    _inputNetHorizontal = _holdingRightInput - _holdingLeftInput;
};


if abs(_inputNetHorizontal) || abs(_inputNetVertical) {
    facing_direction = point_direction(0, 0, _inputNetHorizontal, _inputNetVertical);
    
    var _projectedPositionX = x + lengthdir_x(movement_speed, facing_direction);
    var _projectedPositionY = y + lengthdir_y(movement_speed, facing_direction);
    
    if !place_meeting(_projectedPositionX, _projectedPositionY, obj_tank) {
        x = _projectedPositionX;
        y = _projectedPositionY;
    };
    
    while place_meeting(x, y, [obj_collidable, obj_collision_water]) {
        x -= lengthdir_x(movement_speed, facing_direction);
        y -= lengthdir_y(movement_speed, facing_direction);
    }
    
    image_speed = 1;
};

var _inputShoot = keyboard_check_pressed(vk_space);

if _inputShoot {
    var _facingDirectionToPass = facing_direction;
    
    instance_create_depth(x, y, depth, obj_bullet_player, { facing_direction : _facingDirectionToPass } );
};
