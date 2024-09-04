draw_set_alpha(1);
draw_set_color(make_colour_rgb(40,40,40)); //same as global.color_black
draw_rectangle(-2,-2,room_width+2,room_height+2,false);
//
draw_set_halign(fa_right);
draw_set_font(fn_m6x11_XL);
draw_set_alpha(1);
draw_set_color(make_colour_rgb(230,230,230)); //same as global.color_white
draw_text_ext(room_width-8,room_height-28,"Loading...",-1,-1);