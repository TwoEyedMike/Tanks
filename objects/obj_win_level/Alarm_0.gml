if room != rm_level5_boss {
    global.current_level++
    obj_game_controller.go_to_level(global.current_level);
}
else {
    audio_stop_all();
    game_restart();
};