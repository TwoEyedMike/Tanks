switch (global.game_state) {
    case GAME_STATE.TITLE:
        do_title_screen_update();
        break;
    case GAME_STATE.GAMEPLAY:
        do_gameplay_update();
        break;
    
};


if keyboard_check_pressed(ord("L")) {
    global.current_level++;
    go_to_level(global.current_level);
};

