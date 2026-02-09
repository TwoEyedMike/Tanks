instance_destroy(self);
    switch (global.current_level) {
        case 1:
            audio_play_sound(mus_map, 1, true);
            break;
        case 2:
        case 3:
            audio_play_sound(mus_venus, 1, true);
            break;
        case 4:
            audio_play_sound(mus_mercury, 1, true);
            break;    
        case 5:
            audio_play_sound(mus_boss, 1, true);                                  
    };