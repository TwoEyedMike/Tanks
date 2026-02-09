if global.game_state == GAME_STATE.GAMEPLAY {
    if !audio_is_playing(mus_gameplay) {
        audio_play_sound(mus_gameplay, 1, true);
    };
    
    instance_deactivate_layer("Instances_Easy")   
    instance_deactivate_layer("Instances_Normal")
    instance_deactivate_layer("Instances_Hard")
    
    switch (global.current_difficulty) {
        default:
            instance_activate_layer("Instances_Easy")
            break;
        case DIFFICULTY.NORMAL:
            instance_activate_layer("Instances_Normal")
            break;
        case DIFFICULTY.HARD:
            instance_activate_layer("Instances_Hard")
            break;
    };
};