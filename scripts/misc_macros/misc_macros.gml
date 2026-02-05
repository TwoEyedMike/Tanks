//Put this in any particular object event to skip all code after it if the game is paused
#macro SKIP_IF_PAUSED       \
if global.is_game_paused {  \
    exit;                   \
}                           \