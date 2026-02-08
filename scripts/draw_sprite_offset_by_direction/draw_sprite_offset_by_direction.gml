///@desc Call for an instance to draw a sprite offset by its direction if its origin is the top left of its bounding box. Sprite must be equal width and height.
///@param {Asset.GMSprite} _sprite The sprite to draw
///@param {Real} _imageIndex The subimage of the sprite to draw
///@param {Real} _direction The direction value to use.
///@param {Real} _x The x position to draw the sprite
///@param {Real} _y The y position to draw the sprite
///@param {Constant.Color} _color The color of the sprite (leave as c_white for default drawing)
///@param {Real} _alpha The alpha (transparency) value from 0 (transparent) to 1 (opaque)
function draw_sprite_offset_by_direction(_sprite, _imageIndex, _direction, _x, _y, _color, _alpha) {
    var _spriteSize = sprite_get_width(_sprite);
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
    
    draw_sprite_ext(_sprite, _imageIndex, _x + _xOffset, _y + _yOffset, 1, 1, _direction, _color, _alpha);
};    