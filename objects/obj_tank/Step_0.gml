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
    x += lengthdir_x(movement_speed, facing_direction);
    y += lengthdir_y(movement_speed, facing_direction);
    image_speed = 1;
};

