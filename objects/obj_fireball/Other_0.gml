y = -5000;

if !audio_is_playing(sfx_hit) {
    audio_play_sound(sfx_hit);
};

instance_destroy(self);