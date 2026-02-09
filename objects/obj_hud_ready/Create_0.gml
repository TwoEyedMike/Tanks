alarm[1] = 120; //Turn invisible and have 2 second cooldown before level starts



var _levelNames = [
    "LEVEL 0\nTEST",
    "LEVEL 1\nTHE POND",
    "LEVEL 2\nDIGGING AROUND",
    "LEVEL 3\nTHE MAZE",
    "LEVEL 4\nSURROUNDED",
    "FINAL FIGHT\nCOMPLETE THE MISSION!"
];


text = _levelNames[global.current_level];

audio_stop_all();
audio_play_sound(mus_intro, 1, false);