draw_self();
draw_set_font(font_small);
draw_set_halign(fa_center);
draw_set_halign(fa_center);
if room != rm_level5_boss {
    draw_text(x, y, "NICE WORK!");
}
else {
    draw_text(x, y, "CONGRATULATIONS!\nMISSION COMPLETE!")
};    