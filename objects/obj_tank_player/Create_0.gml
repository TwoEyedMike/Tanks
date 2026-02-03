//Initialize various gameplay variables
facing_direction = CARDINAL_DIRECTION.RIGHT; //Not using built-in "direction" var as we are not utilizing GM's built-in movement functions
movement_speed = 1; //How many pixels to move per frame while holding a movement input
image_speed = 0; //Image speed 0 unless set to 1 while moving to make tank treads anim work.
hitpoints = 100; 