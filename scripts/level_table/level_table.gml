function LevelDefinition(_room, _easyEnemyCount, _normalEnemyCount, _hardEnemyCount) constructor {
    room_index = _room;
    enemy_count = [_easyEnemyCount, _normalEnemyCount, _hardEnemyCount];
};

//Level table to consult for a level's room and enemy counts.
global.level_table = [
    new LevelDefinition(rm_level0_test, 2, 4, 6), //Level 0 is not an actual normally playable level, only to occupy the 0th indice of this array
    new LevelDefinition(rm_level1_pond, 4, 8, 14)
];