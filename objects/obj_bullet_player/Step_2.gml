var _isDestroyingSelfAfterEvent = false; //Need to do this so bullet gets a chance to check collisions with multiple classes of objects before destroying itself.

if place_meeting(x, y, obj_collidable) {
    _isDestroyingSelfAfterEvent = true;
};

var _collidedInstancesList = ds_list_create();

instance_place_list(x, y, obj_breakable_environment, _collidedInstancesList, false);

while !ds_list_empty(_collidedInstancesList) {
    var _instance = _collidedInstancesList[| 0];
    instance_destroy(_instance);
    ds_list_delete(_collidedInstancesList, 0);
}; 

if _isDestroyingSelfAfterEvent {
    instance_destroy(self);
};

