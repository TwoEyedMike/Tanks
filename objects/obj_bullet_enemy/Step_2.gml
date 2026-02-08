// Inherit the parent event
event_inherited();

var _collidedInstancesList = ds_list_create();

if place_meeting(x, y, obj_tank_player) {
    obj_tank_player.hitpoints -= damage;
    is_destroying_self_after_end_step = true;
}; 

ds_list_destroy(_collidedInstancesList);

if is_destroying_self_after_end_step {
    instance_destroy(self);
};