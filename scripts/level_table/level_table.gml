function LevelDefinition(_room, _easyEnemyCount, _normalEnemyCount, _hardEnemyCount, _easyMaxActiveEnemies, _normalMaxActiveEnemies, _hardMaxActiveEnemies) constructor {
    room_index = _room;
    enemy_count = [_easyEnemyCount, _normalEnemyCount, _hardEnemyCount];
    max_active_enemies = [_easyMaxActiveEnemies, _normalMaxActiveEnemies, _hardMaxActiveEnemies];
};

//Level table to consult for a level's room and enemy counts.
global.level_table = [
    new LevelDefinition(rm_level0_test,         2,  4,  6,      2, 4, 6), //Level 0 is not an actual normally playable level, only to occupy the 0th indice of this array
    new LevelDefinition(rm_level1_pond,         6,  10, 12,     2, 4, 6),
    new LevelDefinition(rm_level2_digging,      6, 10, 12,     4, 3, 3),
    new LevelDefinition(rm_level3_maze,         8, 10, 12,      3, 6, 8),
    new LevelDefinition(rm_level4_surrounded,   8, 10, 12,      4, 4, 8),
    new LevelDefinition(rm_level5_boss,         0,  0,  0,      999, 999, 999) //0 Enemy count as boss manually triggers the spawners. Max of 18 enemy tanks at once.
];