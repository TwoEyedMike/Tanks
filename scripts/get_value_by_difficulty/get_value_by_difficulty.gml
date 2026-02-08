function get_value_by_difficulty(_easyValue, _normalValue, _hardValue) {
    switch (global.current_difficulty) {
        case DIFFICULTY.EASY:
            return _easyValue;
        case DIFFICULTY.NORMAL:
            return _normalValue;
        case DIFFICULTY.HARD:
            return _hardValue;            
    };
}