instance_create_depth(x, y, depth - 1, obj_explosion);

if !audio_is_playing(sfx_hit) {
    audio_play_sound(sfx_hit, 1, false);
};
