///@desc Call for an instance to draw its own sprite offset by its direction if its origin is the top left of its bounding box. Sprite must be equal width and height.
///@param {Real} _direction The direction value of the instance to pass into the function.
function draw_self_offset_by_direction(_direction) {
    var _spriteSize = sprite_get_width(sprite_index);
    var _xOffset, _yOffset;
    
    switch (_direction) {
        case 0: //Right
            _xOffset = 0;
            _yOffset = 0;
            break;
        case 90: //Up
            _xOffset = 0;
            _yOffset = _spriteSize;
            break;
        case 180: //Left
            _xOffset = _spriteSize;
            _yOffset = _spriteSize;
            break;
        case 270: //Down
            _xOffset = _spriteSize;
            _yOffset = 0;
            break;
    };
    
    draw_sprite_ext(sprite_index, image_index, x + _xOffset, y + _yOffset, 1, 1, _direction, image_blend, image_alpha);
};    