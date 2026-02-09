SKIP_IF_PAUSED

if frame_timer % explosion_rate == 0 {
    repeat(3) {
        var _explosionX = x + irandom_range(0, position_variance);
        var _explosionY = y + irandom_range(0, position_variance);
        instance_create_depth(_explosionX - 8, _explosionY - 8, -100, obj_explosion);
    };    
};

if frame_timer % sound_rate == 0 {
    audio_play_sound(sfx_explode, 1, false);
};

frame_timer++

if frames_before_destroy <= 0 {
    instance_destroy();
};

frames_before_destroy--;