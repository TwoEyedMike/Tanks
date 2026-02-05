global.current_difficulty = DIFFICULTY.NORMAL; //Init game difficulty to a default value.
global.current_level = 1;
global.enemy_count = 0;
global.max_active_enemies = 0;

global.is_game_paused = false; //Initialized the global game paused variable for the pause feature.
global.game_state = GAME_STATE.TITLE

//Code to run in the begin step event when on the title screen
do_title_screen_update = function() {
    
    //Handle pressing left/right to adjust difficulty
    if keyboard_check_pressed(vk_left) {
        global.current_difficulty--;
    };
    if keyboard_check_pressed(vk_right) {
        global.current_difficulty++;
    };
    global.current_difficulty = clamp(global.current_difficulty, DIFFICULTY.EASY, DIFFICULTY.HARD);
    
    //Press enter to start the game
    if keyboard_check_pressed(vk_enter) {
        go_to_level(global.current_level)
    }
};

go_to_level = function(_levelIndex) {
    var _level = global.level_table[_levelIndex];
    
    global.enemy_count = _level.enemy_count[global.current_difficulty];
    global.max_active_enemies = _level.max_active_enemies[global.current_difficulty];
    
    global.game_state = GAME_STATE.GAMEPLAY;
    room_goto(_level.room_index);
};

do_gameplay_update = function() {
    if keyboard_check_pressed(vk_escape) {
        global.is_game_paused = !global.is_game_paused;
    };
};