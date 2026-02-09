function LevelDefinition(_room, _easyEnemyCount, _normalEnemyCount, _hardEnemyCount, _easyMaxActiveEnemies, _normalMaxActiveEnemies, _hardMaxActiveEnemies) constructor {
    room_index = _room;
    enemy_count = [_easyEnemyCount, _normalEnemyCount, _hardEnemyCount];
    max_active_enemies = [_easyMaxActiveEnemies, _normalMaxActiveEnemies, _hardMaxActiveEnemies];
};

//Level table to consult for a level's room and enemy counts.
global.level_table = [
    new LevelDefinition(rm_level0_test,         2,  4,  6,      2, 4, 6), //Level 0 is not an actual normally playable level, only to occupy the 0th indice of this array
    new LevelDefinition(rm_level1_pond,         8,  12, 18,     2, 4, 6),
    new LevelDefinition(rm_level2_digging,      12, 12, 15,     4, 3, 3),
    new LevelDefinition(rm_level3_maze,         9, 24, 32,      3, 6, 8),
    new LevelDefinition(rm_level4_surrounded,   16, 20, 48,     4, 4, 8)
];