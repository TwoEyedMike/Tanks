if room = rm_level5_boss {
    exit;
};

draw_self();
draw_sprite(spr_objective, 0, x-16, y);


if instance_number(obj_objective) > 0 {
    var _greenBarX = x + 3;
    var _greenBarY = y + 8;
    var _greenBarScale = obj_objective.hitpoints / obj_objective.starting_hitpoints;
    
    draw_sprite_ext(spr_player_hp_bar_over, 0, _greenBarX, _greenBarY, _greenBarScale, 1, 0, c_white, 1);
};
