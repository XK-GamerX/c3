draw_sprite_ext(sprite_index, 0, x - 100, y, 2, 2, 0, c_white, 0.25);
preset = 0;
hairtufts = 4564;
waist = 930;
rightarm = 1641;
head = 889;
leftarm = 1465;
lefthand = 1660;
skirt = 1715;
hairx = x + 42;
hairy = y + 50;
waistx = x + 42;
waisty = y + 112;
rightarmx = x + 46;
rightarmy = y + 58;
headx = x + 44;
heady = y + 62;
leftarmx = x + 36;
leftarmy = y + 60;
skirtx = x + 42;
skirty = y + 70;
animsiner++;

if (preset == 0)
{
    hairx += (sin(animsiner / 12) * 2);
    var boby = abs(sin(animsiner / 6) * -2) * -1;
    hairy += (boby * 1.5);
    heady += boby;
    leftarmy += (boby * 4);
    rightarmy += (boby * 1.5);
    skirty += boby;
}

lefthandx = leftarmx - 24;
lefthandy = leftarmy + 4;
draw_sprite_ext(hairtufts, 0, hairx, hairy, 2, 2, 0, c_white, 1);
draw_sprite_ext(leftarm, 0, leftarmx, leftarmy, 2, 2, 0, c_white, 1);
draw_sprite_ext(waist, 0, waistx, waisty, 2, 2, 0, c_white, 1);
draw_sprite_ext(skirt, 0, skirtx, skirty, 2, 2, 0, c_white, 1);
draw_sprite_ext(rightarm, 0, rightarmx, rightarmy, 2, 2, 0, c_white, 1);
draw_sprite_ext(head, 0, headx, heady, 2, 2, 0, c_white, 1);
draw_sprite_ext(lefthand, 0, lefthandx, lefthandy, 2, 2, 0, c_white, 1);
