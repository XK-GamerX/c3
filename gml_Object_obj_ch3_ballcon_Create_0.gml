depth = -instance_number(object_index) * 10;
instant = 0;
char = 1;
typeroverride = 0;
destroytime = 210;
timer = 0;
writer = 48234289382;
con = 0;
scr_darksize(id);

for (i = 0; i < 30; i += 1)
    mytext[i] = global.msg[i];

draw_set_font(scr_84_get_font("8bit"));
mytext_sizecheck = string_replace_all(mytext[0], "&", "#");
height = 32 + string_height(string_hash_to_newline(mytext_sizecheck)) + 25;
width = 32 + string_width(string_hash_to_newline(mytext_sizecheck)) + 30;
appearcon = 0;
fadeAmount = 8;
appeartimer = 0;
nowheight = 0;
triangle = 1;
triangleside = 0;
trianglesprite = 3680;
