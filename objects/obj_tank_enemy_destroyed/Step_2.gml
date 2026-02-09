SKIP_IF_PAUSED

if frames_before_destroy <= 0 {
    instance_destroy();
};

frames_before_destroy--;