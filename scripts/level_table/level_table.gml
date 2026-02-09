function LevelDefinition(_room, _easyEnemyCount, _normalEnemyCount, _hardEnemyCount, _easyMaxActiveEnemies, _normalMaxActiveEnemies, _hardMaxActiveEnemies) constructor {
    room_index = _room;
    enemy_count = [_easyEnemyCount, _normalEnemyCount, _hardEnemyCount];
    max_active_enemies = [_easyMaxActiveEnemies, _normalMaxActiveEnemies, _hardMaxActiveEnemies];
};

//Level table to consult for a level's room and enemy counts.
global.level_table = [
    new LevelDefinition(rm_level0_test,         2, 4, 6,    2, 4, 6), //Level 0 is not an actual normally playable level, only to occupy the 0th indice of this array
    new LevelDefinition(rm_level1_pond,         4, 8, 14,   2, 4, 6),
    new LevelDefinition(rm_level2_digging,      6, 8, 10,   2, 3, 3),
    new LevelDefinition(rm_level3_maze,         6, 9, 9,    3, 3, 5),
    new LevelDefinition(rm_level4_surrounded,   8, 12, 12,  4, 4, 4)
];