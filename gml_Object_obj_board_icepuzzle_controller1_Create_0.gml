createdwall = false;
var a = 0;

for (var i = 0; i < instance_number(obj_board_glacier_switch); i++)
{
    button[i] = instance_find(obj_board_glacier_switch, i);
    
    if (button[i].pressed == true)
        a++;
}

if (a == 2)
    instance_destroy();
