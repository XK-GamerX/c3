perfect_counter = 0;
perfect_timer = -1;
house1 = instance_create(-40, 0, obj_susiezilla_house_single);
house1.type = 2;
house1._path_position = 0.1;
house = instance_create(0, 180, obj_susiezilla_house_single);
house.type = 3;
house = instance_create(-40, 0, obj_susiezilla_house_single);
house.type = 4;
house = instance_create(-40, 0, obj_susiezilla_house_single);
house.type = 5;
house = instance_create(-40, 0, obj_susiezilla_house_single);
house.type = 5;
house._path_position = 0.1;
house = instance_create(-40, 0, obj_susiezilla_house_single);
house.type = 5;
house._path_position = 0.2;

with (obj_susiezilla_house_single)
    delay = 30;
