//Initialize various gameplay variables
facing_direction = 0; //Not using built-in "direction" var as we are not utilizing GM's built-in movement functions
last_facing_direction = undefined; //Previous facing direction, to prevent going back and forth nonstop during "pathfinding"
movement_speed = 2; //How many pixels to move per frame while holding a movement input
image_speed = 0; //Image speed 0 unless set to 1 while moving to make tank treads anim work.
hitpoints = 40; 

//AI-Related Variables

//Min and max number of frames the tank can choose to move for in a given "movement period"
min_movement_period_frames = 10;
max_movement_period_frames = 180;

//Min and max number of frames the tank can choose to wait for inbetween "movement periods"
min_wait_frames = 20;
max_wait_frames = 60;

movement_period_frames_remaining = 0;
wait_frames_remaining = irandom_range(min_wait_frames, max_wait_frames);