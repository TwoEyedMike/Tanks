function shoot_bullet(_object, _facingDirection) {
    var _firePositionX = self.x + lengthdir_x(16, _facingDirection);
    var _firePositionY = self.y + lengthdir_y(16, _facingDirection);
    
    instance_create_depth(_firePositionX, _firePositionY, depth, _object, {facing_direction: _facingDirection});
    
    audio_play_sound(sfx_shoot, 1, false);
};