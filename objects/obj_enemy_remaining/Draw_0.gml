draw_set_font(font_small);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


var _enemiesRemaining;

if room = rm_level5_boss {
    _enemiesRemaining = instance_number(obj_tank_boss) + instance_number(obj_tank_enemy);
}
else {
    _enemiesRemaining = instance_number(obj_tank_enemy) + instance_number(obj_tank_boss) + enemies_remaining;
};

var _string = string_replace("ENEMIES REMAINING: {NUMBER}", "{NUMBER}", string(_enemiesRemaining));

draw_text(x, y, _string);