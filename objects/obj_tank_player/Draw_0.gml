if drill_powerup_frames_left > 0 {
    switch(facing_direction) {
        case CARDINAL_DIRECTION.RIGHT:
            draw_sprite(spr_drill_tank_right, 0, x, y);
            break;
        case CARDINAL_DIRECTION.UP:
            draw_sprite(spr_drill_tank_up, 0, x, y);
            break; 
        case CARDINAL_DIRECTION.LEFT:
            draw_sprite(spr_drill_tank_left, 0, x, y);
            break;
        case CARDINAL_DIRECTION.DOWN: 
            draw_sprite(spr_drill_tank_down, 0, x, y);
            break;   
    }
};    

draw_sprite_offset_by_direction(sprite_index, image_index, facing_direction, x, y, image_blend, image_alpha);


