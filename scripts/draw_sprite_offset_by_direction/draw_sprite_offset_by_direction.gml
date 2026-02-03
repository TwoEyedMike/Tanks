///@desc Call for an instance to draw its own sprite offset by its direction if its origin is the top left of its bounding box. Sprite must be equal width and height.
///@param {Real} _direction The direction value of the instance to pass into the function.
function draw_self_offset_by_direction(_direction) {
    var _spriteSize = sprite_get_width(sprite_index);
    var _xOffset, _yOffset;
    
    switch (_direction) {
        case CARDINAL_DIRECTION.RIGHT: //Right
            _xOffset = 0;
            _yOffset = 0;
            break;
        case CARDINAL_DIRECTION.UP: //Up
            _xOffset = 0;
            _yOffset = _spriteSize;
            break;
        case CARDINAL_DIRECTION.LEFT: //Left
            _xOffset = _spriteSize;
            _yOffset = _spriteSize;
            break;
        case CARDINAL_DIRECTION.DOWN: //Down
            _xOffset = _spriteSize;
            _yOffset = 0;
            break;
    };
    
    draw_sprite_ext(sprite_index, image_index, x + _xOffset, y + _yOffset, 1, 1, _direction, image_blend, image_alpha);
};    