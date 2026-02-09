draw_self();
draw_sprite(spr_boss_icon, 0, x-16, y);

if instance_exists(obj_tank_boss) {
    var _greenBarX = x + 3;
    var _greenBarY = y + 8;
    var _greenBarScale = obj_tank_boss.hitpoints / obj_tank_boss.starting_hitpoints;
    
    draw_sprite_ext(spr_player_hp_bar_over, 0, _greenBarX, _greenBarY, _greenBarScale, 1, 0, c_white, 1);
};