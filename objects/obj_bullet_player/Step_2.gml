// Inherit the parent event
event_inherited();

var _collidedInstancesList = ds_list_create();

instance_place_list(x, y, [obj_tank_enemy, obj_tank_boss], _collidedInstancesList, false);

while !ds_list_empty(_collidedInstancesList) {
    var _instance = _collidedInstancesList[| 0];
    _instance.hitpoints -= damage;
    ds_list_delete(_collidedInstancesList, 0);
    is_destroying_self_after_end_step = true;
}; 

ds_list_destroy(_collidedInstancesList);

if is_destroying_self_after_end_step {
    instance_destroy(self);
};