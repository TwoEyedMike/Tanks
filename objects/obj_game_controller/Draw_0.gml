if global.game_state == GAME_STATE.TITLE {
    draw_set_font(font_big);
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    var _string = string_replace("SELECT DIFFICULTY WITH LEFT/RIGHT ARROW KEYS\n{DIFFICULTY}\nPRESS ENTER TO START", "{DIFFICULTY}", difficulty_names[global.current_difficulty])
    var _drawX = room_width/2;
    var _drawY = room_height/2;
    draw_text(_drawX, _drawY, _string);
    
    draw_text(_drawX, _drawY + 200, "MOVE YOUR TANK WITH THE ARROW KEYS\nPRESS SPACE TO SHOOT");
};
