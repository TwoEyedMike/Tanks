if global.game_state == GAME_STATE.GAMEPLAY {
    if !audio_is_playing(mus_intro) {
        audio_play_sound(mus_intro, 1, true);
    };
    
    
    instance_create_depth(room_width/2, room_height/2, -100, obj_hud_ready);
    instance_create_depth(0, 0, -50, obj_raft_effect);
    instance_create_depth(0, 0, -50, obj_shield_effect);    
    
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