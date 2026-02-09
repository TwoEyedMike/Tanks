if enemies_remaining <= 0 && instance_number(obj_tank_enemy) == 0 && instance_number(obj_tank_boss) == 0 && instance_number(obj_tank_boss_destroyed) == 0 {
    instance_create_depth(room_width/2, room_height/2, -100, obj_win_level);
};